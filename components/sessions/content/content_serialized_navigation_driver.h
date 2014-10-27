// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef COMPONENTS_SESSIONS_CONTENT_CONTENT_SERIALIZED_NAVIGATION_DRIVER_H_
#define COMPONENTS_SESSIONS_CONTENT_CONTENT_SERIALIZED_NAVIGATION_DRIVER_H_

#include "components/sessions/core/serialized_navigation_driver.h"

#include "components/sessions/sessions_export.h"

template <typename T> struct DefaultSingletonTraits;

namespace sessions {

// Provides an implementation of SerializedNavigationDriver that is backed by
// content classes.
class SESSIONS_EXPORT_PRIVATE ContentSerializedNavigationDriver
    : public SerializedNavigationDriver {
 public:
  virtual ~ContentSerializedNavigationDriver();

  // Returns the singleton ContentSerializedNavigationDriver.  Almost all
  // callers should use SerializedNavigationDriver::Get() instead.
  static ContentSerializedNavigationDriver* GetInstance();

  // SerializedNavigationDriver implementation.
  virtual int GetDefaultReferrerPolicy() const override;
  virtual std::string GetSanitizedPageStateForPickle(
      const SerializedNavigationEntry* navigation) const override;
  virtual void Sanitize(SerializedNavigationEntry* navigation) const override;

 private:
  ContentSerializedNavigationDriver();
  friend struct DefaultSingletonTraits<ContentSerializedNavigationDriver>;
};

}  // namespace sessions

#endif  // COMPONENTS_SESSIONS_CONTENT_CONTENT_SERIALIZED_NAVIGATION_DRIVER_H_
