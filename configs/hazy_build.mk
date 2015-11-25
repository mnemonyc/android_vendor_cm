# Additional packages
PRODUCT_PACKAGES += \
    Basic \
    Development \
    LatinIME

# Additional apps
PRODUCT_PACKAGES += \
    audio_effects.conf \
    Music \
    MusicFX

PRODUCT_PACKAGES += \
    CellBroadcastReceiver

# Additional tools
PRODUCT_PACKAGES += \
    bash \
    e2fsck \
    fsck.exfat \
    htop \
    lsof \
    mke2fs \
    mkfs.exfat \
    mount.exfat \
    nano \
    openvpn \
    powertop \
    tune2fs \
    vim \
    ntfsfix \
    ntfs-3g \
    mkntfs

# Extra packages
PRODUCT_PACKAGES += \
    Busybox \
    Launcher3 \
    Stk

# Busybox
PRODUCT_PACKAGES += \
    Busybox

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/hazy/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
	
#Hazy File Manager
PRODUCT_COPY_FILES +=  \
    vendor/hazy/prebuilt/common/app/HManager.apk:system/app/HManager/HManager.apk
   
