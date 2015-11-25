# Include SiriusAOSP common configuration
include vendor/sirius/main.mk

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Setup device specific product configuration.
PRODUCT_NAME := sirius_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/sirius/prebuilt/bootanimation/shamu.zip:system/media/bootanimation.zip
