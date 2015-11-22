PRODUCT_BRAND ?= hazy

# Add hazy bootanimation based on device resolution
ifneq ($(filter hazy_titan hazy_i9300 hazy_i9100 hazy_mako hazy_maguro hazy_p3100 hazy_manta hazy_d802 full_toroplus full_grouper full_tilapia,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/hazy/prebuilt/bootanimation/1280x720.zip:system/media/bootanimation.zip
endif
ifneq ($(filter hazy_find7 hazy_thea hazy_tomato hazy_n7100 hazy_armani hazy_shamu hazy_hammerhead hazy_bacon hazy_falcon hazy_m8,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/hazy/prebuilt/bootanimation/1920x1080.zip:system/media/bootanimation.zip
endif
 ifneq ($(filter hazy_deb hazy_flo,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/hazy/prebuilt/bootanimation/1920x1200.zip:system/media/bootanimation.zip
 endif
# ifeq (hazy_manta,$(TARGET_PRODUCT))
#    PRODUCT_COPY_FILES += \
#        vendor/hazy/prebuilt/bootanimation/2560x1600.zip:system/media/bootanimation.zip
# endif

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=0 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true \
    ro.build.selinux=1 \
    ro.error.receiver.system.apps=com.google.android.gms \
    drm.service.enabled=true \
    ro.layers.noIcon=noIcon


ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0
endif

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/hazy/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/hazy/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/hazy/prebuilt/common/etc/backup.conf:system/etc/backup.conf \
    vendor/hazy/prebuilt/common/bin/install-recovery.sh:system/bin/install-recovery.sh
endif

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/hazy/prebuilt/common/bin/sysinit:system/bin/sysinit

ifneq ($(TARGET_BUILD_VARIANT),user)
# userinit support
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit
endif

# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/etc/init.local.rc:root/init.hazy.rc

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/hazy/prebuilt/common/media/audio:system/media/audio \
    vendor/hazy/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/hazy/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Required packages
PRODUCT_PACKAGES += \
    Development

# Optional packages
PRODUCT_PACKAGES += \
    VoicePlus \
    Basic \
    libemoji \
    Terminal

# Custom packages
PRODUCT_PACKAGES += \
    Launcher3 \
    MusicFX \
    LockClock \

# Extra tools in Hazy
PRODUCT_PACKAGES += \
    libsepol \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    ntfsfix \
    ntfs-3g \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank \
    su
endif

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=0

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Versioning
-include vendor/hazy/configs/version.mk

# Add our overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/hazy/overlay/common

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.ringtone=Sedna.ogg

# Default notification
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.notification_sound=Salacia.ogg

# Additional packages
-include vendor/hazy/configs/packages.mk

# Add Hazy packages
PRODUCT_COPY_FILES += \
#    vendor/hazy/prebuilt/common/app/HManager.apk:system/app/HManager/HManager.apk \
    vendor/hazy/prebuilt/common/system/media:system/media

# apns-conf.xml
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

$(call prepend-product-if-exists, vendor/extra/product.mk)
