# Copyright (C) 2016 ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_ms013g,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 720 
include vendor/pa/main.mk

# Inherit from ms013g device
$(call inherit-product, device/samsung/ms013g/device.mk)

# Prebuilts
PRODUCT_COPY_FILES += \
    device/samsung/ms013g/prebuilts/kernel:kernel

# Release name
PRODUCT_RELEASE_NAME := SM-G7102
PRODUCT_DEVICE := ms013g
PRODUCT_NAME := pa_ms013g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G7102
PRODUCT_MANUFACTURER := samsung

# Product property
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ms013gxx TARGET_DEVICE=ms013g BUILD_FINGERPRINT="samsung/ms013gxx/ms013g:4.4.2/KOT49H/G7102XXUBOB1:user/release-keys" PRIVATE_BUILD_DESC="ms013gxx-user 4.4.2 KOT49H G7102XXUBOB1 release-keys"

