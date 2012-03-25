# Inherit AOSP device configuration.
$(call inherit-product, device/motorola/sholest/sholest.mk)

# Inherit common GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_sholest
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholest
PRODUCT_MODEL := Milestone XT720
PRODUCT_MANUFACTURER := Motorola

# Release name and versioning
PRODUCT_RELEASE_NAME := MilestoneXT720
PRODUCT_VERSION_DEVICE_SPECIFIC := .0
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_BUILD_PROP_OVERRIDES := \
    BUILD_ID=R.U.R.1920 \
    BUILD_DISPLAY_ID=R.U.R.1920 \
    PRODUCT_NAME=sholest \
    TARGET_DEVICE=sholest \
    PRODUCT_BRAND=motorola \
    USER=CyanogenModXT720

PRODUCT_SPECIFIC_DEFINES += \
    TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-umts_sholes.map

# Enable Windows Media
WITH_WINDOWS_MEDIA := true

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cyanogen/overlay/sholest

# Add the Torch app
PRODUCT_PACKAGES += \
    Torch
