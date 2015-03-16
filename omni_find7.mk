$(call inherit-product, device/oppo/find7/full_find7.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oppo/find7/find7.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_find7
PRODUCT_DEVICE := find7
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := FIND7
PRODUCT_MANUFACTURER := OPPO

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_PRODUCT=FIND7 \
    TARGET_DEVICE=FIND7 \
    BUILD_FINGERPRINT="4.3/JLS36C/1390465867:user/release-keys" \
    PRIVATE_BUILD_DESC="msm8974-user 4.3 JLS36C eng.root.20140510.152835 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Inherit from proprietary blobs
$(call inherit-product-if-exists, vendor/oppo/find7a/find7a-vendor.mk)
