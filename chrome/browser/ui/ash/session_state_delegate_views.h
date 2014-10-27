// Copyright (c) 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef CHROME_BROWSER_UI_ASH_SESSION_STATE_DELEGATE_VIEWS_H_
#define CHROME_BROWSER_UI_ASH_SESSION_STATE_DELEGATE_VIEWS_H_

#include "ash/session/session_state_delegate.h"
#include "base/basictypes.h"
#include "base/compiler_specific.h"
#include "base/observer_list.h"
#include "ui/gfx/image/image_skia.h"

namespace ash {
class SessionStateObserver;
}  // namespace ash

class SessionStateDelegate : public ash::SessionStateDelegate {
 public:
  SessionStateDelegate();
  virtual ~SessionStateDelegate();

  // ash::SessionStateDelegate:
  virtual content::BrowserContext* GetBrowserContextByIndex(
      ash::MultiProfileIndex index) override;
  virtual content::BrowserContext* GetBrowserContextForWindow(
      aura::Window* window) override;
  virtual int GetMaximumNumberOfLoggedInUsers() const override;
  virtual int NumberOfLoggedInUsers() const override;
  virtual bool IsActiveUserSessionStarted() const override;
  virtual bool CanLockScreen() const override;
  virtual bool IsScreenLocked() const override;
  virtual bool ShouldLockScreenBeforeSuspending() const override;
  virtual void LockScreen() override;
  virtual void UnlockScreen() override;
  virtual bool IsUserSessionBlocked() const override;
  virtual SessionState GetSessionState() const override;
  virtual const user_manager::UserInfo* GetUserInfo(
      ash::MultiProfileIndex index) const override;
  virtual const user_manager::UserInfo* GetUserInfo(
      content::BrowserContext* context) const override;
  virtual bool ShouldShowAvatar(aura::Window* window) const override;
  virtual void SwitchActiveUser(const std::string& user_id) override;
  virtual void CycleActiveUser(CycleUser cycle_user) override;
  virtual bool IsMultiProfileAllowedByPrimaryUserPolicy() const override;
  virtual void AddSessionStateObserver(
      ash::SessionStateObserver* observer) override;
  virtual void RemoveSessionStateObserver(
      ash::SessionStateObserver* observer) override;

 private:
  DISALLOW_COPY_AND_ASSIGN(SessionStateDelegate);
};

#endif  // CHROME_BROWSER_UI_ASH_SESSION_STATE_DELEGATE_VIEWS_H_
