// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef CHROME_BROWSER_UI_VIEWS_AUTOFILL_AUTOFILL_DIALOG_VIEW_TESTER_VIEWS_H_
#define CHROME_BROWSER_UI_VIEWS_AUTOFILL_AUTOFILL_DIALOG_VIEW_TESTER_VIEWS_H_

#include "base/basictypes.h"
#include "chrome/browser/ui/autofill/autofill_dialog_view_tester.h"

namespace autofill {

class AutofillDialogViews;

class AutofillDialogViewTesterViews : public AutofillDialogViewTester {
 public:
  explicit AutofillDialogViewTesterViews(AutofillDialogViews* view);
  virtual ~AutofillDialogViewTesterViews();

  // TestableAutofillDialogView implementation:
  virtual void SubmitForTesting() override;
  virtual void CancelForTesting() override;
  virtual base::string16 GetTextContentsOfInput(ServerFieldType type) override;
  virtual void SetTextContentsOfInput(ServerFieldType type,
                                      const base::string16& contents) override;
  virtual void SetTextContentsOfSuggestionInput(
      DialogSection section,
      const base::string16& text) override;
  virtual void ActivateInput(ServerFieldType type) override;
  virtual gfx::Size GetSize() const override;
  virtual content::WebContents* GetSignInWebContents() override;
  virtual bool IsShowingOverlay() const override;
  virtual bool IsShowingSection(DialogSection section) const override;

 private:
  AutofillDialogViews* view_;

  DISALLOW_COPY_AND_ASSIGN(AutofillDialogViewTesterViews);
};

}  // namespace autofill

#endif  // CHROME_BROWSER_UI_VIEWS_AUTOFILL_AUTOFILL_DIALOG_VIEW_TESTER_VIEWS_H_
