#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/statix_citrus.mk \
    $(LOCAL_DIR)/statix_lime.mk

COMMON_LUNCH_CHOICES := \
    statix_citrus-user \
    statix_citrus-userdebug \
    statix_citrus-eng \
    statix_lime-user \
    statix_lime-userdebug \
    statix_lime-eng
