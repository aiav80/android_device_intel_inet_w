DEVICE_PATH := device/intel/inet_w

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/intel/inet_w/BoardConfigVendor.mk

# Platform
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := gmin
TARGET_BOARD_PLATFORM_GPU := intel_gen8
TARGET_BOOTLOADER_BOARD_NAME := inet_w

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI := x86
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi

# Kernel
TARGET_PREBUILT_KERNEL := device/intel/inet_w/kernel

BOARD_KERNEL_CMDLINE := loglevel=5 androidboot.hardware=inet_w firmware_class.path=/system/etc/firmware i915.fastboot=1 vga=current i915.modeset=1 drm.vblankoffdelay=1 enforcing=0 androidboot.selinux=permissive console=ttyS0,115200n8 bootboost=1 pm_suspend_debug=1 pstore.backend=ramoops
BOARD_KERNEL_BASE := 0x10008000
BOARD_KERNEL_PAGESIZE := 2048

# Binder
TARGET_USES_64_BIT_BINDER := true

# CPUset
ENABLE_CPUSETS := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_HAL_STATIC_LIBRARIES := libhealthd.intel

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_intel.so
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

# Houdini
BUILD_ARM_FOR_X86 := true

# Partition sizes (fix this up by examining /proc/mtd on a running device)
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01E00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01E00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6442450944
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x10000000
BOARD_FLASH_BLOCK_SIZE := 512

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_USE_EXT4 := true

#TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/twrp.fstab
#RECOVERY_VARIANT := twrp
#RECOVERY_SDCARD_ON_DATA := true
#TW_THEME := portrait_hdpi
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
#TW_INCLUDE_JPEG := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/intel/sepolicy \
    device/intel/inet_w/sepolicy \
    device/intel/inet_w/sepolicy/dollar_cove \
    device/intel/inet_w/sepolicy/intel_prop \
    device/intel/inet_w/sepolicy/sensorhub \
    device/intel/inet_w/sepolicy/telephony

BOARD_SEPOLICY_UNION += \
    adbd.te \
    atproxy.te \
    bcu_cpufreqrel.te \
    bluetooth.te \
    cg2k.te \
    coreu.te \
    cws_manu.te \
    device.te \
    drmserver.te \
    dumpstate.te \
    efiprop.te \
    fg_algo_cos.te \
    fg_algo_iface.te \
    file_contexts \
    file.te \
    genfs_contexts \
    gpsd.te \
    hdcpd.te \
    hostapd.te \
    init_shell.te \
    init.te \
    intel_prop.te \
    kernel.te \
    keymaster.te \
    keystore.te \
    mediaserver.te \
    mmgr.te \
    msync.te \
    mts.te \
    netd.te \
    nfc.te \
    nvm_server.te \
    platform_app.te \
    power_hal_helper.te \
    property_contexts \
    property.te \
    pstore-clean.te \
    radio.te \
    recovery.te \
    rild.te \
    sensorhubd.te \
    service_contexts \
    service_manager.te \
    service.te \
    shell.te \
    silentlake.te \
    surfaceflinger.te \
    system_app.te \
    system_server.te \
    te_macros \
    thermal_lite.te \
    thermal.te \
    ueventd.te \
    untrusted_app.te \
    userfastboot.te \
    vdc.te \
    vold.te \
    wlan_prov.te \
    wpa.te

# Thermal
ENABLE_ITUXD := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/etc/firmware/fw_bcm43438a0.bin"
WIFI_DRIVER_FW_PATH_AP := "/etc/firmware/fw_bcm43438a0_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/etc/firmware/fw_bcm43438a0_p2p.bin"

BOARD_HAS_NO_SELECT_BUTTON := true
