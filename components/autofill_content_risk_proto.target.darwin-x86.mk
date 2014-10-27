# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := components_autofill_content_risk_proto_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(gyp_shared_intermediate_dir)/protoc


### Generated for rule "components_components_gyp_autofill_content_risk_proto_target_genproto":
# "{'inputs': ['../tools/protoc_wrapper/protoc_wrapper.py', '$(gyp_shared_intermediate_dir)/protoc'], 'process_outputs_as_sources': '1', 'extension': 'proto', 'outputs': ['$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/%(INPUT_ROOT)s_pb2.py', '$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/%(INPUT_ROOT)s.pb.cc', '$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/%(INPUT_ROOT)s.pb.h'], 'rule_name': 'genproto', 'rule_sources': ['autofill/content/browser/risk/proto/fingerprint.proto'], 'action': ['python', '../tools/protoc_wrapper/protoc_wrapper.py', '--include', '', '--protobuf', '$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/%(INPUT_ROOT)s.pb.h', '--proto-in-dir', 'autofill/content/browser/risk/proto', '--proto-in-file', '%(INPUT_ROOT)s$(suffix $<)', '--use-system-protobuf=0', '--', '$(gyp_shared_intermediate_dir)/protoc', '--cpp_out', '$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto', '--python_out', '$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto'], 'message': 'Generating C++ and Python code from $(RULE_SOURCES)'}":
$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py: $(LOCAL_PATH)/components/autofill/content/browser/risk/proto/fingerprint.proto $(LOCAL_PATH)/tools/protoc_wrapper/protoc_wrapper.py $(gyp_shared_intermediate_dir)/protoc $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto $(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto; cd $(gyp_local_path)/components; python ../tools/protoc_wrapper/protoc_wrapper.py --include "" --protobuf "$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/fingerprint.pb.h" --proto-in-dir autofill/content/browser/risk/proto --proto-in-file "fingerprint$(suffix $<)" "--use-system-protobuf=0" -- "$(gyp_shared_intermediate_dir)/protoc" --cpp_out "$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto" --python_out "$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto"

$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/fingerprint.pb.cc: $(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py ;
$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/fingerprint.pb.h: $(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py \
	$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/fingerprint.pb.cc \
	$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/fingerprint.pb.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
$(gyp_intermediate_dir)/fingerprint.pb.cc: $(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/fingerprint.pb.cc
	mkdir -p $(@D); cp $< $@
LOCAL_GENERATED_SOURCES := \
	$(gyp_intermediate_dir)/fingerprint.pb.cc \
	$(gyp_shared_intermediate_dir)/pyproto/components/autofill/content/browser/risk/proto/fingerprint_pb2.py \
	$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto/fingerprint.pb.h

GYP_COPIED_SOURCE_ORIGIN_DIRS := \
	$(gyp_shared_intermediate_dir)/protoc_out/components/autofill/content/browser/risk/proto

LOCAL_SRC_FILES :=


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
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
	-msse2 \
	-mfpmath=sse \
	-mmmx \
	-m32 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-fno-stack-protector \
	-Os \
	-g \
	-gdwarf-4 \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Debug := \
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
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
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
	$(gyp_shared_intermediate_dir)/protoc_out \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src


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
	-msse2 \
	-mfpmath=sse \
	-mmmx \
	-m32 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-fno-stack-protector \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Release := \
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
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
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
	$(gyp_shared_intermediate_dir)/protoc_out \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src


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
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: components_autofill_content_risk_proto_gyp

# Alias gyp target name.
.PHONY: autofill_content_risk_proto
autofill_content_risk_proto: components_autofill_content_risk_proto_gyp

include $(BUILD_STATIC_LIBRARY)
