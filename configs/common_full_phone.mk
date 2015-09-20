# Inherit common CM stuff
$(call inherit-product, vendor/hazy/configs/common_full.mk)

# Required Hazy packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Hazy LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/hazy/overlay/dictionaries

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Salacia.ogg \
    ro.config.ringtone=Sedna.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/hazy/prebuilt/bootanimation/1920x1080.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/hazy/configs/telephony.mk)
