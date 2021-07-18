#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/umi/device.mk)

# Inherit some common Fluid stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Include firmware
$(call inherit-product, vendor/xiaomi/umi/firmware/firmware.mk)

# GApps
TARGET_INCLUDE_GAPPS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_GOOGLE_RECORDER := true
TARGET_INCLUDE_MINIMAL_GAPPS := true

# Fluid flags
FLUID_BUILD_TYPE := UNOFFICIAL
PRODUCT_PRODUCT_PROPERTIES += \
        ro.fluid.maintainer=@P4042 \
        ro.fluid.cpu=SDM865

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_umi
PRODUCT_DEVICE := umi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
