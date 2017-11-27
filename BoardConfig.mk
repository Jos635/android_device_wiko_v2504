USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/wiko/v2504an/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6580
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

TARGET_LDPRELOAD := libxlog.so

TARGET_BOOTLOADER_BOARD_NAME := mt6580


BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 \
	androidboot.selinux=permissive
BOARD_KERNEL_BASE    := 0x80000000
BOARD_RAMDISK_OFFSET :=  0x4000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x4000000 --kernel_offset 0x00008000 --tags_offset 0x0e000000 --board SUNNY

# fix this up by examining /proc/mtd on a running device
# TODO: Do these really need to be decimal?
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1303412736
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/wiko/v2504an/prebuilt/kernel

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_INITRC := device/wiko/v2504/recovery/root/init.rc

BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP Configuration
TARGET_RECOVERY_FSTAB := device/wiko/v2504an/twrp.fstab
# RECOVERY_SDCARD_ON_DATA := true
# TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc/7000000.ssusb/7000000.dwc3/gadget/lun0/file"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TWRP_EVENT_LOGGING := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_IGNORE_MAJOR_AXIS_0 := true
TW_THEME := portrait_hdpi
