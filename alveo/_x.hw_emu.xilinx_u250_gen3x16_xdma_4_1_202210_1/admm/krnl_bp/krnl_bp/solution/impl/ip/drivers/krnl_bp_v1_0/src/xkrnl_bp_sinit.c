// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkrnl_bp.h"

extern XKrnl_bp_Config XKrnl_bp_ConfigTable[];

XKrnl_bp_Config *XKrnl_bp_LookupConfig(u16 DeviceId) {
	XKrnl_bp_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKRNL_BP_NUM_INSTANCES; Index++) {
		if (XKrnl_bp_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKrnl_bp_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKrnl_bp_Initialize(XKrnl_bp *InstancePtr, u16 DeviceId) {
	XKrnl_bp_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKrnl_bp_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKrnl_bp_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

