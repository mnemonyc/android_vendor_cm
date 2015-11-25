ifeq ($(TARGET_PRODUCT),hazy_angler)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0/MDB08M/2353240:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0 MDB08M 2353240 release-keys"
endif

ifeq ($(TARGET_PRODUCT),hazy_bullhead)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:6.0/MDB08M/2353240:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 6.0 MDB08M 2353240 release-keys"
endif

ifeq ($(TARGET_PRODUCT),hazy_hammerhead)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0/MRA58N/2324235:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0 MRA58N 2324235 release-keys"
endif

ifeq ($(TARGET_PRODUCT),hazy_mako)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:6.0/MRA58V/2324235:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 6.0 MRA58V 2324235 release-keys"
endif

ifeq ($(TARGET_PRODUCT),hazy_shamu)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0/MRA58R/2308909:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0 MRA58R 2308909 release-keys"
endif
