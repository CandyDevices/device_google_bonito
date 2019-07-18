# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Candy stuff.
$(call inherit-product, vendor/candy/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := candy_bonito
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bonito \
    PRIVATE_BUILD_DESC="bonito-user 9 PQ3B.190705.003 5622519 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:9/PQ3B.190705.003/5622519:user/release-keys

# Audio XMLs
# PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
