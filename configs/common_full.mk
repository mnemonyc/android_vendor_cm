# Inherit common Hazy stuff
$(call inherit-product, vendor/hazy/configs/common.mk)

# Optional packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    PhotoTable \
    SoundRecorder \
    SoundRecorder \
    PhotoPhase \
    VideoEditor

PRODUCT_PACKAGES += \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer

# Extra tools in Hazy
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar \
    curl
