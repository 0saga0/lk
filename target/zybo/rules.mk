LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

PLATFORM := zynq

# set the system base to sram
ZYNQ_USE_SRAM := 1

GLOBAL_INCLUDES += \
	$(LOCAL_DIR)/include

GLOBAL_DEFINES += \
	TIMER_CLOCK_FREQ=325000000

MODULE_SRCS += \
	$(LOCAL_DIR)/target.c \
	$(LOCAL_DIR)/init.c

include make/module.mk