// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "ui/views/widget/desktop_aura/desktop_window_tree_host_x11.h"

#include <X11/Xlib.h>

// Get rid of X11 macros which conflict with gtest.
#undef Bool
#undef None

#include "base/memory/scoped_ptr.h"
#include "base/path_service.h"
#include "ui/aura/env.h"
#include "ui/aura/window.h"
#include "ui/aura/window_tree_host.h"
#include "ui/base/resource/resource_bundle.h"
#include "ui/base/ui_base_paths.h"
#include "ui/base/x/x11_util.h"
#include "ui/events/event_handler.h"
#include "ui/events/platform/x11/x11_event_source.h"
#include "ui/gfx/rect.h"
#include "ui/gfx/x/x11_atom_cache.h"
#include "ui/gl/gl_surface.h"
#include "ui/views/test/views_test_base.h"
#include "ui/views/test/x11_property_change_waiter.h"
#include "ui/views/widget/desktop_aura/desktop_native_widget_aura.h"

namespace views {

namespace {

// Blocks till |window| gets activated.
class ActivationWaiter : public X11PropertyChangeWaiter {
 public:
  explicit ActivationWaiter(XID window)
      : X11PropertyChangeWaiter(ui::GetX11RootWindow(), "_NET_ACTIVE_WINDOW"),
        window_(window) {
  }

  ~ActivationWaiter() override {}

 private:
  // X11PropertyChangeWaiter:
  bool ShouldKeepOnWaiting(const ui::PlatformEvent& event) override {
    XID xid = 0;
    ui::GetXIDProperty(ui::GetX11RootWindow(), "_NET_ACTIVE_WINDOW", &xid);
    return xid != window_;
  }

  XID window_;

  DISALLOW_COPY_AND_ASSIGN(ActivationWaiter);
};

// An event handler which counts the number of mouse moves it has seen.
class MouseMoveCounterHandler : public ui::EventHandler {
 public:
  MouseMoveCounterHandler() : count_(0) {
  }
  ~MouseMoveCounterHandler() override {}

  // ui::EventHandler:
  void OnMouseEvent(ui::MouseEvent* event) override {
    if (event->type() == ui::ET_MOUSE_MOVED)
      ++count_;
  }

  int num_mouse_moves() const {
    return count_;
  }

 private:
  int count_;

  DISALLOW_COPY_AND_ASSIGN(MouseMoveCounterHandler);
};

// Creates a widget with the given bounds.
scoped_ptr<Widget> CreateWidget(const gfx::Rect& bounds) {
  scoped_ptr<Widget> widget(new Widget);
  Widget::InitParams params(Widget::InitParams::TYPE_WINDOW);
  params.ownership = Widget::InitParams::WIDGET_OWNS_NATIVE_WIDGET;
  params.remove_standard_frame = true;
  params.native_widget = new DesktopNativeWidgetAura(widget.get());
  params.bounds = bounds;
  widget->Init(params);
  return widget.Pass();
}

// Dispatches an XMotionEvent targeted at |host|'s X window with location
// |point_in_screen|.
void DispatchMouseMotionEvent(DesktopWindowTreeHostX11* desktop_host,
                              const gfx::Point& point_in_screen) {
  aura::WindowTreeHost* host = static_cast<aura::WindowTreeHost*>(desktop_host);
  gfx::Rect bounds_in_screen = desktop_host->window()->GetBoundsInScreen();

  Display* display = gfx::GetXDisplay();
  XEvent xev;
  xev.xmotion.type = MotionNotify;
  xev.xmotion.display = display;
  xev.xmotion.window = host->GetAcceleratedWidget();
  xev.xmotion.root = DefaultRootWindow(display);
  xev.xmotion.subwindow = 0;
  xev.xmotion.time = CurrentTime;
  xev.xmotion.x = point_in_screen.x() - bounds_in_screen.x();
  xev.xmotion.y = point_in_screen.y() - bounds_in_screen.y();
  xev.xmotion.x_root = point_in_screen.x();
  xev.xmotion.y_root = point_in_screen.y();
  xev.xmotion.state = 0;
  xev.xmotion.is_hint = NotifyNormal;
  xev.xmotion.same_screen = True;

  static_cast<ui::PlatformEventDispatcher*>(desktop_host)->DispatchEvent(&xev);
}

}  // namespace

class DesktopWindowTreeHostX11Test : public ViewsTestBase {
 public:
  DesktopWindowTreeHostX11Test() {
  }
  ~DesktopWindowTreeHostX11Test() override {}

  static void SetUpTestCase() {
    gfx::GLSurface::InitializeOneOffForTests();
    ui::RegisterPathProvider();
    base::FilePath ui_test_pak_path;
    ASSERT_TRUE(PathService::Get(ui::UI_TEST_PAK, &ui_test_pak_path));
    ui::ResourceBundle::InitSharedInstanceWithPakPath(ui_test_pak_path);
  }

  // testing::Test
  void SetUp() override {
    ViewsTestBase::SetUp();

    // Make X11 synchronous for our display connection. This does not force the
    // window manager to behave synchronously.
    XSynchronize(gfx::GetXDisplay(), True);
  }

  void TearDown() override {
    XSynchronize(gfx::GetXDisplay(), False);
    ViewsTestBase::TearDown();
  }

 private:
  DISALLOW_COPY_AND_ASSIGN(DesktopWindowTreeHostX11Test);
};

// Test that calling Widget::Deactivate() sets the widget as inactive wrt to
// Chrome even if it not possible to deactivate the window wrt to the x server.
// This behavior is required by several interactive_ui_tests.
TEST_F(DesktopWindowTreeHostX11Test, Deactivate) {
  scoped_ptr<Widget> widget(CreateWidget(gfx::Rect(100, 100, 100, 100)));

  ActivationWaiter waiter(
      widget->GetNativeWindow()->GetHost()->GetAcceleratedWidget());
  widget->Show();
  widget->Activate();
  waiter.Wait();

  widget->Deactivate();
  // Regardless of whether |widget|'s X11 window eventually gets deactivated,
  // |widget|'s "active" state should change.
  EXPECT_FALSE(widget->IsActive());

  // |widget|'s X11 window should still be active. Reactivating |widget| should
  // update the widget's "active" state.
  // Note: Activating a widget whose X11 window is not active does not
  // synchronously update the widget's "active" state.
  widget->Activate();
  EXPECT_TRUE(widget->IsActive());
}

// Chrome attempts to make mouse capture look synchronous on Linux. Test that
// Chrome synchronously switches the window that mouse events are forwarded to
// when capture is changed.
TEST_F(DesktopWindowTreeHostX11Test, CaptureEventForwarding) {
  scoped_ptr<Widget> widget1(CreateWidget(gfx::Rect(100, 100, 100, 100)));
  aura::Window* window1 = widget1->GetNativeWindow();
  DesktopWindowTreeHostX11* host1 =
      static_cast<DesktopWindowTreeHostX11*>(window1->GetHost());
  widget1->Show();

  scoped_ptr<Widget> widget2(CreateWidget(gfx::Rect(200, 100, 100, 100)));
  aura::Window* window2 = widget2->GetNativeWindow();
  DesktopWindowTreeHostX11* host2 =
      static_cast<DesktopWindowTreeHostX11*>(window2->GetHost());
  widget2->Show();

  MouseMoveCounterHandler recorder1;
  window1->AddPreTargetHandler(&recorder1);
  MouseMoveCounterHandler recorder2;
  window2->AddPreTargetHandler(&recorder2);

  // Move the mouse to the center of |widget2|.
  gfx::Point point_in_screen = widget2->GetWindowBoundsInScreen().CenterPoint();
  DispatchMouseMotionEvent(host2, point_in_screen);
  EXPECT_EQ(0, recorder1.num_mouse_moves());
  EXPECT_EQ(1, recorder2.num_mouse_moves());
  EXPECT_EQ(point_in_screen.ToString(),
            aura::Env::GetInstance()->last_mouse_location().ToString());

  // Set capture to |widget1|. Because DesktopWindowTreeHostX11 calls
  // XGrabPointer() with owner == False, the X server sends events to |widget2|
  // as long as the mouse is hovered over |widget2|. Verify that Chrome
  // redirects mouse events to |widget1|.
  widget1->SetCapture(NULL);
  point_in_screen += gfx::Vector2d(1, 0);
  DispatchMouseMotionEvent(host2, point_in_screen);
  EXPECT_EQ(1, recorder1.num_mouse_moves());
  EXPECT_EQ(1, recorder2.num_mouse_moves());
  // If the event's location was correctly changed to be relative to |widget1|,
  // Env's last mouse position will be correct.
  EXPECT_EQ(point_in_screen.ToString(),
            aura::Env::GetInstance()->last_mouse_location().ToString());

  // Set capture to |widget2|. Subsequent events sent to |widget2| should not be
  // forwarded.
  widget2->SetCapture(NULL);
  point_in_screen += gfx::Vector2d(1, 0);
  DispatchMouseMotionEvent(host2, point_in_screen);
  EXPECT_EQ(1, recorder1.num_mouse_moves());
  EXPECT_EQ(2, recorder2.num_mouse_moves());
  EXPECT_EQ(point_in_screen.ToString(),
            aura::Env::GetInstance()->last_mouse_location().ToString());

  // If the mouse is not hovered over |widget1| or |widget2|, the X server will
  // send events to the window which has capture. Test the mouse events sent to
  // |widget2| are not forwarded.
  DispatchMouseMotionEvent(host2, point_in_screen);
  EXPECT_EQ(1, recorder1.num_mouse_moves());
  EXPECT_EQ(3, recorder2.num_mouse_moves());
  EXPECT_EQ(point_in_screen.ToString(),
            aura::Env::GetInstance()->last_mouse_location().ToString());

  // Release capture. Test that when capture is released, mouse events are no
  // longer forwarded to other widgets.
  widget2->ReleaseCapture();
  point_in_screen = widget1->GetWindowBoundsInScreen().CenterPoint();
  DispatchMouseMotionEvent(host1, point_in_screen);
  EXPECT_EQ(2, recorder1.num_mouse_moves());
  EXPECT_EQ(3, recorder2.num_mouse_moves());
  EXPECT_EQ(point_in_screen.ToString(),
            aura::Env::GetInstance()->last_mouse_location().ToString());

  // Cleanup
  window1->RemovePreTargetHandler(&recorder1);
  window2->RemovePreTargetHandler(&recorder2);
}

}  // namespace views
