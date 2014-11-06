# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := content_browser_devtools_devtools_protocol_handler_gyp
LOCAL_MODULE_STEM := devtools_protocol_handler
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "devtools_protocol_handler":
$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc: $(LOCAL_PATH)/third_party/WebKit/Source/devtools/protocol.json $(LOCAL_PATH)/content/browser/devtools/protocol/devtools_protocol_handler_generator.py $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating DevTools protocol browser-side handlers from ../../../third_party/WebKit/Source/devtools/protocol.json ($@)"
	$(hide)cd $(gyp_local_path)/content/browser/devtools; mkdir -p $(gyp_shared_intermediate_dir)/content/browser/devtools/protocol; python protocol/devtools_protocol_handler_generator.py ../../../third_party/WebKit/Source/devtools/protocol.json "$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc" "$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.h"

$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.h: $(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.cc \
	$(gyp_shared_intermediate_dir)/content/browser/devtools/protocol/devtools_protocol_handler_impl.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: content_browser_devtools_devtools_protocol_handler_gyp

# Alias gyp target name.
.PHONY: devtools_protocol_handler
devtools_protocol_handler: content_browser_devtools_devtools_protocol_handler_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
