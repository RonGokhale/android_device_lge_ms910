USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/ms910/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/lge/ms910/include

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno220
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_NEON := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp -march=armv7-a
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp -march=armv7-a
TARGET_BOARD_PLATFORM_FPU := neon
BOARD_USES_ADRENO_200 := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true

TARGET_BOOTLOADER_BOARD_NAME := bryce

TARGET_DISABLE_ARM_PIE := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

BOARD_KERNEL_CMDLINE := console=ttyMSM1 androidboot.hardware=bryce
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_PAGE_SIZE := 2048

TARGET_KERNEL_CONFIG := plague_defconfig 
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

## Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1031798784
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/ms910/recovery/recovery_kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/ms910/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_SDCARD_INTERNAL := true

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH  := "/system/etc/wl/rtecdc_apsta.bin"
WIFI_DRIVER_MODULE_ARG  := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WIFI_DRIVER_MODULE_NAME := "wireless"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_HAS_LGE_SOFTAP := false

BOARD_CDMA_NETWORK := true

# Audio & Bluetooth
#TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
BOARD_USES_ALSA_AUDIO := true
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

WEBCORE_INPAGE_VIDEO := true
TARGET_HAVE_TSLIB := false

# Camera
# trying hal COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_NEEDS_MEMORYHEAPPMEM := true

TARGET_DISABLE_ARM_PIE := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := bryce
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_USE_LEGACY_TOUCHSCREEN := true

#Graphics
USE_OPENGL_RENDERER := true
#TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128
BOARD_USE_QCOM_PMEM := true
TARGET_HARDWARE_3D := true
BOARD_USES_GENLOCK := true
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD -DQCOM_ICS_COMPAT -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED -DLEGACY_QCOM_VOICE -DPOLL_CALL_STATE -DUSE_QMI
TARGET_NO_HW_VSYNC := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_EGL_CFG := device/lge/ms910/prebuilt/lib/egl/egl.cfg

BOARD_HAS_LARGE_FILESYSTEM := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

#TARGET_USES_ION := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Camera
BOARD_CAMERA_USE_GETBUFFERINFO := true

# Enable JIT
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true
TARGET_FORCE_CPU_UPLOAD := true

# FM Radio
BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

TARGET_OTA_ASSERT_DEVICE := ms910,MS910,bryce,lge_bryce

## TWRP
DEVICE_RESOLUTION := 480x800
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_USB_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_NO_REBOOT_BOOTLOADER := true

# Insecure boot
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.config.sec_storage=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage,adb
ADDITIONAL_DEFAULT_PROPERTIES += EXTERNAL_STORAGE_MOUNT=/mnt/sdcard
ADDITIONAL_DEFAULT_PROPERTIES += EXTERNAL_ADD_STORAGE_MOUNT=/mnt/sdcard/_ExternalSD

