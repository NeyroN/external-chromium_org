// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef ASH_TEST_TEST_SHELL_DELEGATE_H_
#define ASH_TEST_TEST_SHELL_DELEGATE_H_

#include <string>

#include "ash/media_delegate.h"
#include "ash/shell_delegate.h"
#include "base/compiler_specific.h"
#include "base/memory/scoped_ptr.h"
#include "base/observer_list.h"

namespace keyboard {
class KeyboardControllerProxy;
}

namespace ash {
namespace test {

class TestSessionStateDelegate;

class TestShellDelegate : public ShellDelegate {
 public:
  TestShellDelegate();
  ~TestShellDelegate() override;

  void set_multi_profiles_enabled(bool multi_profiles_enabled) {
    multi_profiles_enabled_ = multi_profiles_enabled;
  }

  // Overridden from ShellDelegate:
  bool IsFirstRunAfterBoot() const override;
  bool IsIncognitoAllowed() const override;
  bool IsMultiProfilesEnabled() const override;
  bool IsRunningInForcedAppMode() const override;
  bool IsMultiAccountEnabled() const override;
  void PreInit() override;
  void PreShutdown() override;
  void Exit() override;
  keyboard::KeyboardControllerProxy* CreateKeyboardControllerProxy() override;
  void VirtualKeyboardActivated(bool activated) override;
  void AddVirtualKeyboardStateObserver(
      VirtualKeyboardStateObserver* observer) override;
  void RemoveVirtualKeyboardStateObserver(
      VirtualKeyboardStateObserver* observer) override;
  content::BrowserContext* GetActiveBrowserContext() override;
  app_list::AppListViewDelegate* GetAppListViewDelegate() override;
  ShelfDelegate* CreateShelfDelegate(ShelfModel* model) override;
  SystemTrayDelegate* CreateSystemTrayDelegate() override;
  UserWallpaperDelegate* CreateUserWallpaperDelegate() override;
  SessionStateDelegate* CreateSessionStateDelegate() override;
  AccessibilityDelegate* CreateAccessibilityDelegate() override;
  NewWindowDelegate* CreateNewWindowDelegate() override;
  MediaDelegate* CreateMediaDelegate() override;
  ui::MenuModel* CreateContextMenu(aura::Window* root,
                                   ash::ShelfItemDelegate* item_delegate,
                                   ash::ShelfItem* item) override;
  GPUSupport* CreateGPUSupport() override;
  base::string16 GetProductName() const override;

  int num_exit_requests() const { return num_exit_requests_; }

  TestSessionStateDelegate* test_session_state_delegate() {
    return test_session_state_delegate_;
  }

  void SetMediaCaptureState(MediaCaptureState state);

 private:
  int num_exit_requests_;
  bool multi_profiles_enabled_;

  scoped_ptr<content::BrowserContext> active_browser_context_;
  scoped_ptr<app_list::AppListViewDelegate> app_list_view_delegate_;

  ObserverList<ash::VirtualKeyboardStateObserver> keyboard_state_observer_list_;

  TestSessionStateDelegate* test_session_state_delegate_;  // Not owned.

  DISALLOW_COPY_AND_ASSIGN(TestShellDelegate);
};

}  // namespace test
}  // namespace ash

#endif  // ASH_TEST_TEST_SHELL_DELEGATE_H_
