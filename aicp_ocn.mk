#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from oce device
$(call inherit-product, device/htc/ocn/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)

# Inherit some common Aicp stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ocn
PRODUCT_NAME := aicp_ocn
PRODUCT_BRAND := HTC
PRODUCT_MODEL := HTC U11
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := ocn

$(call inherit-product-if-exists, vendor/htc/ocn/ocn-vendor.mk)

# Device Fingerprint
BUILD_FINGERPRINT := htc/ocnuhl_00710/htc_ocnuhl:8.0.0/OPR6.170623.013/1002308.9:user/release-keys

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
DEVICE_MAINTAINERS="Ron H. (Siluxsept)"
