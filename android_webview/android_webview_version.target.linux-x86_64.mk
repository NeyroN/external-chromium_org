# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := android_webview_android_webview_version_gyp
LOCAL_MODULE_STEM := android_webview_version
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "generate_version":
$(gyp_shared_intermediate_dir)/android_webview/common/aw_version_info_values.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/android_webview/common/aw_version_info_values.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/android_webview/common/aw_version_info_values.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/android_webview/common/aw_version_info_values.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/android_webview/common/aw_version_info_values.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/android_webview/common/aw_version_info_values.h: $(LOCAL_PATH)/build/util/version.py $(LOCAL_PATH)/android_webview/common/aw_version_info_values.h.version $(LOCAL_PATH)/chrome/VERSION $(LOCAL_PATH)/build/util/LASTCHANGE $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating version information ($@)"
	$(hide)cd $(gyp_local_path)/android_webview; mkdir -p $(gyp_shared_intermediate_dir)/android_webview/common; python ../build/util/version.py -f ../chrome/VERSION -f ../build/util/LASTCHANGE common/aw_version_info_values.h.version "$(gyp_shared_intermediate_dir)/android_webview/common/aw_version_info_values.h"



GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/android_webview/common/aw_version_info_values.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: android_webview_android_webview_version_gyp

# Alias gyp target name.
.PHONY: android_webview_version
android_webview_version: android_webview_android_webview_version_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
