#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay
    
# Board
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := sm7250
TARGET_SCREEN_DENSITY := 401

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# SoC
PROCESSOR_MODEL := SM7250 

PRODUCT_SHIPPING_API_LEVEL := 29

# Fingerprint
TARGET_HAS_FOD := true

# Properties
-include $(LOCAL_PATH)/properties.mk

# Inherit from sm7250-common
$(call inherit-product, device/xiaomi/sm7250-common/lito.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/vangogh/vangogh-vendor.mk)


# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# SoC
PROCESSOR_MODEL := SM7250 
