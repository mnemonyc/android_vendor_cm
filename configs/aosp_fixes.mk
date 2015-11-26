# Generic product
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    persist.sys.usb.config=mtp,adb \
    ro.build.selinux=1 \
    ro.adb.secure=1 \
    ro.layers.noIcon=noIcon
    

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

#Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
#TARGET_USES_BLOCK_BASED_OTA := false

# Latin IME lib - gesture typing
ifneq ($(filter hazy_hammerhead hazy_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    #vendor/hazy/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif

# APN list
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Media Effects
PRODUCT_COPY_FILES +=  \
    vendor/hazy/prebuilt/common/vendor/media/audio:system/vendor/media/audio \
    vendor/hazy/prebuilt/common/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/hazy/prebuilt/common/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
