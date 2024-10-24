#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/gale/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := orion_gale
PRODUCT_DEVICE := gale
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23106RN0DA

# OrionOS
ORION_MAINTAINER := 4K #Spider-Team #ST
ORION_MAINTAINER_LINK := https://t.me/SudoMohamed
ORION_BUILD_TYPE := UNOFFICIAL
ORION_GAPPS := true
TARGET_ENABLE_BLUR := false
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_UDFPS := false
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_gale-user 12 SP1A.210812.016 V816.0.2.0.UGPMIXM release-keys"

BUILD_FINGERPRINT := alps/vnd_gale/gale:12/SP1A.210812.016/V816.0.2.0.UGPMIXM:user/release-keys
