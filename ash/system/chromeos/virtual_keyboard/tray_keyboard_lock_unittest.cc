// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "ash/system/chromeos/virtual_keyboard/tray_keyboard_lock.h"

#include "ash/system/status_area_widget.h"
#include "ash/test/ash_test_base.h"
#include "ash/test/status_area_widget_test_helper.h"
#include "ash/test/virtual_keyboard_test_helper.h"
#include "base/command_line.h"
#include "ui/keyboard/keyboard_switches.h"
#include "ui/keyboard/keyboard_util.h"

namespace ash {

class TrayKeyboardLockTest : public test::AshTestBase {
 public:
  TrayKeyboardLockTest() {}
  virtual ~TrayKeyboardLockTest() {}

  TrayKeyboardLock* tray() { return tray_.get(); }

  views::View* tray_view() { return tray_view_.get(); }

  views::View* default_view() { return default_view_.get(); }

  // Sets up a TrayKeyboardLock, its tray view, and its default view.
  void SetUpForStatusAreaWidget(StatusAreaWidget* status_area_widget);

  // Resets |tray_| |tray_view_| and |default_view_| so that all components of
  // TrayKeyboardLock have been cleared. Tests may then call
  // SetUpForStatusAreaWidget in order to initialize the components.
  void TearDownViews();

  // test::AshTestBase:
  virtual void SetUp() override;
  virtual void TearDown() override;

 private:
  scoped_ptr<TrayKeyboardLock> tray_;
  scoped_ptr<views::View> tray_view_;
  scoped_ptr<views::View> default_view_;
};

void TrayKeyboardLockTest::SetUpForStatusAreaWidget(
    StatusAreaWidget* status_area_widget) {
  tray_.reset(new TrayKeyboardLock(status_area_widget->system_tray()));
  tray_view_.reset(
      tray_->CreateTrayView(StatusAreaWidgetTestHelper::GetUserLoginStatus()));
  default_view_.reset(tray_->CreateDefaultView(
      StatusAreaWidgetTestHelper::GetUserLoginStatus()));
}

void TrayKeyboardLockTest::TearDownViews() {
  tray_view_.reset();
  default_view_.reset();
  tray_.reset();
}

void TrayKeyboardLockTest::SetUp() {
  CommandLine::ForCurrentProcess()->AppendSwitch(
      keyboard::switches::kAutoVirtualKeyboard);
  test::AshTestBase::SetUp();
  SetUpForStatusAreaWidget(StatusAreaWidgetTestHelper::GetStatusAreaWidget());
}

void TrayKeyboardLockTest::TearDown() {
  keyboard::SetAccessibilityKeyboardEnabled(false);
  TearDownViews();
  test::AshTestBase::TearDown();
}

// Tests that when the tray is initially created that both view are hidden.
TEST_F(TrayKeyboardLockTest, HiddenOnCreation) {
  EXPECT_FALSE(tray_view()->visible());
  EXPECT_FALSE(default_view()->visible());
}

// Tests that the tray does not show if the accessibility keyboard is enabled.
TEST_F(TrayKeyboardLockTest, HiddenIfA11yEnabled) {
  keyboard::SetAccessibilityKeyboardEnabled(true);
  tray()->OnKeyboardSuppressionChanged(true);
  EXPECT_FALSE(tray_view()->visible());
  EXPECT_FALSE(default_view()->visible());
}

TEST_F(TrayKeyboardLockTest, PerformActionOnDefaultView) {
  test::VirtualKeyboardTestHelper::SuppressKeyboard();
  EXPECT_FALSE(keyboard::IsKeyboardEnabled());
  EXPECT_TRUE(tray_view()->visible());
  EXPECT_TRUE(default_view()->visible());

  ui::GestureEvent tap(
      0, 0, 0, base::TimeDelta(), ui::GestureEventDetails(ui::ET_GESTURE_TAP));
  default_view()->OnGestureEvent(&tap);
  EXPECT_TRUE(keyboard::IsKeyboardEnabled());
  EXPECT_FALSE(tray_view()->visible());
  EXPECT_TRUE(default_view()->visible());

  tap = ui::GestureEvent(
      0, 0, 0, base::TimeDelta(), ui::GestureEventDetails(ui::ET_GESTURE_TAP));
  default_view()->OnGestureEvent(&tap);
  EXPECT_FALSE(keyboard::IsKeyboardEnabled());
  EXPECT_TRUE(tray_view()->visible());
  EXPECT_TRUE(default_view()->visible());
}

}  // namespace ash
