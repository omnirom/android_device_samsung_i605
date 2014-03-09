#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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
#

# Inherit Omni CDMA telephony parts
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# This is where we'd set a backup provider if we had one
$(call inherit-product, device/samsung/i605/i605.mk)

# Discard inherited values and use our own instead.
PRODUCT_MODEL := SCH-I605
PRODUCT_BRAND := Verizon
PRODUCT_NAME := omni_i605
PRODUCT_DEVICE := i605
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-verizon

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=t0ltevzw \
    TARGET_DEVICE=t0ltevzw \
    PRIVATE_BUILD_DESC="t0ltevzw-user 4.3 JSS15J I605VRUEMJ9 release-keys" \
    BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.3/JSS15J/I605VRUEMJ9:user/release-keys"
