#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/chime/citrus

# Include common platform configs
include device/xiaomi/chime/BoardConfig-chime.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := citrus,chime,juice

# Kernel - Prebuilt images
#BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(COMMON_PATH)-kernel/citrus/dtbo.img
TARGET_PREBUILT_DTB := $(COMMON_PATH)-kernel/citrus/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# Inherit from the proprietary version
include vendor/xiaomi/citrus/BoardConfigVendor.mk
