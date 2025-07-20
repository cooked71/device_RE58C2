LOCAL_PATH := $(call my-dir)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/init.recovery.common.rc:recovery/root/init.recovery.common.rc \
    $(LOCAL_PATH)/root/init.recovery.logd.rc:recovery/root/init.recovery.logd.rc \
    $(LOCAL_PATH)/root/init.recovery.RE58C2.rc:recovery/root/init.recovery.RE58C2.rc \
    $(LOCAL_PATH)/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(LOCAL_PATH)/root/servicemanager.recovery.rc:recovery/root/servicemanager.recovery.rc \
    $(LOCAL_PATH)/root/snapuserd.rc:recovery/root/snapuserd.rc \
    $(LOCAL_PATH)/root/ueventd.module.rc:recovery/root/ueventd.module.rc \
    $(LOCAL_PATH)/root/ueventd.rc:recovery/root/ueventd.rc \
    $(LOCAL_PATH)/root/ueventd.RE58C2.rc:recovery/root/ueventd.RE58C2.rc \
    $(LOCAL_PATH)/root/ueventd.RMX3624.rc:recovery/root/ueventd.RMX3624.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_1h10_go.rc:recovery/root/ueventd.ums9230_1h10_go.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_1h10.rc:recovery/root/ueventd.ums9230_1h10.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_4h10_go.rc:recovery/root/ueventd.ums9230_4h10_go.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_4h10.rc:recovery/root/ueventd.ums9230_4h10.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_6h10.rc:recovery/root/ueventd.ums9230_6h10.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_7h10.rc:recovery/root/ueventd.ums9230_7h10.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_haps.rc:recovery/root/ueventd.ums9230_haps.rc \
    $(LOCAL_PATH)/root/ueventd.ums9230_hulk.rc:recovery/root/ueventd.ums9230_hulk.rc \
    $(LOCAL_PATH)/root/sbin/adbd:recovery/root/sbin/adbd \
    $(LOCAL_PATH)/root/sbin/fastbootd:recovery/root/sbin/fastbootd \
    $(LOCAL_PATH)/root/system/etc/recovery.fstab:recovery/root/system/etc/recovery.fstab
