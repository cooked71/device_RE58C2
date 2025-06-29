#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := device/realme/RE58C2/compatibility_matrix.7.xml
PRODUCT_COMPATIBILITY_MATRIX_FILE := device/realme/RE58C2/compatibility_matrix.xml



#kernel
PRODUCT_ENABLE_UFFD_GC := false

PRODUCT_COPY_FILES += \
    device/realme/RE58C2/compatibility_matrix.7.xml:system/compatibility_matrix.7.xml


PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 33

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd



# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \
    create_splloader_dual_slot_byname_path.sh \
    engineer_vendor_shell.sh \
    idlefast.sh \
    init.insmod.sh \
    zramwb.sh \


PRODUCT_PACKAGES += \
    manifest.vendor.nxpnfclegacy.xml \
    manifest.vendor.nxp.eventprocessor.xml \
    manifest.vendor.sprd.hardware.commondcs.xml \
    manifest.vendor.oppo.engnative.engineer.xml
    

PRODUCT_PACKAGES += \
    vendor.oppo.engnative.engineer@1.0-service \
    vendor.sprd.hardware.commondcs@1.0-service \
    vendor.nxp.eventprocessor@1.0 \
    vendor.nxp.nxpnfclegacy@1.0 \
    vendor.oppo.engnative.engineer@1.0 \
    vendor.sprd.hardware.commondcs@1.0 \
    librpmbclient \
    libteeproduction \
    libsecrpmbdata

  


PRODUCT_PACKAGES += \
    fstab.ums9230_4h10 \
    init.RMX3624.rc \
    init.RMX3624.usb.rc \
    init.cali.rc \
    init.module.rc \
    init.module.usb.rc \
    init.ram.gms.rc \
    init.ram.native.rc \
    init.ram.rc \
    init.storage.rc \
    init.ums9230_1h10.rc \
    init.ums9230_1h10.usb.rc \
    init.ums9230_1h10_go.rc \
    init.ums9230_1h10_go.usb.rc \
    init.ums9230_4h10.rc \
    init.ums9230_4h10.usb.rc \
    init.ums9230_4h10_go.rc \
    init.ums9230_4h10_go.usb.rc \
    init.ums9230_6h10.rc \
    init.ums9230_6h10.usb.rc \
    init.ums9230_7h10.rc \
    init.ums9230_7h10.usb.rc \
    init.ums9230_haps.rc \
    init.ums9230_haps.usb.rc \
    init.ums9230_hulk.rc \
    init.ums9230_hulk.usb.rc \
    init.ums9230_nico.rc \
    init.ums9230_nico.usb.rc \
    init.ums9230_zebu.rc \
    init.ums9230_zebu.usb.rc \
    init.zramwb.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.ums9230_4h10:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.ums9230_4h10

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/realme/RE58C2/RE58C2-vendor.mk)
