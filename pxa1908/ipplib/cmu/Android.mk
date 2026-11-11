LOCAL_PATH := $(call my-dir)

MARVELL_IPP_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)
LOCAL_CFLAGS += -Wno-error  # Pie: legacy Marvell code

include $(MARVELL_IPP_TOP)/lib/Android.mk
