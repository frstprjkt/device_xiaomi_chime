#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/chime/lime

# Include common platform configs
include device/xiaomi/chime/BoardConfig-chime.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := lime,lemon,pomelo,chime,juice

# Kernel - Prebuilt images
#BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(COMMON_PATH)/lime/dtbo.img
TARGET_PREBUILT_DTB := $(COMMON_PATH)/lime/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# NFC
ODM_MANIFEST_SKUS += lemon
ODM_MANIFEST_LEMON_FILES := $(DEVICE_PATH)/vintf/manifest_lemon.xml

# Inherit from the proprietary version
include vendor/xiaomi/lime/BoardConfigVendor.mk
