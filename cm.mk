# Release name
PRODUCT_RELEASE_NAME := inet_w

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/intel/inet_w/device_inet_w.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := inet_w
PRODUCT_NAME := cm_inet_w
PRODUCT_BRAND := intel
PRODUCT_MODEL := inet_w
PRODUCT_MANUFACTURER := intel
