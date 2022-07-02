/*
 * rtk_cpu.h
 *
 * Copyright (c) 2017 Realtek Semiconductor Corp.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 and
 * only version 2 as published by the Free Software Foundation.
 *
 */

#ifndef _RTD129x_CPU_H_INCLUDED_
#define _RTD129x_CPU_H_INCLUDED_

#include <soc/realtek/rtk_chip.h>

#define RTK1295_CPU_ID 0x00000000
#define RTK1294_CPU_ID 0x00000001
#define RTK1296_CPU_ID 0x00000002

static inline int get_rtd129x_cpu_id(void) {
	if (get_rtd_chip_id() == CHIP_ID_RTD1296) {
		return RTK1296_CPU_ID;
	}
	return RTK1295_CPU_ID;
}

#define RTD129x_CHIP_REVISION_A00 (0x00000000)
#define RTD129x_CHIP_REVISION_A01 (0x00010000)
#define RTD129x_CHIP_REVISION_B00 (0x00020000)
#define RTD129x_CHIP_REVISION_B01 (0x00030000)

static inline int get_rtd129x_cpu_revision(void) {
	switch (get_rtd_chip_revision()) {
		case RTD_CHIP_A00:
			return RTD129x_CHIP_REVISION_A00;
		case RTD_CHIP_A01:
			return RTD129x_CHIP_REVISION_A01;
		case RTD_CHIP_B00:
			return RTD129x_CHIP_REVISION_B00;
		default:
			return RTD129x_CHIP_REVISION_B01;
	}
}

#endif //_RTD129x_CPU_H_INCLUDED_
