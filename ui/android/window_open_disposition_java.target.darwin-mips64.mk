# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := ui_android_window_open_disposition_java_gyp
LOCAL_MODULE_STEM := window_open_disposition_java
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "generate_java_constants":
$(gyp_shared_intermediate_dir)/enums/window_open_disposition_java/org/chromium/ui/WindowOpenDisposition.java: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/enums/window_open_disposition_java/org/chromium/ui/WindowOpenDisposition.java: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/enums/window_open_disposition_java/org/chromium/ui/WindowOpenDisposition.java: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/enums/window_open_disposition_java/org/chromium/ui/WindowOpenDisposition.java: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/enums/window_open_disposition_java/org/chromium/ui/WindowOpenDisposition.java: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/enums/window_open_disposition_java/org/chromium/ui/WindowOpenDisposition.java: $(LOCAL_PATH)/build/android/gyp/util/build_utils.py $(LOCAL_PATH)/build/android/gyp/java_cpp_enum.py $(LOCAL_PATH)/ui/base/window_open_disposition.h $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating Java from cpp header ../base/window_open_disposition.h ($@)"
	$(hide)cd $(gyp_local_path)/ui/android; mkdir -p $(gyp_shared_intermediate_dir)/enums/window_open_disposition_java/org/chromium/ui; python ../../build/android/gyp/java_cpp_enum.py "--output_dir=$(gyp_shared_intermediate_dir)/enums/window_open_disposition_java" ../base/window_open_disposition.h



GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/enums/window_open_disposition_java/org/chromium/ui/WindowOpenDisposition.java

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: ui_android_window_open_disposition_java_gyp

# Alias gyp target name.
.PHONY: window_open_disposition_java
window_open_disposition_java: ui_android_window_open_disposition_java_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
