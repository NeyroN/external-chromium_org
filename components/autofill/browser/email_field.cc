// Copyright (c) 2011 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "components/autofill/browser/email_field.h"

#include "base/utf_string_conversions.h"
#include "components/autofill/browser/autofill_regex_constants.h"
#include "components/autofill/browser/autofill_scanner.h"
#include "ui/base/l10n/l10n_util.h"

namespace autofill {

// static
FormField* EmailField::Parse(AutofillScanner* scanner) {
  const AutofillField* field;
  if (ParseFieldSpecifics(scanner, UTF8ToUTF16(autofill::kEmailRe),
                          MATCH_DEFAULT | MATCH_EMAIL, &field)) {
    return new EmailField(field);
  }

  return NULL;
}

EmailField::EmailField(const AutofillField* field) : field_(field) {
}

bool EmailField::ClassifyField(FieldTypeMap* map) const {
  return AddClassification(field_, EMAIL_ADDRESS, map);
}

}  // namespace autofill
