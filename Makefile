# SPDX-License-Identifier: GPL-2.0
# Copyright (c) 2021 Intel Corporation.

export EXTERNAL_BUILD = 1

export CONFIG_VIDEO_INTEL_IPU6 = m
export CONFIG_IPU_ISYS_BRIDGE = y
export CONFIG_INTEL_SKL_INT3472 = m
obj-y += drivers/media/pci/intel/

export CONFIG_VIDEO_HM11B1 = m
export CONFIG_VIDEO_OV01A1S = m
export CONFIG_VIDEO_OV01A10 = m
export CONFIG_VIDEO_OV02C10 = m
export CONFIG_VIDEO_HM2170 = m
export CONFIG_POWER_CTRL_LOGIC = n
export CONFIG_VIDEO_OV8856 = m
export CONFIG_VIDEO_OV13858_INTEL = m
obj-y += drivers/media/i2c/

KERNEL_SRC := /lib/modules/$(shell uname -r)/build
MODSRC := $(shell pwd)
ccflags-y += -I$(MODSRC)/include/

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(MODSRC) modules
modules_install:
	$(MAKE) INSTALL_MOD_DIR=/extra -C $(KERNEL_SRC) M=$(MODSRC) modules_install
clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(MODSRC) clean
