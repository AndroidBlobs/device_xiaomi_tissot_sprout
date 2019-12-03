# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from tissot_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := tissot_sprout
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_tissot_sprout
PRODUCT_MODEL := Mi A1

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := tissot_sprout
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="tissot-user 9 PKQ1.180917.001 V10.0.12.0.PDHMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/tissot/tissot_sprout:9/PKQ1.180917.001/V10.0.12.0.PDHMIXM:user/release-keys
