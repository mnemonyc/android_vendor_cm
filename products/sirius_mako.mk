# Include SiriusAOSP common configuration
include vendor/sirius/main.mk


# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/mako/aosp_mako.mk)

# Setup device specific product configuration.
PRODUCT_NAME := sirius_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/sirius/prebuilt/bootanimation/hammerhead.zip:system/media/bootanimation.zip
