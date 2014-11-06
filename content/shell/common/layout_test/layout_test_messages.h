// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Multiply-included file, no traditional include guard.
#include <string>
#include <vector>

#include "content/public/common/common_param_traits.h"
#include "ipc/ipc_message_macros.h"
#include "ipc/ipc_platform_file.h"
#include "url/gurl.h"

#define IPC_MESSAGE_START LayoutTestMsgStart

IPC_SYNC_MESSAGE_ROUTED1_1(LayoutTestHostMsg_ReadFileToString,
                           base::FilePath /* local path */,
                           std::string /* contents */)
IPC_SYNC_MESSAGE_ROUTED1_1(LayoutTestHostMsg_RegisterIsolatedFileSystem,
                           std::vector<base::FilePath> /* absolute_filenames */,
                           std::string /* filesystem_id */)
IPC_MESSAGE_ROUTED0(LayoutTestHostMsg_ClearAllDatabases)
IPC_MESSAGE_ROUTED1(LayoutTestHostMsg_SetDatabaseQuota,
                    int /* quota */)
IPC_SYNC_MESSAGE_ROUTED1_1(LayoutTestHostMsg_CheckWebNotificationPermission,
                           GURL /* origin */,
                           int /* result */)
IPC_MESSAGE_ROUTED2(LayoutTestHostMsg_GrantWebNotificationPermission,
                    GURL /* origin */,
                    bool /* permission_granted */)
IPC_MESSAGE_ROUTED0(LayoutTestHostMsg_ClearWebNotificationPermissions)
IPC_MESSAGE_ROUTED1(LayoutTestHostMsg_SimulateWebNotificationClick,
                    std::string /* title */)
IPC_MESSAGE_ROUTED1(LayoutTestHostMsg_AcceptAllCookies,
                    bool /* accept */)
IPC_MESSAGE_ROUTED0(LayoutTestHostMsg_DeleteAllCookies)
