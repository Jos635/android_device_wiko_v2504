# Release name
PRODUCT_RELEASE_NAME := v2502an

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/wiko/v2502an/device_v2502an.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := v2502an
PRODUCT_NAME := cm_v2502an
PRODUCT_BRAND := wiko
PRODUCT_MODEL := v2502an
PRODUCT_MANUFACTURER := wiko
