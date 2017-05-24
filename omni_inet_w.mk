# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/intel/inet_w/device_inet_w.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := inet_w
PRODUCT_NAME := omni_inet_w
PRODUCT_BRAND := intel
PRODUCT_MODEL := V80 PLUS
PRODUCT_MANUFACTURER := ONDA
