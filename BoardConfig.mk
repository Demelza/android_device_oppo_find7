#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from msm8974-common
-include device/oppo/msm8974-common/BoardConfigCommon.mk

# Disable periodic battery polling
HEALTHD_CHATTY_MODE := false

# Compiler flags
TARGET_GCC_VERSION_EXP := 4.8
TARGET_USE_PIPE := true
USE_O3_OPTIMIZATIONS := true
SUPPRES_UNUSED_WARNING := true
KRAIT_TUNINGS := true
ENABLE_GCCONLY := true
GRAPHITE_OPTS := true
STRICT_ALIASING := true
BOOT_ZIP_OUT_FILE := SlimKernel-$(TARGET_DEVICE)-$(PLATFORM_VERSION)-$(shell date +"%Y%m%d")

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
TARGET_KERNEL_CONFIG := slim_find7_defconfig
ENABLE_GRAPHITE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oppo/find7/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13747929088 # 13747945472 - 16384 for crypto footer
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472

# Recovery
TARGET_RECOVERY_FSTAB := device/oppo/find7/rootdir/etc/fstab.qcom

AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true

# Inherit from the proprietary version
-include vendor/oppo/find7/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := find7,find7a,FIND7,X9006,X9007
