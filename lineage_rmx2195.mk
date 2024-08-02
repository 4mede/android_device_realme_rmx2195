#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/guam/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_rmx2195
PRODUCT_DEVICE := rmx2195
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme c15
PRODUCT_MANUFACTURER := realme
PRODUCT_GMS_CLIENTID_BASE := android-realme

# TODO: Update build fingerprint and build desc
BUILD_FINGERPRINT := "motorola/rmx2915 _retail/rmx2195:10/QPZS30.30-Q3-38-69-12/916393:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rmx2915_retail \
    PRIVATE_BUILD_DESC="rmx2195_retail-user 10 QPZS30.30-Q3-38-69-12 916393 release-keys"
