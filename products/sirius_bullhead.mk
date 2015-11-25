# Include SiriusAOSP common configuration
include vendor/sirius/main.mk

# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Setup device specific product configuration.
PRODUCT_NAME := sirius_bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/sirius/prebuilt/bootanimation/bullhead.zip:system/media/bootanimation.zip
