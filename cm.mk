# Release name
PRODUCT_RELEASE_NAME := inet_w

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/intel/inet_w/device_inet_w.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := inet_w
PRODUCT_NAME := cm_inet_w
PRODUCT_BRAND := intel
PRODUCT_MODEL := V80 PLUS
PRODUCT_MANUFACTURER := ONDA

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="inet_w-userdebug 5.1 LMY47I eng.inet-soft21.20170308.115735 release-keys" \
    BUILD_FINGERPRINT="intel/inet_w/inet_w:5.1/LMY47I/inet-soft2103081200:userdebug/release-keys"
