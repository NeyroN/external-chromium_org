# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := third_party_yasm_generate_files_host_gyp
LOCAL_MODULE_STEM := generate_files
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
LOCAL_IS_HOST_MODULE := true
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(gyp_shared_intermediate_dir)/genperf \
	$(gyp_shared_intermediate_dir)/genversion

### Rules for action "generate_x86_insn":
$(gyp_shared_intermediate_dir)/third_party/yasm/x86insns.c: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86insns.c: gyp_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_intermediate_dir)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86insns.c: gyp_shared_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_shared_intermediate_dir)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86insns.c: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/third_party/yasm/x86insns.c: $(LOCAL_PATH)/third_party/yasm/source/patched-yasm/modules/arch/x86/gen_x86_insn.py $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Running source/patched-yasm/modules/arch/x86/gen_x86_insn.py. ($@)"
	$(hide)cd $(gyp_local_path)/third_party/yasm; mkdir -p $(gyp_shared_intermediate_dir)/third_party/yasm; python source/patched-yasm/modules/arch/x86/gen_x86_insn.py "$(gyp_shared_intermediate_dir)/third_party/yasm"

$(gyp_shared_intermediate_dir)/third_party/yasm/x86insn_gas.gperf: $(gyp_shared_intermediate_dir)/third_party/yasm/x86insns.c ;
$(gyp_shared_intermediate_dir)/third_party/yasm/x86insn_nasm.gperf: $(gyp_shared_intermediate_dir)/third_party/yasm/x86insns.c ;

### Rules for action "generate_version":
$(gyp_shared_intermediate_dir)/third_party/yasm/version.mac: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/third_party/yasm/version.mac: gyp_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_intermediate_dir)
$(gyp_shared_intermediate_dir)/third_party/yasm/version.mac: gyp_shared_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_shared_intermediate_dir)
$(gyp_shared_intermediate_dir)/third_party/yasm/version.mac: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/third_party/yasm/version.mac: $(gyp_shared_intermediate_dir)/genversion $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating yasm version file: $(gyp_shared_intermediate_dir)/third_party/yasm/version.mac. ($@)"
	$(hide)cd $(gyp_local_path)/third_party/yasm; mkdir -p $(gyp_shared_intermediate_dir)/third_party/yasm; "$(gyp_shared_intermediate_dir)/genversion" "$(gyp_shared_intermediate_dir)/third_party/yasm/version.mac"




### Generated for rule "third_party_yasm_yasm_gyp_generate_files_host_generate_gperf":
# "{'inputs': ['$(gyp_shared_intermediate_dir)/genperf'], 'extension': 'gperf', 'process_outputs_as_sources': '0', 'outputs': ['$(gyp_shared_intermediate_dir)/third_party/yasm/%(INPUT_ROOT)s.c'], 'rule_name': 'generate_gperf', 'rule_sources': ['source/patched-yasm/modules/arch/x86/x86cpu.gperf', 'source/patched-yasm/modules/arch/x86/x86regtmod.gperf'], 'action': ['$(gyp_shared_intermediate_dir)/genperf', '$(RULE_SOURCES)', '$(gyp_shared_intermediate_dir)/third_party/yasm/%(INPUT_ROOT)s.c'], 'message': 'yasm genperf for $(RULE_SOURCES).'}":
$(gyp_shared_intermediate_dir)/third_party/yasm/x86cpu.c: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86cpu.c: gyp_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_intermediate_dir)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86cpu.c: gyp_shared_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_shared_intermediate_dir)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86cpu.c: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/third_party/yasm/x86cpu.c: $(LOCAL_PATH)/third_party/yasm/source/patched-yasm/modules/arch/x86/x86cpu.gperf $(gyp_shared_intermediate_dir)/genperf $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/third_party/yasm; cd $(gyp_local_path)/third_party/yasm; "$(gyp_shared_intermediate_dir)/genperf" source/patched-yasm/modules/arch/x86/x86cpu.gperf "$(gyp_shared_intermediate_dir)/third_party/yasm/x86cpu.c"

.PHONY: third_party_yasm_generate_files_host_gyp_rule_trigger
third_party_yasm_generate_files_host_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/third_party/yasm/x86cpu.c

$(gyp_shared_intermediate_dir)/third_party/yasm/x86regtmod.c: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86regtmod.c: gyp_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_intermediate_dir)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86regtmod.c: gyp_shared_intermediate_dir := $(GYP_ABS_ANDROID_TOP_DIR)/$(gyp_shared_intermediate_dir)
$(gyp_shared_intermediate_dir)/third_party/yasm/x86regtmod.c: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/third_party/yasm/x86regtmod.c: $(LOCAL_PATH)/third_party/yasm/source/patched-yasm/modules/arch/x86/x86regtmod.gperf $(gyp_shared_intermediate_dir)/genperf $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/third_party/yasm; cd $(gyp_local_path)/third_party/yasm; "$(gyp_shared_intermediate_dir)/genperf" source/patched-yasm/modules/arch/x86/x86regtmod.gperf "$(gyp_shared_intermediate_dir)/third_party/yasm/x86regtmod.c"

.PHONY: third_party_yasm_generate_files_host_gyp_rule_trigger
third_party_yasm_generate_files_host_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/third_party/yasm/x86regtmod.c

### Finished generating for all rules

GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/third_party/yasm/x86insns.c \
	$(gyp_shared_intermediate_dir)/third_party/yasm/x86insn_gas.gperf \
	$(gyp_shared_intermediate_dir)/third_party/yasm/x86insn_nasm.gperf \
	$(gyp_shared_intermediate_dir)/third_party/yasm/version.mac \
	$(gyp_shared_intermediate_dir)/third_party/yasm/x86cpu.c \
	$(gyp_shared_intermediate_dir)/third_party/yasm/x86regtmod.c

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES := \
	third_party_yasm_generate_files_host_gyp_rule_trigger

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES :=


# Flags passed to both C and C++ files.
MY_CFLAGS := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-pthread \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_CFLAGS_C :=

MY_DEFS := \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DENABLE_LANGUAGE_DETECTION=1' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

LOCAL_CFLAGS := $(MY_CFLAGS_C) $(MY_CFLAGS) $(MY_DEFS)
# Undefine ANDROID for host modules
LOCAL_CFLAGS += -UANDROID

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES :=

LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES)

# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_yasm_generate_files_host_gyp

# Alias gyp target name.
.PHONY: generate_files
generate_files: third_party_yasm_generate_files_host_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@
