LOCAL_PATH := $(call my-dir)

PRODUCT_COPY_FILES += \
   PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/init.recovery.common.rc:init.recovery.common.rc \
    $(LOCAL_PATH)/root/init.recovery.logd.rc:init.recovery.logd.rc \
    $(LOCAL_PATH)/root/init.recovery.RE58C2.rc:init.recovery.RE58C2.rc \
    $(LOCAL_PATH)/root/init.recovery.usb.rc:init.recovery.usb.rc \
    $(LOCAL_PATH)/root/servicemanager.recovery.rc:servicemanager.recovery.rc \
    $(LOCAL_PATH)/root/snapuserd.rc:snapuserd.rc \
    $(LOCAL_PATH)/root/ueventd.module.rc:ueventd.module.rc \
    $(LOCAL_PATH)/root/ueventd.rc:ueventd.rc \
    $(LOCAL_PATH)/root/ueventd.RE58C2.rc:ueventd.RE58C2.rc \
    $(LOCAL_PATH)/root/ueventd.RMX3624.rc:ueventd.RMX3624.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_1h10_go.rc:ueventd.ums9230_1h10_go.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_1h10.rc:ueventd.ums9230_1h10.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_4h10_go.rc:ueventd.ums9230_4h10_go.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_4h10.rc:ueventd.ums9230_4h10.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_6h10.rc:ueventd.ums9230_6h10.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_7h10.rc:ueventd.ums9230_7h10.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_haps.rc:ueventd.ums9230_haps.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_hulk.rc:ueventd.ums9230_hulk.rc \
    $(LOCAL_PATH)/root/sbin/adbd:sbin/adbd \
    $(LOCAL_PATH)/root/sbin/fastbootd:sbin/fastbootd \
    $(LOCAL_PATH)/root/system/etc/recovery.fstab:system/etc/recovery.fstab
