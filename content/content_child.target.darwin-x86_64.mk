# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := content_content_child_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,content_content_resources_gyp,,,$(GYP_VAR_PREFIX))/content_resources.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,mojo_public_mojo_application_bindings_gyp,,,$(GYP_VAR_PREFIX))/mojo_public_mojo_application_bindings_gyp.a \
	$(call intermediates-dir-for,GYP,skia_skia_gyp,,,$(GYP_VAR_PREFIX))/skia.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp,,,$(GYP_VAR_PREFIX))/skia_skia_library_gyp.a \
	$(call intermediates-dir-for,GYP,content_app_resources_content_resources_gyp,,,$(GYP_VAR_PREFIX))/content_resources.stamp \
	$(call intermediates-dir-for,GYP,content_app_strings_content_strings_gyp,,,$(GYP_VAR_PREFIX))/content_strings.stamp \
	$(call intermediates-dir-for,GYP,third_party_WebKit_public_blink_gyp,,,$(GYP_VAR_PREFIX))/blink.stamp \
	$(call intermediates-dir-for,GYP,third_party_WebKit_public_blink_resources_gyp,,,$(GYP_VAR_PREFIX))/blink_resources.stamp \
	$(call intermediates-dir-for,GYP,third_party_npapi_npapi_gyp,,,$(GYP_VAR_PREFIX))/npapi.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	content/child/appcache/appcache_backend_proxy.cc \
	content/child/appcache/appcache_dispatcher.cc \
	content/child/appcache/appcache_frontend_impl.cc \
	content/child/appcache/web_application_cache_host_impl.cc \
	content/child/assert_matching_enums.cc \
	content/child/blink_platform_impl.cc \
	content/child/bluetooth/web_bluetooth_impl.cc \
	content/child/child_discardable_shared_memory_manager.cc \
	content/child/child_gpu_memory_buffer_manager.cc \
	content/child/child_histogram_message_filter.cc \
	content/child/child_message_filter.cc \
	content/child/child_process.cc \
	content/child/child_resource_message_filter.cc \
	content/child/child_shared_bitmap_manager.cc \
	content/child/child_thread.cc \
	content/child/content_child_helpers.cc \
	content/child/database_util.cc \
	content/child/db_message_filter.cc \
	content/child/file_info_util.cc \
	content/child/fileapi/file_system_dispatcher.cc \
	content/child/fileapi/webfilesystem_impl.cc \
	content/child/fileapi/webfilewriter_base.cc \
	content/child/fileapi/webfilewriter_impl.cc \
	content/child/ftp_directory_listing_response_delegate.cc \
	content/child/geofencing/geofencing_dispatcher.cc \
	content/child/geofencing/geofencing_message_filter.cc \
	content/child/geofencing/web_geofencing_provider_impl.cc \
	content/child/image_decoder.cc \
	content/child/indexed_db/indexed_db_dispatcher.cc \
	content/child/indexed_db/indexed_db_key_builders.cc \
	content/child/indexed_db/indexed_db_message_filter.cc \
	content/child/indexed_db/webidbcursor_impl.cc \
	content/child/indexed_db/webidbdatabase_impl.cc \
	content/child/indexed_db/webidbfactory_impl.cc \
	content/child/mojo/mojo_application.cc \
	content/child/multipart_response_delegate.cc \
	content/child/notifications/notification_dispatcher.cc \
	content/child/notifications/notification_manager.cc \
	content/child/npapi/np_channel_base.cc \
	content/child/npapi/npobject_proxy.cc \
	content/child/npapi/npobject_stub.cc \
	content/child/npapi/npobject_util.cc \
	content/child/npapi/npruntime_util.cc \
	content/child/plugin_message_generator.cc \
	content/child/plugin_param_traits.cc \
	content/child/power_monitor_broadcast_source.cc \
	content/child/quota_dispatcher.cc \
	content/child/quota_message_filter.cc \
	content/child/request_extra_data.cc \
	content/child/request_info.cc \
	content/child/resource_dispatcher.cc \
	content/child/resource_loader_bridge.cc \
	content/child/runtime_features.cc \
	content/child/scoped_child_process_reference.cc \
	content/child/service_worker/service_worker_dispatcher.cc \
	content/child/service_worker/service_worker_handle_reference.cc \
	content/child/service_worker/service_worker_message_filter.cc \
	content/child/service_worker/service_worker_network_provider.cc \
	content/child/service_worker/service_worker_provider_context.cc \
	content/child/service_worker/service_worker_registration_handle_reference.cc \
	content/child/service_worker/web_service_worker_impl.cc \
	content/child/service_worker/web_service_worker_provider_impl.cc \
	content/child/service_worker/web_service_worker_registration_impl.cc \
	content/child/shared_worker_devtools_agent.cc \
	content/child/simple_webmimeregistry_impl.cc \
	content/child/site_isolation_policy.cc \
	content/child/sync_load_response.cc \
	content/child/thread_safe_sender.cc \
	content/child/threaded_data_provider.cc \
	content/child/web_data_consumer_handle_impl.cc \
	content/child/web_database_observer_impl.cc \
	content/child/web_discardable_memory_impl.cc \
	content/child/web_gesture_curve_impl.cc \
	content/child/web_url_loader_impl.cc \
	content/child/web_url_request_util.cc \
	content/child/webblobregistry_impl.cc \
	content/child/webcrypto/algorithm_dispatch.cc \
	content/child/webcrypto/algorithm_implementation.cc \
	content/child/webcrypto/algorithm_registry.cc \
	content/child/webcrypto/crypto_data.cc \
	content/child/webcrypto/generate_key_result.cc \
	content/child/webcrypto/jwk.cc \
	content/child/webcrypto/status.cc \
	content/child/webcrypto/structured_clone.cc \
	content/child/webcrypto/webcrypto_impl.cc \
	content/child/webcrypto/webcrypto_util.cc \
	content/child/webfallbackthemeengine_impl.cc \
	content/child/webfileutilities_impl.cc \
	content/child/webmessageportchannel_impl.cc \
	content/child/websocket_bridge.cc \
	content/child/websocket_dispatcher.cc \
	content/child/webthemeengine_impl_android.cc \
	content/child/webthread_impl.cc \
	content/child/weburlresponse_extradata_impl.cc \
	content/child/worker_task_runner.cc \
	content/child/worker_thread_task_runner.cc \
	content/child/webcrypto/openssl/aes_cbc_openssl.cc \
	content/child/webcrypto/openssl/aes_ctr_openssl.cc \
	content/child/webcrypto/openssl/aes_gcm_openssl.cc \
	content/child/webcrypto/openssl/aes_key_openssl.cc \
	content/child/webcrypto/openssl/aes_kw_openssl.cc \
	content/child/webcrypto/openssl/hmac_openssl.cc \
	content/child/webcrypto/openssl/key_openssl.cc \
	content/child/webcrypto/openssl/rsa_key_openssl.cc \
	content/child/webcrypto/openssl/rsa_oaep_openssl.cc \
	content/child/webcrypto/openssl/rsa_pss_openssl.cc \
	content/child/webcrypto/openssl/rsa_sign_openssl.cc \
	content/child/webcrypto/openssl/rsa_ssa_openssl.cc \
	content/child/webcrypto/openssl/sha_openssl.cc \
	content/child/webcrypto/openssl/sym_key_openssl.cc \
	content/child/webcrypto/openssl/util_openssl.cc


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-m64 \
	-march=x86-64 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-Os \
	-g \
	-gdwarf-4 \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Debug := \
	'-DCONTENT_IMPLEMENTATION' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DENABLE_NOTIFICATIONS' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DDONT_EMBED_BUILD_METADATA' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_BASIC_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_FM_NEW_MATCH_FAMILY_STYLE_CHARACTER=1' \
	'-DSK_SUPPORT_LEGACY_TEXTRENDERMODE' \
	'-DSK_IGNORE_GPU_LAYER_HOISTING' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DPOSIX_AVOID_MMAP' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(gyp_shared_intermediate_dir)/content/app/resources \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/v8/include \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libjpeg_turbo \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/third_party/boringssl/src/include


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-m64 \
	-march=x86-64 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Release := \
	'-DCONTENT_IMPLEMENTATION' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DENABLE_NOTIFICATIONS' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DDONT_EMBED_BUILD_METADATA' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_BASIC_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_FM_NEW_MATCH_FAMILY_STYLE_CHARACTER=1' \
	'-DSK_SUPPORT_LEGACY_TEXTRENDERMODE' \
	'-DSK_IGNORE_GPU_LAYER_HOISTING' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DPOSIX_AVOID_MMAP' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(gyp_shared_intermediate_dir)/content/app/resources \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/v8/include \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libjpeg_turbo \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/third_party/boringssl/src/include


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.

LOCAL_STATIC_LIBRARIES := \
	cpufeatures

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: content_content_child_gyp

# Alias gyp target name.
.PHONY: content_child
content_child: content_content_child_gyp

include $(BUILD_STATIC_LIBRARY)
