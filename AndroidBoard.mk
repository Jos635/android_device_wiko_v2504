LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/wiko/v2504an/AndroidBoardVendor.mk

ifeq ($(TARGET_DEVICE),v2504an)
	include $(call all-makefiles-under,$(LOCAL_PATH))
endif
