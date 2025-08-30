// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xkrnl_bp.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKrnl_bp_CfgInitialize(XKrnl_bp *InstancePtr, XKrnl_bp_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKrnl_bp_Start(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKrnl_bp_IsDone(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKrnl_bp_IsIdle(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKrnl_bp_IsReady(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKrnl_bp_Continue(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XKrnl_bp_EnableAutoRestart(XKrnl_bp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKrnl_bp_DisableAutoRestart(XKrnl_bp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_AP_CTRL, 0);
}

void XKrnl_bp_Set_mat_p(XKrnl_bp *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_MAT_P_DATA, (u32)(Data));
    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_MAT_P_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_bp_Get_mat_p(XKrnl_bp *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_MAT_P_DATA);
    Data += (u64)XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_MAT_P_DATA + 4) << 32;
    return Data;
}

void XKrnl_bp_Set_vec_q(XKrnl_bp *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_VEC_Q_DATA, (u32)(Data));
    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_VEC_Q_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_bp_Get_vec_q(XKrnl_bp *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_VEC_Q_DATA);
    Data += (u64)XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_VEC_Q_DATA + 4) << 32;
    return Data;
}

void XKrnl_bp_Set_out_r(XKrnl_bp *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_bp_Get_out_r(XKrnl_bp *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XKrnl_bp_Set_rho(XKrnl_bp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_RHO_DATA, Data);
}

u32 XKrnl_bp_Get_rho(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_RHO_DATA);
    return Data;
}

void XKrnl_bp_Set_alpha(XKrnl_bp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_ALPHA_DATA, Data);
}

u32 XKrnl_bp_Get_alpha(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_ALPHA_DATA);
    return Data;
}

void XKrnl_bp_Set_N(XKrnl_bp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_N_DATA, Data);
}

u32 XKrnl_bp_Get_N(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_N_DATA);
    return Data;
}

void XKrnl_bp_Set_chunk_size(XKrnl_bp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_CHUNK_SIZE_DATA, Data);
}

u32 XKrnl_bp_Get_chunk_size(XKrnl_bp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_CHUNK_SIZE_DATA);
    return Data;
}

void XKrnl_bp_InterruptGlobalEnable(XKrnl_bp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_GIE, 1);
}

void XKrnl_bp_InterruptGlobalDisable(XKrnl_bp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_GIE, 0);
}

void XKrnl_bp_InterruptEnable(XKrnl_bp *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_IER);
    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_IER, Register | Mask);
}

void XKrnl_bp_InterruptDisable(XKrnl_bp *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_IER);
    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKrnl_bp_InterruptClear(XKrnl_bp *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_bp_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_ISR, Mask);
}

u32 XKrnl_bp_InterruptGetEnabled(XKrnl_bp *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_IER);
}

u32 XKrnl_bp_InterruptGetStatus(XKrnl_bp *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKrnl_bp_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_BP_CONTROL_ADDR_ISR);
}

