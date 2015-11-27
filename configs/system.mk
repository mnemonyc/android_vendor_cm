# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/hazy/overlay/common

# Init.d script support
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/common/addon.d/50-hazy.sh:system/addon.d/50-hazy.sh \
    vendor/hazy/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/hazy/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/hazy/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/hazy/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

