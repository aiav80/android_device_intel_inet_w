LOCAL_PATH := $(call my-dir)

ifneq ($(filter inet_w,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

# Hack for prebuilt kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr/include)
endif
