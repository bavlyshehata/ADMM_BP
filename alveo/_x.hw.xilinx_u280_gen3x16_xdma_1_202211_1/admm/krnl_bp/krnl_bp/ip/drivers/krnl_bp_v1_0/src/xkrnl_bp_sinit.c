// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xkrnl_bp.h"

extern XKrnl_bp_Config XKrnl_bp_ConfigTable[];

#ifdef SDT
XKrnl_bp_Config *XKrnl_bp_LookupConfig(UINTPTR BaseAddress) {
	XKrnl_bp_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XKrnl_bp_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XKrnl_bp_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XKrnl_bp_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKrnl_bp_Initialize(XKrnl_bp *InstancePtr, UINTPTR BaseAddress) {
	XKrnl_bp_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKrnl_bp_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKrnl_bp_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
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

#endif

