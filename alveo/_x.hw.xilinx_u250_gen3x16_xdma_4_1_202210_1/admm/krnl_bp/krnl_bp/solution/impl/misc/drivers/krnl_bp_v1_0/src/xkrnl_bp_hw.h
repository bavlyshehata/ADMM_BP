// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of mat_p
//        bit 31~0 - mat_p[31:0] (Read/Write)
// 0x14 : Data signal of mat_p
//        bit 31~0 - mat_p[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of vec_q
//        bit 31~0 - vec_q[31:0] (Read/Write)
// 0x20 : Data signal of vec_q
//        bit 31~0 - vec_q[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x2c : Data signal of out_r
//        bit 31~0 - out_r[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of rho
//        bit 31~0 - rho[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of alpha
//        bit 31~0 - alpha[31:0] (Read/Write)
// 0x40 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKRNL_BP_CONTROL_ADDR_AP_CTRL    0x00
#define XKRNL_BP_CONTROL_ADDR_GIE        0x04
#define XKRNL_BP_CONTROL_ADDR_IER        0x08
#define XKRNL_BP_CONTROL_ADDR_ISR        0x0c
#define XKRNL_BP_CONTROL_ADDR_MAT_P_DATA 0x10
#define XKRNL_BP_CONTROL_BITS_MAT_P_DATA 64
#define XKRNL_BP_CONTROL_ADDR_VEC_Q_DATA 0x1c
#define XKRNL_BP_CONTROL_BITS_VEC_Q_DATA 64
#define XKRNL_BP_CONTROL_ADDR_OUT_R_DATA 0x28
#define XKRNL_BP_CONTROL_BITS_OUT_R_DATA 64
#define XKRNL_BP_CONTROL_ADDR_RHO_DATA   0x34
#define XKRNL_BP_CONTROL_BITS_RHO_DATA   32
#define XKRNL_BP_CONTROL_ADDR_ALPHA_DATA 0x3c
#define XKRNL_BP_CONTROL_BITS_ALPHA_DATA 32

