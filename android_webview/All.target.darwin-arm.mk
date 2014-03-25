# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

ifeq ($(TARGET_ARCH),arm)
gyp_target_2nd_arch_var_prefix :=
else ifeq ($(TARGET_2ND_ARCH),arm)
gyp_target_2nd_arch_var_prefix := $(TARGET_2ND_ARCH_VAR_PREFIX)
endif

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := android_webview_All_gyp
LOCAL_MODULE_STEM := All
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$($(gyp_target_2nd_arch_var_prefix)TARGET_OUT_INTERMEDIATE_LIBRARIES)/libwebviewchromium.so \
	$(call intermediates-dir-for,GYP,base_base_java_activity_state_gyp)/base_java_activity_state.stamp \
	$(call intermediates-dir-for,GYP,base_base_java_memory_pressure_level_list_gyp)/base_java_memory_pressure_level_list.stamp \
	$(call intermediates-dir-for,GYP,content_page_transition_types_java_gyp)/page_transition_types_java.stamp \
	$(call intermediates-dir-for,GYP,content_result_codes_java_gyp)/result_codes_java.stamp \
	$(call intermediates-dir-for,GYP,content_speech_recognition_error_java_gyp)/speech_recognition_error_java.stamp \
	$(call intermediates-dir-for,GYP,net_certificate_mime_types_java_gyp)/certificate_mime_types_java.stamp \
	$(call intermediates-dir-for,GYP,net_cert_verify_result_android_java_gyp)/cert_verify_result_android_java.stamp \
	$(call intermediates-dir-for,GYP,net_net_errors_java_gyp)/net_errors_java.stamp \
	$(call intermediates-dir-for,GYP,net_private_key_types_java_gyp)/private_key_types_java.stamp \
	$(call intermediates-dir-for,GYP,ui_window_open_disposition_java_gyp)/window_open_disposition_java.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: android_webview_All_gyp

# Alias gyp target name.
.PHONY: All
All: android_webview_All_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@
