set moduleName krnl_bp_Pipeline_VITIS_LOOP_648_9
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {krnl_bp_Pipeline_VITIS_LOOP_648_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ chunk int 31 regular  }
	{ x_hat_15 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_14 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_13 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_12 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_11 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_10 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_9 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_8 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_7 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_6 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_5 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_4 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_3 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_2 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat_1 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_hat float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_1 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_2 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_3 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_4 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_5 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_6 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_7 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_8 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_9 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_10 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_11 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_12 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_13 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_14 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_15 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ alpha float 32 regular  }
	{ z_old float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_1 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_2 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_3 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_4 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_5 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_6 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_7 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_8 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_9 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_10 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_11 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_12 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_13 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_14 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ z_old_15 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ sub float 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "chunk", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_hat", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "alpha", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_old_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sub", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 178
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ chunk sc_in sc_lv 31 signal 0 } 
	{ x_hat_15_address0 sc_out sc_lv 3 signal 1 } 
	{ x_hat_15_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_hat_15_we0 sc_out sc_logic 1 signal 1 } 
	{ x_hat_15_d0 sc_out sc_lv 32 signal 1 } 
	{ x_hat_14_address0 sc_out sc_lv 3 signal 2 } 
	{ x_hat_14_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_hat_14_we0 sc_out sc_logic 1 signal 2 } 
	{ x_hat_14_d0 sc_out sc_lv 32 signal 2 } 
	{ x_hat_13_address0 sc_out sc_lv 3 signal 3 } 
	{ x_hat_13_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_hat_13_we0 sc_out sc_logic 1 signal 3 } 
	{ x_hat_13_d0 sc_out sc_lv 32 signal 3 } 
	{ x_hat_12_address0 sc_out sc_lv 3 signal 4 } 
	{ x_hat_12_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_hat_12_we0 sc_out sc_logic 1 signal 4 } 
	{ x_hat_12_d0 sc_out sc_lv 32 signal 4 } 
	{ x_hat_11_address0 sc_out sc_lv 3 signal 5 } 
	{ x_hat_11_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_hat_11_we0 sc_out sc_logic 1 signal 5 } 
	{ x_hat_11_d0 sc_out sc_lv 32 signal 5 } 
	{ x_hat_10_address0 sc_out sc_lv 3 signal 6 } 
	{ x_hat_10_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_hat_10_we0 sc_out sc_logic 1 signal 6 } 
	{ x_hat_10_d0 sc_out sc_lv 32 signal 6 } 
	{ x_hat_9_address0 sc_out sc_lv 3 signal 7 } 
	{ x_hat_9_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_hat_9_we0 sc_out sc_logic 1 signal 7 } 
	{ x_hat_9_d0 sc_out sc_lv 32 signal 7 } 
	{ x_hat_8_address0 sc_out sc_lv 3 signal 8 } 
	{ x_hat_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_hat_8_we0 sc_out sc_logic 1 signal 8 } 
	{ x_hat_8_d0 sc_out sc_lv 32 signal 8 } 
	{ x_hat_7_address0 sc_out sc_lv 3 signal 9 } 
	{ x_hat_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_hat_7_we0 sc_out sc_logic 1 signal 9 } 
	{ x_hat_7_d0 sc_out sc_lv 32 signal 9 } 
	{ x_hat_6_address0 sc_out sc_lv 3 signal 10 } 
	{ x_hat_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_hat_6_we0 sc_out sc_logic 1 signal 10 } 
	{ x_hat_6_d0 sc_out sc_lv 32 signal 10 } 
	{ x_hat_5_address0 sc_out sc_lv 3 signal 11 } 
	{ x_hat_5_ce0 sc_out sc_logic 1 signal 11 } 
	{ x_hat_5_we0 sc_out sc_logic 1 signal 11 } 
	{ x_hat_5_d0 sc_out sc_lv 32 signal 11 } 
	{ x_hat_4_address0 sc_out sc_lv 3 signal 12 } 
	{ x_hat_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ x_hat_4_we0 sc_out sc_logic 1 signal 12 } 
	{ x_hat_4_d0 sc_out sc_lv 32 signal 12 } 
	{ x_hat_3_address0 sc_out sc_lv 3 signal 13 } 
	{ x_hat_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ x_hat_3_we0 sc_out sc_logic 1 signal 13 } 
	{ x_hat_3_d0 sc_out sc_lv 32 signal 13 } 
	{ x_hat_2_address0 sc_out sc_lv 3 signal 14 } 
	{ x_hat_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ x_hat_2_we0 sc_out sc_logic 1 signal 14 } 
	{ x_hat_2_d0 sc_out sc_lv 32 signal 14 } 
	{ x_hat_1_address0 sc_out sc_lv 3 signal 15 } 
	{ x_hat_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ x_hat_1_we0 sc_out sc_logic 1 signal 15 } 
	{ x_hat_1_d0 sc_out sc_lv 32 signal 15 } 
	{ x_hat_address0 sc_out sc_lv 3 signal 16 } 
	{ x_hat_ce0 sc_out sc_logic 1 signal 16 } 
	{ x_hat_we0 sc_out sc_logic 1 signal 16 } 
	{ x_hat_d0 sc_out sc_lv 32 signal 16 } 
	{ x_address0 sc_out sc_lv 3 signal 17 } 
	{ x_ce0 sc_out sc_logic 1 signal 17 } 
	{ x_q0 sc_in sc_lv 32 signal 17 } 
	{ x_1_address0 sc_out sc_lv 3 signal 18 } 
	{ x_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ x_1_q0 sc_in sc_lv 32 signal 18 } 
	{ x_2_address0 sc_out sc_lv 3 signal 19 } 
	{ x_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ x_2_q0 sc_in sc_lv 32 signal 19 } 
	{ x_3_address0 sc_out sc_lv 3 signal 20 } 
	{ x_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ x_3_q0 sc_in sc_lv 32 signal 20 } 
	{ x_4_address0 sc_out sc_lv 3 signal 21 } 
	{ x_4_ce0 sc_out sc_logic 1 signal 21 } 
	{ x_4_q0 sc_in sc_lv 32 signal 21 } 
	{ x_5_address0 sc_out sc_lv 3 signal 22 } 
	{ x_5_ce0 sc_out sc_logic 1 signal 22 } 
	{ x_5_q0 sc_in sc_lv 32 signal 22 } 
	{ x_6_address0 sc_out sc_lv 3 signal 23 } 
	{ x_6_ce0 sc_out sc_logic 1 signal 23 } 
	{ x_6_q0 sc_in sc_lv 32 signal 23 } 
	{ x_7_address0 sc_out sc_lv 3 signal 24 } 
	{ x_7_ce0 sc_out sc_logic 1 signal 24 } 
	{ x_7_q0 sc_in sc_lv 32 signal 24 } 
	{ x_8_address0 sc_out sc_lv 3 signal 25 } 
	{ x_8_ce0 sc_out sc_logic 1 signal 25 } 
	{ x_8_q0 sc_in sc_lv 32 signal 25 } 
	{ x_9_address0 sc_out sc_lv 3 signal 26 } 
	{ x_9_ce0 sc_out sc_logic 1 signal 26 } 
	{ x_9_q0 sc_in sc_lv 32 signal 26 } 
	{ x_10_address0 sc_out sc_lv 3 signal 27 } 
	{ x_10_ce0 sc_out sc_logic 1 signal 27 } 
	{ x_10_q0 sc_in sc_lv 32 signal 27 } 
	{ x_11_address0 sc_out sc_lv 3 signal 28 } 
	{ x_11_ce0 sc_out sc_logic 1 signal 28 } 
	{ x_11_q0 sc_in sc_lv 32 signal 28 } 
	{ x_12_address0 sc_out sc_lv 3 signal 29 } 
	{ x_12_ce0 sc_out sc_logic 1 signal 29 } 
	{ x_12_q0 sc_in sc_lv 32 signal 29 } 
	{ x_13_address0 sc_out sc_lv 3 signal 30 } 
	{ x_13_ce0 sc_out sc_logic 1 signal 30 } 
	{ x_13_q0 sc_in sc_lv 32 signal 30 } 
	{ x_14_address0 sc_out sc_lv 3 signal 31 } 
	{ x_14_ce0 sc_out sc_logic 1 signal 31 } 
	{ x_14_q0 sc_in sc_lv 32 signal 31 } 
	{ x_15_address0 sc_out sc_lv 3 signal 32 } 
	{ x_15_ce0 sc_out sc_logic 1 signal 32 } 
	{ x_15_q0 sc_in sc_lv 32 signal 32 } 
	{ alpha sc_in sc_lv 32 signal 33 } 
	{ z_old_address0 sc_out sc_lv 3 signal 34 } 
	{ z_old_ce0 sc_out sc_logic 1 signal 34 } 
	{ z_old_q0 sc_in sc_lv 32 signal 34 } 
	{ z_old_1_address0 sc_out sc_lv 3 signal 35 } 
	{ z_old_1_ce0 sc_out sc_logic 1 signal 35 } 
	{ z_old_1_q0 sc_in sc_lv 32 signal 35 } 
	{ z_old_2_address0 sc_out sc_lv 3 signal 36 } 
	{ z_old_2_ce0 sc_out sc_logic 1 signal 36 } 
	{ z_old_2_q0 sc_in sc_lv 32 signal 36 } 
	{ z_old_3_address0 sc_out sc_lv 3 signal 37 } 
	{ z_old_3_ce0 sc_out sc_logic 1 signal 37 } 
	{ z_old_3_q0 sc_in sc_lv 32 signal 37 } 
	{ z_old_4_address0 sc_out sc_lv 3 signal 38 } 
	{ z_old_4_ce0 sc_out sc_logic 1 signal 38 } 
	{ z_old_4_q0 sc_in sc_lv 32 signal 38 } 
	{ z_old_5_address0 sc_out sc_lv 3 signal 39 } 
	{ z_old_5_ce0 sc_out sc_logic 1 signal 39 } 
	{ z_old_5_q0 sc_in sc_lv 32 signal 39 } 
	{ z_old_6_address0 sc_out sc_lv 3 signal 40 } 
	{ z_old_6_ce0 sc_out sc_logic 1 signal 40 } 
	{ z_old_6_q0 sc_in sc_lv 32 signal 40 } 
	{ z_old_7_address0 sc_out sc_lv 3 signal 41 } 
	{ z_old_7_ce0 sc_out sc_logic 1 signal 41 } 
	{ z_old_7_q0 sc_in sc_lv 32 signal 41 } 
	{ z_old_8_address0 sc_out sc_lv 3 signal 42 } 
	{ z_old_8_ce0 sc_out sc_logic 1 signal 42 } 
	{ z_old_8_q0 sc_in sc_lv 32 signal 42 } 
	{ z_old_9_address0 sc_out sc_lv 3 signal 43 } 
	{ z_old_9_ce0 sc_out sc_logic 1 signal 43 } 
	{ z_old_9_q0 sc_in sc_lv 32 signal 43 } 
	{ z_old_10_address0 sc_out sc_lv 3 signal 44 } 
	{ z_old_10_ce0 sc_out sc_logic 1 signal 44 } 
	{ z_old_10_q0 sc_in sc_lv 32 signal 44 } 
	{ z_old_11_address0 sc_out sc_lv 3 signal 45 } 
	{ z_old_11_ce0 sc_out sc_logic 1 signal 45 } 
	{ z_old_11_q0 sc_in sc_lv 32 signal 45 } 
	{ z_old_12_address0 sc_out sc_lv 3 signal 46 } 
	{ z_old_12_ce0 sc_out sc_logic 1 signal 46 } 
	{ z_old_12_q0 sc_in sc_lv 32 signal 46 } 
	{ z_old_13_address0 sc_out sc_lv 3 signal 47 } 
	{ z_old_13_ce0 sc_out sc_logic 1 signal 47 } 
	{ z_old_13_q0 sc_in sc_lv 32 signal 47 } 
	{ z_old_14_address0 sc_out sc_lv 3 signal 48 } 
	{ z_old_14_ce0 sc_out sc_logic 1 signal 48 } 
	{ z_old_14_q0 sc_in sc_lv 32 signal 48 } 
	{ z_old_15_address0 sc_out sc_lv 3 signal 49 } 
	{ z_old_15_ce0 sc_out sc_logic 1 signal 49 } 
	{ z_old_15_q0 sc_in sc_lv 32 signal 49 } 
	{ sub sc_in sc_lv 32 signal 50 } 
	{ grp_fu_1657_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1657_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1657_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1657_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1657_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1663_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1663_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1663_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1663_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "chunk", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "chunk", "role": "default" }} , 
 	{ "name": "x_hat_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_15", "role": "address0" }} , 
 	{ "name": "x_hat_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_15", "role": "ce0" }} , 
 	{ "name": "x_hat_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_15", "role": "we0" }} , 
 	{ "name": "x_hat_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_15", "role": "d0" }} , 
 	{ "name": "x_hat_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_14", "role": "address0" }} , 
 	{ "name": "x_hat_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_14", "role": "ce0" }} , 
 	{ "name": "x_hat_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_14", "role": "we0" }} , 
 	{ "name": "x_hat_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_14", "role": "d0" }} , 
 	{ "name": "x_hat_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_13", "role": "address0" }} , 
 	{ "name": "x_hat_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_13", "role": "ce0" }} , 
 	{ "name": "x_hat_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_13", "role": "we0" }} , 
 	{ "name": "x_hat_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_13", "role": "d0" }} , 
 	{ "name": "x_hat_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_12", "role": "address0" }} , 
 	{ "name": "x_hat_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_12", "role": "ce0" }} , 
 	{ "name": "x_hat_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_12", "role": "we0" }} , 
 	{ "name": "x_hat_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_12", "role": "d0" }} , 
 	{ "name": "x_hat_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_11", "role": "address0" }} , 
 	{ "name": "x_hat_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_11", "role": "ce0" }} , 
 	{ "name": "x_hat_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_11", "role": "we0" }} , 
 	{ "name": "x_hat_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_11", "role": "d0" }} , 
 	{ "name": "x_hat_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_10", "role": "address0" }} , 
 	{ "name": "x_hat_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_10", "role": "ce0" }} , 
 	{ "name": "x_hat_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_10", "role": "we0" }} , 
 	{ "name": "x_hat_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_10", "role": "d0" }} , 
 	{ "name": "x_hat_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_9", "role": "address0" }} , 
 	{ "name": "x_hat_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_9", "role": "ce0" }} , 
 	{ "name": "x_hat_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_9", "role": "we0" }} , 
 	{ "name": "x_hat_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_9", "role": "d0" }} , 
 	{ "name": "x_hat_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_8", "role": "address0" }} , 
 	{ "name": "x_hat_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_8", "role": "ce0" }} , 
 	{ "name": "x_hat_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_8", "role": "we0" }} , 
 	{ "name": "x_hat_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_8", "role": "d0" }} , 
 	{ "name": "x_hat_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_7", "role": "address0" }} , 
 	{ "name": "x_hat_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_7", "role": "ce0" }} , 
 	{ "name": "x_hat_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_7", "role": "we0" }} , 
 	{ "name": "x_hat_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_7", "role": "d0" }} , 
 	{ "name": "x_hat_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_6", "role": "address0" }} , 
 	{ "name": "x_hat_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_6", "role": "ce0" }} , 
 	{ "name": "x_hat_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_6", "role": "we0" }} , 
 	{ "name": "x_hat_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_6", "role": "d0" }} , 
 	{ "name": "x_hat_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_5", "role": "address0" }} , 
 	{ "name": "x_hat_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_5", "role": "ce0" }} , 
 	{ "name": "x_hat_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_5", "role": "we0" }} , 
 	{ "name": "x_hat_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_5", "role": "d0" }} , 
 	{ "name": "x_hat_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_4", "role": "address0" }} , 
 	{ "name": "x_hat_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_4", "role": "ce0" }} , 
 	{ "name": "x_hat_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_4", "role": "we0" }} , 
 	{ "name": "x_hat_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_4", "role": "d0" }} , 
 	{ "name": "x_hat_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_3", "role": "address0" }} , 
 	{ "name": "x_hat_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_3", "role": "ce0" }} , 
 	{ "name": "x_hat_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_3", "role": "we0" }} , 
 	{ "name": "x_hat_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_3", "role": "d0" }} , 
 	{ "name": "x_hat_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_2", "role": "address0" }} , 
 	{ "name": "x_hat_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_2", "role": "ce0" }} , 
 	{ "name": "x_hat_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_2", "role": "we0" }} , 
 	{ "name": "x_hat_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_2", "role": "d0" }} , 
 	{ "name": "x_hat_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_1", "role": "address0" }} , 
 	{ "name": "x_hat_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_1", "role": "ce0" }} , 
 	{ "name": "x_hat_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_1", "role": "we0" }} , 
 	{ "name": "x_hat_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_1", "role": "d0" }} , 
 	{ "name": "x_hat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat", "role": "address0" }} , 
 	{ "name": "x_hat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat", "role": "ce0" }} , 
 	{ "name": "x_hat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat", "role": "we0" }} , 
 	{ "name": "x_hat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat", "role": "d0" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_1", "role": "address0" }} , 
 	{ "name": "x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "ce0" }} , 
 	{ "name": "x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1", "role": "q0" }} , 
 	{ "name": "x_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_2", "role": "address0" }} , 
 	{ "name": "x_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_2", "role": "ce0" }} , 
 	{ "name": "x_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2", "role": "q0" }} , 
 	{ "name": "x_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_3", "role": "address0" }} , 
 	{ "name": "x_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_3", "role": "ce0" }} , 
 	{ "name": "x_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3", "role": "q0" }} , 
 	{ "name": "x_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_4", "role": "address0" }} , 
 	{ "name": "x_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_4", "role": "ce0" }} , 
 	{ "name": "x_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_4", "role": "q0" }} , 
 	{ "name": "x_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_5", "role": "address0" }} , 
 	{ "name": "x_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_5", "role": "ce0" }} , 
 	{ "name": "x_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_5", "role": "q0" }} , 
 	{ "name": "x_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_6", "role": "address0" }} , 
 	{ "name": "x_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_6", "role": "ce0" }} , 
 	{ "name": "x_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_6", "role": "q0" }} , 
 	{ "name": "x_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_7", "role": "address0" }} , 
 	{ "name": "x_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_7", "role": "ce0" }} , 
 	{ "name": "x_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_7", "role": "q0" }} , 
 	{ "name": "x_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_8", "role": "address0" }} , 
 	{ "name": "x_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_8", "role": "ce0" }} , 
 	{ "name": "x_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_8", "role": "q0" }} , 
 	{ "name": "x_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_9", "role": "address0" }} , 
 	{ "name": "x_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_9", "role": "ce0" }} , 
 	{ "name": "x_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_9", "role": "q0" }} , 
 	{ "name": "x_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_10", "role": "address0" }} , 
 	{ "name": "x_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_10", "role": "ce0" }} , 
 	{ "name": "x_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_10", "role": "q0" }} , 
 	{ "name": "x_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_11", "role": "address0" }} , 
 	{ "name": "x_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_11", "role": "ce0" }} , 
 	{ "name": "x_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_11", "role": "q0" }} , 
 	{ "name": "x_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_12", "role": "address0" }} , 
 	{ "name": "x_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_12", "role": "ce0" }} , 
 	{ "name": "x_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_12", "role": "q0" }} , 
 	{ "name": "x_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_13", "role": "address0" }} , 
 	{ "name": "x_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_13", "role": "ce0" }} , 
 	{ "name": "x_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_13", "role": "q0" }} , 
 	{ "name": "x_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_14", "role": "address0" }} , 
 	{ "name": "x_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_14", "role": "ce0" }} , 
 	{ "name": "x_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_14", "role": "q0" }} , 
 	{ "name": "x_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_15", "role": "address0" }} , 
 	{ "name": "x_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_15", "role": "ce0" }} , 
 	{ "name": "x_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_15", "role": "q0" }} , 
 	{ "name": "alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "alpha", "role": "default" }} , 
 	{ "name": "z_old_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old", "role": "address0" }} , 
 	{ "name": "z_old_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old", "role": "ce0" }} , 
 	{ "name": "z_old_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old", "role": "q0" }} , 
 	{ "name": "z_old_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_1", "role": "address0" }} , 
 	{ "name": "z_old_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_1", "role": "ce0" }} , 
 	{ "name": "z_old_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_1", "role": "q0" }} , 
 	{ "name": "z_old_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_2", "role": "address0" }} , 
 	{ "name": "z_old_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_2", "role": "ce0" }} , 
 	{ "name": "z_old_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_2", "role": "q0" }} , 
 	{ "name": "z_old_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_3", "role": "address0" }} , 
 	{ "name": "z_old_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_3", "role": "ce0" }} , 
 	{ "name": "z_old_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_3", "role": "q0" }} , 
 	{ "name": "z_old_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_4", "role": "address0" }} , 
 	{ "name": "z_old_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_4", "role": "ce0" }} , 
 	{ "name": "z_old_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_4", "role": "q0" }} , 
 	{ "name": "z_old_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_5", "role": "address0" }} , 
 	{ "name": "z_old_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_5", "role": "ce0" }} , 
 	{ "name": "z_old_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_5", "role": "q0" }} , 
 	{ "name": "z_old_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_6", "role": "address0" }} , 
 	{ "name": "z_old_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_6", "role": "ce0" }} , 
 	{ "name": "z_old_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_6", "role": "q0" }} , 
 	{ "name": "z_old_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_7", "role": "address0" }} , 
 	{ "name": "z_old_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_7", "role": "ce0" }} , 
 	{ "name": "z_old_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_7", "role": "q0" }} , 
 	{ "name": "z_old_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_8", "role": "address0" }} , 
 	{ "name": "z_old_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_8", "role": "ce0" }} , 
 	{ "name": "z_old_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_8", "role": "q0" }} , 
 	{ "name": "z_old_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_9", "role": "address0" }} , 
 	{ "name": "z_old_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_9", "role": "ce0" }} , 
 	{ "name": "z_old_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_9", "role": "q0" }} , 
 	{ "name": "z_old_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_10", "role": "address0" }} , 
 	{ "name": "z_old_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_10", "role": "ce0" }} , 
 	{ "name": "z_old_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_10", "role": "q0" }} , 
 	{ "name": "z_old_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_11", "role": "address0" }} , 
 	{ "name": "z_old_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_11", "role": "ce0" }} , 
 	{ "name": "z_old_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_11", "role": "q0" }} , 
 	{ "name": "z_old_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_12", "role": "address0" }} , 
 	{ "name": "z_old_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_12", "role": "ce0" }} , 
 	{ "name": "z_old_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_12", "role": "q0" }} , 
 	{ "name": "z_old_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_13", "role": "address0" }} , 
 	{ "name": "z_old_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_13", "role": "ce0" }} , 
 	{ "name": "z_old_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_13", "role": "q0" }} , 
 	{ "name": "z_old_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_14", "role": "address0" }} , 
 	{ "name": "z_old_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_14", "role": "ce0" }} , 
 	{ "name": "z_old_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_14", "role": "q0" }} , 
 	{ "name": "z_old_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_old_15", "role": "address0" }} , 
 	{ "name": "z_old_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_15", "role": "ce0" }} , 
 	{ "name": "z_old_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_15", "role": "q0" }} , 
 	{ "name": "sub", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1657_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1657_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1663_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1663_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1663_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1663_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1663_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1663_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1663_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1663_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_648_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_hat_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_old", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_648_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U192", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_32_1_1_U193", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_32_1_1_U194", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_bp_Pipeline_VITIS_LOOP_648_9 {
		chunk {Type I LastRead 0 FirstWrite -1}
		x_hat_15 {Type O LastRead -1 FirstWrite 13}
		x_hat_14 {Type O LastRead -1 FirstWrite 13}
		x_hat_13 {Type O LastRead -1 FirstWrite 13}
		x_hat_12 {Type O LastRead -1 FirstWrite 13}
		x_hat_11 {Type O LastRead -1 FirstWrite 13}
		x_hat_10 {Type O LastRead -1 FirstWrite 13}
		x_hat_9 {Type O LastRead -1 FirstWrite 13}
		x_hat_8 {Type O LastRead -1 FirstWrite 13}
		x_hat_7 {Type O LastRead -1 FirstWrite 13}
		x_hat_6 {Type O LastRead -1 FirstWrite 13}
		x_hat_5 {Type O LastRead -1 FirstWrite 13}
		x_hat_4 {Type O LastRead -1 FirstWrite 13}
		x_hat_3 {Type O LastRead -1 FirstWrite 13}
		x_hat_2 {Type O LastRead -1 FirstWrite 13}
		x_hat_1 {Type O LastRead -1 FirstWrite 13}
		x_hat {Type O LastRead -1 FirstWrite 13}
		x {Type I LastRead 0 FirstWrite -1}
		x_1 {Type I LastRead 0 FirstWrite -1}
		x_2 {Type I LastRead 0 FirstWrite -1}
		x_3 {Type I LastRead 0 FirstWrite -1}
		x_4 {Type I LastRead 0 FirstWrite -1}
		x_5 {Type I LastRead 0 FirstWrite -1}
		x_6 {Type I LastRead 0 FirstWrite -1}
		x_7 {Type I LastRead 0 FirstWrite -1}
		x_8 {Type I LastRead 0 FirstWrite -1}
		x_9 {Type I LastRead 0 FirstWrite -1}
		x_10 {Type I LastRead 0 FirstWrite -1}
		x_11 {Type I LastRead 0 FirstWrite -1}
		x_12 {Type I LastRead 0 FirstWrite -1}
		x_13 {Type I LastRead 0 FirstWrite -1}
		x_14 {Type I LastRead 0 FirstWrite -1}
		x_15 {Type I LastRead 0 FirstWrite -1}
		alpha {Type I LastRead 0 FirstWrite -1}
		z_old {Type I LastRead 0 FirstWrite -1}
		z_old_1 {Type I LastRead 0 FirstWrite -1}
		z_old_2 {Type I LastRead 0 FirstWrite -1}
		z_old_3 {Type I LastRead 0 FirstWrite -1}
		z_old_4 {Type I LastRead 0 FirstWrite -1}
		z_old_5 {Type I LastRead 0 FirstWrite -1}
		z_old_6 {Type I LastRead 0 FirstWrite -1}
		z_old_7 {Type I LastRead 0 FirstWrite -1}
		z_old_8 {Type I LastRead 0 FirstWrite -1}
		z_old_9 {Type I LastRead 0 FirstWrite -1}
		z_old_10 {Type I LastRead 0 FirstWrite -1}
		z_old_11 {Type I LastRead 0 FirstWrite -1}
		z_old_12 {Type I LastRead 0 FirstWrite -1}
		z_old_13 {Type I LastRead 0 FirstWrite -1}
		z_old_14 {Type I LastRead 0 FirstWrite -1}
		z_old_15 {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "15", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	chunk { ap_none {  { chunk in_data 0 31 } } }
	x_hat_15 { ap_memory {  { x_hat_15_address0 mem_address 1 3 }  { x_hat_15_ce0 mem_ce 1 1 }  { x_hat_15_we0 mem_we 1 1 }  { x_hat_15_d0 mem_din 1 32 } } }
	x_hat_14 { ap_memory {  { x_hat_14_address0 mem_address 1 3 }  { x_hat_14_ce0 mem_ce 1 1 }  { x_hat_14_we0 mem_we 1 1 }  { x_hat_14_d0 mem_din 1 32 } } }
	x_hat_13 { ap_memory {  { x_hat_13_address0 mem_address 1 3 }  { x_hat_13_ce0 mem_ce 1 1 }  { x_hat_13_we0 mem_we 1 1 }  { x_hat_13_d0 mem_din 1 32 } } }
	x_hat_12 { ap_memory {  { x_hat_12_address0 mem_address 1 3 }  { x_hat_12_ce0 mem_ce 1 1 }  { x_hat_12_we0 mem_we 1 1 }  { x_hat_12_d0 mem_din 1 32 } } }
	x_hat_11 { ap_memory {  { x_hat_11_address0 mem_address 1 3 }  { x_hat_11_ce0 mem_ce 1 1 }  { x_hat_11_we0 mem_we 1 1 }  { x_hat_11_d0 mem_din 1 32 } } }
	x_hat_10 { ap_memory {  { x_hat_10_address0 mem_address 1 3 }  { x_hat_10_ce0 mem_ce 1 1 }  { x_hat_10_we0 mem_we 1 1 }  { x_hat_10_d0 mem_din 1 32 } } }
	x_hat_9 { ap_memory {  { x_hat_9_address0 mem_address 1 3 }  { x_hat_9_ce0 mem_ce 1 1 }  { x_hat_9_we0 mem_we 1 1 }  { x_hat_9_d0 mem_din 1 32 } } }
	x_hat_8 { ap_memory {  { x_hat_8_address0 mem_address 1 3 }  { x_hat_8_ce0 mem_ce 1 1 }  { x_hat_8_we0 mem_we 1 1 }  { x_hat_8_d0 mem_din 1 32 } } }
	x_hat_7 { ap_memory {  { x_hat_7_address0 mem_address 1 3 }  { x_hat_7_ce0 mem_ce 1 1 }  { x_hat_7_we0 mem_we 1 1 }  { x_hat_7_d0 mem_din 1 32 } } }
	x_hat_6 { ap_memory {  { x_hat_6_address0 mem_address 1 3 }  { x_hat_6_ce0 mem_ce 1 1 }  { x_hat_6_we0 mem_we 1 1 }  { x_hat_6_d0 mem_din 1 32 } } }
	x_hat_5 { ap_memory {  { x_hat_5_address0 mem_address 1 3 }  { x_hat_5_ce0 mem_ce 1 1 }  { x_hat_5_we0 mem_we 1 1 }  { x_hat_5_d0 mem_din 1 32 } } }
	x_hat_4 { ap_memory {  { x_hat_4_address0 mem_address 1 3 }  { x_hat_4_ce0 mem_ce 1 1 }  { x_hat_4_we0 mem_we 1 1 }  { x_hat_4_d0 mem_din 1 32 } } }
	x_hat_3 { ap_memory {  { x_hat_3_address0 mem_address 1 3 }  { x_hat_3_ce0 mem_ce 1 1 }  { x_hat_3_we0 mem_we 1 1 }  { x_hat_3_d0 mem_din 1 32 } } }
	x_hat_2 { ap_memory {  { x_hat_2_address0 mem_address 1 3 }  { x_hat_2_ce0 mem_ce 1 1 }  { x_hat_2_we0 mem_we 1 1 }  { x_hat_2_d0 mem_din 1 32 } } }
	x_hat_1 { ap_memory {  { x_hat_1_address0 mem_address 1 3 }  { x_hat_1_ce0 mem_ce 1 1 }  { x_hat_1_we0 mem_we 1 1 }  { x_hat_1_d0 mem_din 1 32 } } }
	x_hat { ap_memory {  { x_hat_address0 mem_address 1 3 }  { x_hat_ce0 mem_ce 1 1 }  { x_hat_we0 mem_we 1 1 }  { x_hat_d0 mem_din 1 32 } } }
	x { ap_memory {  { x_address0 mem_address 1 3 }  { x_ce0 mem_ce 1 1 }  { x_q0 in_data 0 32 } } }
	x_1 { ap_memory {  { x_1_address0 mem_address 1 3 }  { x_1_ce0 mem_ce 1 1 }  { x_1_q0 in_data 0 32 } } }
	x_2 { ap_memory {  { x_2_address0 mem_address 1 3 }  { x_2_ce0 mem_ce 1 1 }  { x_2_q0 in_data 0 32 } } }
	x_3 { ap_memory {  { x_3_address0 mem_address 1 3 }  { x_3_ce0 mem_ce 1 1 }  { x_3_q0 in_data 0 32 } } }
	x_4 { ap_memory {  { x_4_address0 mem_address 1 3 }  { x_4_ce0 mem_ce 1 1 }  { x_4_q0 in_data 0 32 } } }
	x_5 { ap_memory {  { x_5_address0 mem_address 1 3 }  { x_5_ce0 mem_ce 1 1 }  { x_5_q0 in_data 0 32 } } }
	x_6 { ap_memory {  { x_6_address0 mem_address 1 3 }  { x_6_ce0 mem_ce 1 1 }  { x_6_q0 in_data 0 32 } } }
	x_7 { ap_memory {  { x_7_address0 mem_address 1 3 }  { x_7_ce0 mem_ce 1 1 }  { x_7_q0 in_data 0 32 } } }
	x_8 { ap_memory {  { x_8_address0 mem_address 1 3 }  { x_8_ce0 mem_ce 1 1 }  { x_8_q0 in_data 0 32 } } }
	x_9 { ap_memory {  { x_9_address0 mem_address 1 3 }  { x_9_ce0 mem_ce 1 1 }  { x_9_q0 in_data 0 32 } } }
	x_10 { ap_memory {  { x_10_address0 mem_address 1 3 }  { x_10_ce0 mem_ce 1 1 }  { x_10_q0 in_data 0 32 } } }
	x_11 { ap_memory {  { x_11_address0 mem_address 1 3 }  { x_11_ce0 mem_ce 1 1 }  { x_11_q0 in_data 0 32 } } }
	x_12 { ap_memory {  { x_12_address0 mem_address 1 3 }  { x_12_ce0 mem_ce 1 1 }  { x_12_q0 in_data 0 32 } } }
	x_13 { ap_memory {  { x_13_address0 mem_address 1 3 }  { x_13_ce0 mem_ce 1 1 }  { x_13_q0 in_data 0 32 } } }
	x_14 { ap_memory {  { x_14_address0 mem_address 1 3 }  { x_14_ce0 mem_ce 1 1 }  { x_14_q0 in_data 0 32 } } }
	x_15 { ap_memory {  { x_15_address0 mem_address 1 3 }  { x_15_ce0 mem_ce 1 1 }  { x_15_q0 in_data 0 32 } } }
	alpha { ap_none {  { alpha in_data 0 32 } } }
	z_old { ap_memory {  { z_old_address0 mem_address 1 3 }  { z_old_ce0 mem_ce 1 1 }  { z_old_q0 in_data 0 32 } } }
	z_old_1 { ap_memory {  { z_old_1_address0 mem_address 1 3 }  { z_old_1_ce0 mem_ce 1 1 }  { z_old_1_q0 in_data 0 32 } } }
	z_old_2 { ap_memory {  { z_old_2_address0 mem_address 1 3 }  { z_old_2_ce0 mem_ce 1 1 }  { z_old_2_q0 in_data 0 32 } } }
	z_old_3 { ap_memory {  { z_old_3_address0 mem_address 1 3 }  { z_old_3_ce0 mem_ce 1 1 }  { z_old_3_q0 in_data 0 32 } } }
	z_old_4 { ap_memory {  { z_old_4_address0 mem_address 1 3 }  { z_old_4_ce0 mem_ce 1 1 }  { z_old_4_q0 in_data 0 32 } } }
	z_old_5 { ap_memory {  { z_old_5_address0 mem_address 1 3 }  { z_old_5_ce0 mem_ce 1 1 }  { z_old_5_q0 in_data 0 32 } } }
	z_old_6 { ap_memory {  { z_old_6_address0 mem_address 1 3 }  { z_old_6_ce0 mem_ce 1 1 }  { z_old_6_q0 in_data 0 32 } } }
	z_old_7 { ap_memory {  { z_old_7_address0 mem_address 1 3 }  { z_old_7_ce0 mem_ce 1 1 }  { z_old_7_q0 in_data 0 32 } } }
	z_old_8 { ap_memory {  { z_old_8_address0 mem_address 1 3 }  { z_old_8_ce0 mem_ce 1 1 }  { z_old_8_q0 in_data 0 32 } } }
	z_old_9 { ap_memory {  { z_old_9_address0 mem_address 1 3 }  { z_old_9_ce0 mem_ce 1 1 }  { z_old_9_q0 in_data 0 32 } } }
	z_old_10 { ap_memory {  { z_old_10_address0 mem_address 1 3 }  { z_old_10_ce0 mem_ce 1 1 }  { z_old_10_q0 in_data 0 32 } } }
	z_old_11 { ap_memory {  { z_old_11_address0 mem_address 1 3 }  { z_old_11_ce0 mem_ce 1 1 }  { z_old_11_q0 in_data 0 32 } } }
	z_old_12 { ap_memory {  { z_old_12_address0 mem_address 1 3 }  { z_old_12_ce0 mem_ce 1 1 }  { z_old_12_q0 in_data 0 32 } } }
	z_old_13 { ap_memory {  { z_old_13_address0 mem_address 1 3 }  { z_old_13_ce0 mem_ce 1 1 }  { z_old_13_q0 in_data 0 32 } } }
	z_old_14 { ap_memory {  { z_old_14_address0 mem_address 1 3 }  { z_old_14_ce0 mem_ce 1 1 }  { z_old_14_q0 in_data 0 32 } } }
	z_old_15 { ap_memory {  { z_old_15_address0 mem_address 1 3 }  { z_old_15_ce0 mem_ce 1 1 }  { z_old_15_q0 in_data 0 32 } } }
	sub { ap_none {  { sub in_data 0 32 } } }
}
