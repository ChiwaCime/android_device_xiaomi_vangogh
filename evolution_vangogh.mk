#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit from vangogh device
$(call inherit-product, device/xiaomi/vangogh/device.mk)

PRODUCT_NAME := evolution_vangogh
PRODUCT_DEVICE := vangogh
PRODUCT_MANUFACTURER := Xiaomi
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9E

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vangogh-user 11 RKQ1.200826.002 V12.1.7.0.RJVCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vangogh/vangogh:11/RKQ1.200826.002/V12.1.7.0.RJVCNXM:user/release-keys

# Include firmware
$(call inherit-product, vendor/xiaomi-firmware/vangogh/firmware.mk)
