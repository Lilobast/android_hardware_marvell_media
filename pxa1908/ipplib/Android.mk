LOCAL_PATH := $(call my-dir)

MARVELL_IPP_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)
LOCAL_CFLAGS += -Wno-error  # Pie: legacy Marvell code

include $(MARVELL_IPP_TOP)/lib/Android.mk
include $(MARVELL_IPP_TOP)/example/misc/src/Android.mk
include $(MARVELL_IPP_TOP)/openmax/Android.mk
ifeq ($(ENABLE_MARVELL_DRMPLAY),true)
include $(MARVELL_IPP_TOP)/openmax/drmplaysink/Android.mk
endif
include $(MARVELL_IPP_TOP)/cmu/Android.mk

