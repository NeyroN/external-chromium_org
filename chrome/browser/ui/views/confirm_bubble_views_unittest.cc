// Copyright (c) 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "chrome/browser/ui/views/confirm_bubble_views.h"

#include "chrome/browser/ui/confirm_bubble.h"
#include "chrome/browser/ui/test/test_confirm_bubble_model.h"
#include "chrome/browser/ui/views/chrome_constrained_window_views_client.h"
#include "components/constrained_window/constrained_window_views.h"
#include "testing/gtest/include/gtest/gtest.h"
#include "ui/views/test/views_test_base.h"
#include "ui/views/widget/widget.h"

using views::Widget;

typedef views::ViewsTestBase ConfirmBubbleViewsTest;

TEST_F(ConfirmBubbleViewsTest, CreateAndClose) {
  SetConstrainedWindowViewsClient(CreateChromeConstrainedWindowViewsClient());

  // Create parent widget, as confirm bubble must have an owner.
  Widget::InitParams params = CreateParams(Widget::InitParams::TYPE_WINDOW);
  params.ownership = views::Widget::InitParams::WIDGET_OWNS_NATIVE_WIDGET;
  scoped_ptr<views::Widget> parent_widget(new Widget);
  parent_widget->Init(params);
  parent_widget->Show();

  // Bubble owns the model.
  bool model_deleted = false;
  TestConfirmBubbleModel* model =
      new TestConfirmBubbleModel(&model_deleted, NULL, NULL, NULL);
  ConfirmBubbleViews* bubble = new ConfirmBubbleViews(model);
  gfx::NativeWindow parent = parent_widget->GetNativeWindow();
  CreateBrowserModalDialogViews(bubble, parent)->Show();

  // Clean up.
  bubble->GetWidget()->CloseNow();
  parent_widget->CloseNow();
  EXPECT_TRUE(model_deleted);

  SetConstrainedWindowViewsClient(scoped_ptr<ConstrainedWindowViewsClient>());
}
