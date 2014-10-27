# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := components_autofill_regexes_gyp
LOCAL_MODULE_STEM := autofill_regexes
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "autofill_regexes":
$(gyp_shared_intermediate_dir)/autofill_regex_constants.cc: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/autofill_regex_constants.cc: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/autofill_regex_constants.cc: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/autofill_regex_constants.cc: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/autofill_regex_constants.cc: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/autofill_regex_constants.cc: $(LOCAL_PATH)/build/escape_unicode.py $(LOCAL_PATH)/components/autofill/core/browser/autofill_regex_constants.cc.utf8 $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: components_components_gyp_autofill_regexes_target_autofill_regexes ($@)"
	$(hide)cd $(gyp_local_path)/components; mkdir -p $(gyp_shared_intermediate_dir); python ../build/escape_unicode.py -o "$(gyp_shared_intermediate_dir)" autofill/core/browser/autofill_regex_constants.cc.utf8



GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/autofill_regex_constants.cc

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: components_autofill_regexes_gyp

# Alias gyp target name.
.PHONY: autofill_regexes
autofill_regexes: components_autofill_regexes_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
