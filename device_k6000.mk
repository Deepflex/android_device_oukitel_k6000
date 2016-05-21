$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, vendor/oukitel/k6000/k6000-vendor-blobs.mk)

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_pref_CONFIG := xhdpi
DEVICE_PACKAGE_OVERLAYS += device/oukitel/k6000/overlay
TARGET_OTA_ASSERT_DEVICE := hct6735m_35gu_l1,k6000,OUKITEL

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/oukitel/k6000/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_libcurlPREBUILT_KERNEL)
endif


PRODUCT_PACKAGES += \
    libxlog

# init
PRODUCT_PACKAGES += \
    proj-dev-setup

# GPS
PRODUCT_PACKAGES += \
    libcurl \

PRODUCT_COPY_FILES += \
	device/oukitel/k6000/rootdir/init.mt6735.rc:root/init.mt6735.rc \
	device/oukitel/k6000/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/oukitel/k6000/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/oukitel/k6000/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	device/oukitel/k6000/rootdir/init.aee.rc:root/init.aee.rc \
	device/oukitel/k6000/rootdir/init.project.rc:root/init.project.rc \
	device/oukitel/k6000/rootdir/factory_init.rc:root/factory_init.rc \
	device/oukitel/k6000/rootdir/factory_init.project.rc:root/factory_init.project.rc \
	device/oukitel/k6000/rootdir/init.ssd_nomuser.rc:root/init.ssd_nomuser.rc \
	device/oukitel/k6000/rootdir/init.trace.rc:root/init.trace.rc \
	device/oukitel/k6000/rootdir/init.modem.rc:root/init.modem.rc \
    device/oukitel/k6000/recovery/root/fstab.mt6735:root/fstab.mt6735  \
	device/oukitel/k6000/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
	device/oukitel/k6000/rootdir/meta_init.rc:root/meta_init.rc \
	device/oukitel/k6000/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	device/oukitel/k6000/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	device/oukitel/k6000/rootdir/meta_init.modem.rc:root/factory_init.rc \
	device/oukitel/k6000/rootdir/meta_init.modem.rc:root/factory_init.project.rc \
	device/oukitel/k6000/rootdir/init.rc:root/init.rc \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    device/oukitel/k6000/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/oukitel/k6000/configs/audio_effects.conf:system/etc/audio_effects.conf \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    device/oukitel/k6000/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \
    device/oukitel/k6000/configs/ecc_list.xml:system/etc/ecc_list.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_PACKAGES += \
    Torch
	
# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Gralloc
PRODUCT_PACKAGES += \
   	libgralloc_extra

# Audio
PRODUCT_PACKAGES += \
    audio_policy.default \
    audio_policy.stub \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix \
    libbt-vendor \
    libtinyalsa

#Light    
PRODUCT_PACKAGES += \
      lights.mt6735m 

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libnl_2 \
    libtinyxml

PRODUCT_COPY_FILES += \
    device/oukitel/k6000/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
	device/oukitel/k6000/configs/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
	device/oukitel/k6000/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
	device/oukitel/k6000/configs/media_codecs.xml:system/etc/media_codecs.xml \
	device/oukitel/k6000/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/oukitel/k6000/configs/apns-conf.xml:system/etc/apns-conf.xml \
	device/oukitel/k6000/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	device/oukitel/k6000/configs/platform.xml:system/etc/permissions/platform.xml \
	device/oukitel/k6000/configs/audio_device.xml:system/etc/audio_device.xml \


$(call inherit-product, build/target/product/full.mk)

#PRODUCT_NAME := k6000
#PRODUCT_DEVICE := k6000

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp \
ro.mount.fs=EXT4 \
ro.persist.partition.support=no \
ro.cip.partition.support=no \
debug.hwui.render_dirty_regions=false \
ro.sf.lcd_density=320
