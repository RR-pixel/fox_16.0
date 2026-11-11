#
# Copyright 2018 The Android Open Source Project
#
# Copyright (C) 2021-2026 The OrangeFox Recovery Project
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


# Display
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display

PRODUCT_SHIPPING_API_LEVEL := 30

# Assert
TARGET_OTA_ASSERT_DEVICE := vayu,bhima

TARGET_COPY_OUT_VENDOR := vendor

PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Crypto
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# platform
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# security patch
PLATFORM_SECURITY_PATCH := 2127-12-31

# vendor
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Set boot SPL
#BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)


# Vibrator
#TW_SUPPORT_INPUT_AIDL_HAPTICS := true

#RECOVERY_BINARY_SOURCE_FILES += \
#    $(TARGET_OUT_VENDOR_EXECUTABLES)/hw/vendor.qti.hardware.vibrator.service

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/libdisplayconfig.qti.so
#    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.qti.hardware.vibrator.impl.so \
#    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libqtivibratoreffect.so

# OEM otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/recovery/security/miui

# override whatever is stupidly causing "AB_OTA_UPDATER := true"
PRODUCT_PROPERTY_OVERRIDES += ro.twrp.support_ab_ota=false
#
