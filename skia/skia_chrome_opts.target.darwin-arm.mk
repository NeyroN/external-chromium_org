# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := skia_skia_chrome_opts_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: skia_skia_chrome_opts_gyp

# Alias gyp target name.
.PHONY: skia_chrome_opts
skia_chrome_opts: skia_skia_chrome_opts_gyp

include $(BUILD_STATIC_LIBRARY)
