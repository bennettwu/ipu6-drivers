/* SPDX-License-Identifier: GPL-2.0 */
/* Copyright (C) 2014 - 2021 Intel Corporation */

#ifndef __LT6911UXC_H
#define __LT6911UXC_H

#include <linux/types.h>

struct lt6911uxc_platform_data {
	unsigned int port;
	unsigned int lanes;
	uint32_t i2c_slave_address;
	int irq_pin;
	unsigned int irq_pin_flags;
	char irq_pin_name[16];
	char suffix;
	int gpios[4];
};

#endif /* __LT6911UXC_H  */
