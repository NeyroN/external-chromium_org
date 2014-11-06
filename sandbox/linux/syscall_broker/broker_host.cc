// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "sandbox/linux/syscall_broker/broker_host.h"

#include <fcntl.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

#include <string>
#include <vector>

#include "base/files/scoped_file.h"
#include "base/logging.h"
#include "base/pickle.h"
#include "base/posix/eintr_wrapper.h"
#include "base/posix/unix_domain_socket_linux.h"
#include "base/third_party/valgrind/valgrind.h"
#include "sandbox/linux/services/linux_syscalls.h"
#include "sandbox/linux/syscall_broker/broker_common.h"
#include "sandbox/linux/syscall_broker/broker_policy.h"

namespace sandbox {

namespace syscall_broker {

namespace {

bool IsRunningOnValgrind() {
  return RUNNING_ON_VALGRIND;
}

// A little open(2) wrapper to handle some oddities for us. In the general case
// make a direct system call since we want to keep in control of the broker
// process' system calls profile to be able to loosely sandbox it.
int sys_open(const char* pathname, int flags) {
  // Always pass a defined |mode| in case flags mistakenly contains O_CREAT.
  const int mode = 0;
  if (IsRunningOnValgrind()) {
    // Valgrind does not support AT_FDCWD, just use libc's open() in this case.
    return open(pathname, flags, mode);
  } else {
    return syscall(__NR_openat, AT_FDCWD, pathname, flags, mode);
  }
}

// Open |requested_filename| with |flags| if allowed by our policy.
// Write the syscall return value (-errno) to |write_pickle| and append
// a file descriptor to |opened_files| if relevant.
void OpenFileForIPC(const BrokerPolicy& policy,
                    const std::string& requested_filename,
                    int flags,
                    Pickle* write_pickle,
                    std::vector<int>* opened_files) {
  DCHECK(write_pickle);
  DCHECK(opened_files);
  const char* file_to_open = NULL;
  const bool safe_to_open_file = policy.GetFileNameIfAllowedToOpen(
      requested_filename.c_str(), flags, &file_to_open);

  if (safe_to_open_file) {
    CHECK(file_to_open);
    int opened_fd = sys_open(file_to_open, flags);
    if (opened_fd < 0) {
      write_pickle->WriteInt(-errno);
    } else {
      // Success.
      opened_files->push_back(opened_fd);
      write_pickle->WriteInt(0);
    }
  } else {
    write_pickle->WriteInt(-policy.denied_errno());
  }
}

// Perform access(2) on |requested_filename| with mode |mode| if allowed by our
// policy. Write the syscall return value (-errno) to |write_pickle|.
void AccessFileForIPC(const BrokerPolicy& policy,
                      const std::string& requested_filename,
                      int mode,
                      Pickle* write_pickle) {
  DCHECK(write_pickle);
  const char* file_to_access = NULL;
  const bool safe_to_access_file = policy.GetFileNameIfAllowedToAccess(
      requested_filename.c_str(), mode, &file_to_access);

  if (safe_to_access_file) {
    CHECK(file_to_access);
    int access_ret = access(file_to_access, mode);
    int access_errno = errno;
    if (!access_ret)
      write_pickle->WriteInt(0);
    else
      write_pickle->WriteInt(-access_errno);
  } else {
    write_pickle->WriteInt(-policy.denied_errno());
  }
}

// Handle a |command_type| request contained in |read_pickle| and send the reply
// on |reply_ipc|.
// Currently COMMAND_OPEN and COMMAND_ACCESS are supported.
bool HandleRemoteCommand(const BrokerPolicy& policy,
                         IPCCommand command_type,
                         int reply_ipc,
                         const Pickle& read_pickle,
                         PickleIterator iter) {
  // Currently all commands have two arguments: filename and flags.
  std::string requested_filename;
  int flags = 0;
  if (!read_pickle.ReadString(&iter, &requested_filename) ||
      !read_pickle.ReadInt(&iter, &flags)) {
    return false;
  }

  Pickle write_pickle;
  std::vector<int> opened_files;

  switch (command_type) {
    case COMMAND_ACCESS:
      AccessFileForIPC(policy, requested_filename, flags, &write_pickle);
      break;
    case COMMAND_OPEN:
      OpenFileForIPC(
          policy, requested_filename, flags, &write_pickle, &opened_files);
      break;
    default:
      LOG(ERROR) << "Invalid IPC command";
      break;
  }

  CHECK_LE(write_pickle.size(), kMaxMessageLength);
  ssize_t sent = UnixDomainSocket::SendMsg(
      reply_ipc, write_pickle.data(), write_pickle.size(), opened_files);

  // Close anything we have opened in this process.
  for (std::vector<int>::iterator it = opened_files.begin();
       it != opened_files.end();
       ++it) {
    int ret = IGNORE_EINTR(close(*it));
    DCHECK(!ret) << "Could not close file descriptor";
  }

  if (sent <= 0) {
    LOG(ERROR) << "Could not send IPC reply";
    return false;
  }
  return true;
}

}  // namespace

BrokerHost::BrokerHost(const BrokerPolicy& broker_policy, int ipc_channel)
    : broker_policy_(broker_policy), ipc_channel_(ipc_channel) {
}

BrokerHost::~BrokerHost() {
}

// Handle a request on the IPC channel ipc_channel_.
// A request should have a file descriptor attached on which we will reply and
// that we will then close.
// A request should start with an int that will be used as the command type.
bool BrokerHost::HandleRequest() const {
  ScopedVector<base::ScopedFD> fds;
  char buf[kMaxMessageLength];
  errno = 0;
  const ssize_t msg_len =
      UnixDomainSocket::RecvMsg(ipc_channel_, buf, sizeof(buf), &fds);

  if (msg_len == 0 || (msg_len == -1 && errno == ECONNRESET)) {
    // EOF from the client, or the client died, we should die.
    // TODO(jln): change this.
    _exit(0);
  }

  // The client should send exactly one file descriptor, on which we
  // will write the reply.
  // TODO(mdempsky): ScopedVector doesn't have 'at()', only 'operator[]'.
  if (msg_len < 0 || fds.size() != 1 || fds[0]->get() < 0) {
    PLOG(ERROR) << "Error reading message from the client";
    return false;
  }

  base::ScopedFD temporary_ipc(fds[0]->Pass());

  Pickle pickle(buf, msg_len);
  PickleIterator iter(pickle);
  int command_type;
  if (pickle.ReadInt(&iter, &command_type)) {
    bool r = false;
    // Go through all the possible IPC messages.
    switch (command_type) {
      case COMMAND_ACCESS:
      case COMMAND_OPEN:
        // We reply on the file descriptor sent to us via the IPC channel.
        r = HandleRemoteCommand(broker_policy_,
                                static_cast<IPCCommand>(command_type),
                                temporary_ipc.get(),
                                pickle,
                                iter);
        break;
      default:
        NOTREACHED();
        r = false;
        break;
    }
    return r;
  }

  LOG(ERROR) << "Error parsing IPC request";
  return false;
}

}  // namespace syscall_broker

}  // namespace sandbox
