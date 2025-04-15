// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKRNL_BP_H
#define XKRNL_BP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xkrnl_bp_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XKrnl_bp_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XKrnl_bp;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKrnl_bp_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKrnl_bp_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKrnl_bp_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKrnl_bp_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XKrnl_bp_Initialize(XKrnl_bp *InstancePtr, u16 DeviceId);
XKrnl_bp_Config* XKrnl_bp_LookupConfig(u16 DeviceId);
int XKrnl_bp_CfgInitialize(XKrnl_bp *InstancePtr, XKrnl_bp_Config *ConfigPtr);
#else
int XKrnl_bp_Initialize(XKrnl_bp *InstancePtr, const char* InstanceName);
int XKrnl_bp_Release(XKrnl_bp *InstancePtr);
#endif

void XKrnl_bp_Start(XKrnl_bp *InstancePtr);
u32 XKrnl_bp_IsDone(XKrnl_bp *InstancePtr);
u32 XKrnl_bp_IsIdle(XKrnl_bp *InstancePtr);
u32 XKrnl_bp_IsReady(XKrnl_bp *InstancePtr);
void XKrnl_bp_Continue(XKrnl_bp *InstancePtr);
void XKrnl_bp_EnableAutoRestart(XKrnl_bp *InstancePtr);
void XKrnl_bp_DisableAutoRestart(XKrnl_bp *InstancePtr);

void XKrnl_bp_Set_mat_p(XKrnl_bp *InstancePtr, u64 Data);
u64 XKrnl_bp_Get_mat_p(XKrnl_bp *InstancePtr);
void XKrnl_bp_Set_vec_q(XKrnl_bp *InstancePtr, u64 Data);
u64 XKrnl_bp_Get_vec_q(XKrnl_bp *InstancePtr);
void XKrnl_bp_Set_out_r(XKrnl_bp *InstancePtr, u64 Data);
u64 XKrnl_bp_Get_out_r(XKrnl_bp *InstancePtr);
void XKrnl_bp_Set_rho(XKrnl_bp *InstancePtr, u32 Data);
u32 XKrnl_bp_Get_rho(XKrnl_bp *InstancePtr);
void XKrnl_bp_Set_alpha(XKrnl_bp *InstancePtr, u32 Data);
u32 XKrnl_bp_Get_alpha(XKrnl_bp *InstancePtr);

void XKrnl_bp_InterruptGlobalEnable(XKrnl_bp *InstancePtr);
void XKrnl_bp_InterruptGlobalDisable(XKrnl_bp *InstancePtr);
void XKrnl_bp_InterruptEnable(XKrnl_bp *InstancePtr, u32 Mask);
void XKrnl_bp_InterruptDisable(XKrnl_bp *InstancePtr, u32 Mask);
void XKrnl_bp_InterruptClear(XKrnl_bp *InstancePtr, u32 Mask);
u32 XKrnl_bp_InterruptGetEnabled(XKrnl_bp *InstancePtr);
u32 XKrnl_bp_InterruptGetStatus(XKrnl_bp *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
