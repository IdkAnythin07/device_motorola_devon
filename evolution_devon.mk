#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit some common LineageOS stuffs
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/devon_g/devon:13/T2SNS33.73-22-3-2/61221-f86875:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=devon_g \
    PRIVATE_BUILD_DESC="devon_g-user 13 T2SNS33.73-22-3-2 61221-f86875 release-keys"