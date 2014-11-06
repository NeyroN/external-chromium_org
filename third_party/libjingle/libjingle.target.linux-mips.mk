# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := third_party_libjingle_libjingle_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_webrtc_base_webrtc_base_gyp,,,$(GYP_VAR_PREFIX))/webrtc_base.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	third_party/webrtc/p2p/base/asyncstuntcpsocket.cc \
	third_party/webrtc/p2p/base/basicpacketsocketfactory.cc \
	third_party/webrtc/p2p/base/dtlstransportchannel.cc \
	third_party/webrtc/p2p/base/p2ptransport.cc \
	third_party/webrtc/p2p/base/p2ptransportchannel.cc \
	third_party/webrtc/p2p/base/parsing.cc \
	third_party/webrtc/p2p/base/port.cc \
	third_party/webrtc/p2p/base/portallocator.cc \
	third_party/webrtc/p2p/base/portallocatorsessionproxy.cc \
	third_party/webrtc/p2p/base/portproxy.cc \
	third_party/webrtc/p2p/base/pseudotcp.cc \
	third_party/webrtc/p2p/base/rawtransport.cc \
	third_party/webrtc/p2p/base/rawtransportchannel.cc \
	third_party/webrtc/p2p/base/relayport.cc \
	third_party/webrtc/p2p/base/session.cc \
	third_party/webrtc/p2p/base/sessiondescription.cc \
	third_party/webrtc/p2p/base/sessionmanager.cc \
	third_party/webrtc/p2p/base/sessionmessages.cc \
	third_party/webrtc/p2p/base/stun.cc \
	third_party/webrtc/p2p/base/stunport.cc \
	third_party/webrtc/p2p/base/stunrequest.cc \
	third_party/webrtc/p2p/base/tcpport.cc \
	third_party/webrtc/p2p/base/transport.cc \
	third_party/webrtc/p2p/base/transportchannel.cc \
	third_party/webrtc/p2p/base/transportchannelproxy.cc \
	third_party/webrtc/p2p/base/transportdescription.cc \
	third_party/webrtc/p2p/base/transportdescriptionfactory.cc \
	third_party/webrtc/p2p/base/turnport.cc \
	third_party/webrtc/p2p/client/basicportallocator.cc \
	third_party/webrtc/p2p/client/httpportallocator.cc \
	third_party/webrtc/p2p/client/socketmonitor.cc \
	third_party/webrtc/libjingle/xmpp/constants.cc \
	third_party/webrtc/libjingle/xmpp/jid.cc \
	third_party/webrtc/libjingle/xmpp/saslmechanism.cc \
	third_party/webrtc/libjingle/xmpp/xmppclient.cc \
	third_party/webrtc/libjingle/xmpp/xmppengineimpl.cc \
	third_party/webrtc/libjingle/xmpp/xmppengineimpl_iq.cc \
	third_party/webrtc/libjingle/xmpp/xmpplogintask.cc \
	third_party/webrtc/libjingle/xmpp/xmppstanzaparser.cc \
	third_party/webrtc/libjingle/xmpp/xmpptask.cc


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-Wno-format \
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
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
	-g \
	-gdwarf-4 \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Debug := \
	'-DEXPAT_RELATIVE_PATH' \
	'-DFEATURE_ENABLE_SSL' \
	'-DGTEST_RELATIVE_PATH' \
	'-DHAVE_SRTP' \
	'-DHAVE_WEBRTC_VIDEO' \
	'-DHAVE_WEBRTC_VOICE' \
	'-DLOGGING_INSIDE_WEBRTC' \
	'-DNO_MAIN_THREAD_WRAPPING' \
	'-DNO_SOUND_SYSTEM' \
	'-DSRTP_RELATIVE_PATH' \
	'-DUSE_WEBRTC_DEV_BRANCH' \
	'-DENABLE_EXTERNAL_AUTH' \
	'-DWEBRTC_CHROMIUM_BUILD' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DLIBPEERCONNECTION_LIB=1' \
	'-DSSL_USE_OPENSSL' \
	'-DHAVE_OPENSSL_SSL_H' \
	'-DPOSIX' \
	'-DWEBRTC_POSIX' \
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
	'-DPOSIX_AVOID_MMAP' \
	'-DXML_STATIC' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_ANDROID_OPENSLES' \
	'-DFEATURE_ENABLE_VOICEMAIL' \
	'-DANDROID' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(LOCAL_PATH)/third_party/libjingle/overrides \
	$(LOCAL_PATH)/third_party/webrtc/overrides \
	$(LOCAL_PATH)/third_party/libjingle/source \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/testing/gtest/include \
	$(LOCAL_PATH)/third_party \
	$(LOCAL_PATH)/third_party/libyuv/include \
	$(LOCAL_PATH)/third_party/usrsctp \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH)/third_party/expat/files/lib \
	$(LOCAL_PATH)/third_party/boringssl/src/include \
	$(LOCAL_PATH)/third_party/webrtc/overrides \
	$(LOCAL_PATH)/third_party


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-Wno-uninitialized \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-Wno-format \
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
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Release := \
	'-DEXPAT_RELATIVE_PATH' \
	'-DFEATURE_ENABLE_SSL' \
	'-DGTEST_RELATIVE_PATH' \
	'-DHAVE_SRTP' \
	'-DHAVE_WEBRTC_VIDEO' \
	'-DHAVE_WEBRTC_VOICE' \
	'-DLOGGING_INSIDE_WEBRTC' \
	'-DNO_MAIN_THREAD_WRAPPING' \
	'-DNO_SOUND_SYSTEM' \
	'-DSRTP_RELATIVE_PATH' \
	'-DUSE_WEBRTC_DEV_BRANCH' \
	'-DENABLE_EXTERNAL_AUTH' \
	'-DWEBRTC_CHROMIUM_BUILD' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DLIBPEERCONNECTION_LIB=1' \
	'-DSSL_USE_OPENSSL' \
	'-DHAVE_OPENSSL_SSL_H' \
	'-DPOSIX' \
	'-DWEBRTC_POSIX' \
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
	'-DPOSIX_AVOID_MMAP' \
	'-DXML_STATIC' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_ANDROID_OPENSLES' \
	'-DFEATURE_ENABLE_VOICEMAIL' \
	'-DANDROID' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(LOCAL_PATH)/third_party/libjingle/overrides \
	$(LOCAL_PATH)/third_party/webrtc/overrides \
	$(LOCAL_PATH)/third_party/libjingle/source \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/testing/gtest/include \
	$(LOCAL_PATH)/third_party \
	$(LOCAL_PATH)/third_party/libyuv/include \
	$(LOCAL_PATH)/third_party/usrsctp \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH)/third_party/expat/files/lib \
	$(LOCAL_PATH)/third_party/boringssl/src/include \
	$(LOCAL_PATH)/third_party/webrtc/overrides \
	$(LOCAL_PATH)/third_party


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-Wno-uninitialized \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


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
gyp_all_modules: third_party_libjingle_libjingle_gyp

# Alias gyp target name.
.PHONY: libjingle
libjingle: third_party_libjingle_libjingle_gyp

include $(BUILD_STATIC_LIBRARY)
