# Inherit AOSP device configuration.
$(call inherit-product, device/motorola/sholest/sholest.mk)

# Inherit common GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_sholest
PRODUCT_MODEL := XT720
PRODUCT_MANUFACTURER := Motorola

# Release name and versioning
PRODUCT_RELEASE_NAME := MilestoneXT720
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_BUILD_PROP_OVERRIDES := \
PRODUCT_NAME=cyanogen_sholest \
TARGET_DEVICE=sholest \
PRODUCT_BRAND=MOTO \
USER=CyanogenModXT720

PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cyanogen/overlay/sholest

# Add the Torch app
PRODUCT_PACKAGES += \
    Torch

PRODUCT_BUILD_PROP_OVERRIDES += \

