# Inherit AOSP device configuration for andypadpro.
$(call inherit-product, device/andypad/andypadpro/full_andypadpro.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff -- not needed??
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dictionaries

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_andypadpro
PRODUCT_BRAND := andypad
PRODUCT_DEVICE := andypadpro
PRODUCT_MODEL := andypadpro
PRODUCT_MANUFACTURER := andypad
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=andypadpro BUILD_ID=GRK39F BUILD_FINGERPRINT=google/soju/crespo:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.6 GRK39F 189904 release-keys" BUILD_NUMBER=189904

# Extra andypadpro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/andypad/andypadpro/overlay

# Release name and versioning
PRODUCT_RELEASE_NAME := andypadpro
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy andypadpro specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
