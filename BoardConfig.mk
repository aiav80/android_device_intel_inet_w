USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/intel/inet_w/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := inet_w

BOARD_KERNEL_CMDLINE := loglevel=5 androidboot.hardware=inet_w firmware_class.path=/system/etc/firmware i915.fastboot=1 memmap=4M$0x5c400000 vga=current i915.modeset=1 drm.vblankoffdelay=1 enforcing=0 androidboot.selinux=permissive console=ttyS0,115200n8 bootboost=1 pm_suspend_debug=1 pstore.backend=ramoops
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/intel/inet_w/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
