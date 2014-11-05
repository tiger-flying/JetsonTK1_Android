#
# Copyright 2013 The Android Open-Source Project
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

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/nvidia/jetsontk1-kernel/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/nvidia/jetsontk1/init.jetson-tk1.rc:root/init.jetson-tk1.rc \
    device/nvidia/jetsontk1/init.hdcp.rc:root/init.hdcp.rc \
    device/nvidia/jetsontk1/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc \
    device/nvidia/jetsontk1/init.qvs.rc:root/init.qvs.rc \
    device/nvidia/jetsontk1/init.t124.rc:root/init.t124.rc \
    device/nvidia/jetsontk1/init.t124_emmc.rc:root/init.t124_emmc.rc \
    device/nvidia/jetsontk1/init.tlk.rc:root/init.tlk.rc \
    device/nvidia/jetsontk1/fstab.jetson-tk1:root/fstab.jetson-tk1 \
    device/nvidia/jetsontk1/ueventd.jetson-tk1.rc:root/ueventd.jetson-tk1.rc

PRODUCT_COPY_FILES += \
    device/nvidia/jetsontk1/media_codecs.xml:system/etc/media_codecs.xml \
    device/nvidia/jetsontk1/media_profiles.xml:system/etc/media_profiles.xml

## These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
    device/nvidia/jetsontk1/overlay

PRODUCT_PACKAGES += \
	tcpdump \
	setup_fs \
	e2fsck \
	init.environ.rc

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler


PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
	wifi.commchip_id=9 \
    wifi.supplicant_scan_interval=15

# show software buttons
PRODUCT_PROPERTY_OVERRIDES += \
	qemu.hw.mainkeys=0

$(call inherit-product-if-exists, vendor/nvidia/jetsontk1/device-vendor.mk)
