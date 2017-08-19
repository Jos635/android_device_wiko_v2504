$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/wiko/v2504an/v2502an-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/wiko/v2504an/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/wiko/v2504an/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel #\
#    device/wiko/v2504an/twrp.fstab:recovery/root/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_PROPERTY_OVERRIDES += ro.debuggable=1
PRODUCT_NAME := aosp_v2504an
PRODUCT_DEVICE := v2504an
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP SUNNY
PRODUCT_MANUFACTURER := Wiko
