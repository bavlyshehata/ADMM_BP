set moduleName krnl_bp_Pipeline_VITIS_LOOP_1045_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {krnl_bp_Pipeline_VITIS_LOOP_1045_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ sub1 float 32 regular  }
	{ r_norm_1_out float 32 regular {pointer 1}  }
	{ s_norm_1_out float 32 regular {pointer 1}  }
	{ norm_x_1_out float 32 regular {pointer 1}  }
	{ norm_z_1_out float 32 regular {pointer 1}  }
	{ norm_u_out float 32 regular {pointer 1}  }
	{ z_old_stream int 32 regular {fifo 2 volatile } {global 2}  }
	{ u_stream int 32 regular {fifo 2 volatile } {global 2}  }
	{ x_bram float 32 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ z_copy_2_stream int 32 regular {fifo 2 volatile } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sub1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r_norm_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_norm_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_x_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_z_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_u_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z_old_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "u_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "x_bram", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "z_copy_2_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sub1 sc_in sc_lv 32 signal 0 } 
	{ r_norm_1_out sc_out sc_lv 32 signal 1 } 
	{ r_norm_1_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ s_norm_1_out sc_out sc_lv 32 signal 2 } 
	{ s_norm_1_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ norm_x_1_out sc_out sc_lv 32 signal 3 } 
	{ norm_x_1_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ norm_z_1_out sc_out sc_lv 32 signal 4 } 
	{ norm_z_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ norm_u_out sc_out sc_lv 32 signal 5 } 
	{ norm_u_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ z_old_stream_dout sc_in sc_lv 32 signal 6 } 
	{ z_old_stream_empty_n sc_in sc_logic 1 signal 6 } 
	{ z_old_stream_read sc_out sc_logic 1 signal 6 } 
	{ z_old_stream_din sc_out sc_lv 32 signal 6 } 
	{ z_old_stream_full_n sc_in sc_logic 1 signal 6 } 
	{ z_old_stream_write sc_out sc_logic 1 signal 6 } 
	{ u_stream_dout sc_in sc_lv 32 signal 7 } 
	{ u_stream_empty_n sc_in sc_logic 1 signal 7 } 
	{ u_stream_read sc_out sc_logic 1 signal 7 } 
	{ u_stream_din sc_out sc_lv 32 signal 7 } 
	{ u_stream_full_n sc_in sc_logic 1 signal 7 } 
	{ u_stream_write sc_out sc_logic 1 signal 7 } 
	{ x_bram_address0 sc_out sc_lv 3 signal 8 } 
	{ x_bram_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_bram_q0 sc_in sc_lv 32 signal 8 } 
	{ z_copy_2_stream_dout sc_in sc_lv 32 signal 9 } 
	{ z_copy_2_stream_empty_n sc_in sc_logic 1 signal 9 } 
	{ z_copy_2_stream_read sc_out sc_logic 1 signal 9 } 
	{ z_copy_2_stream_din sc_out sc_lv 32 signal 9 } 
	{ z_copy_2_stream_full_n sc_in sc_logic 1 signal 9 } 
	{ z_copy_2_stream_write sc_out sc_logic 1 signal 9 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
	{ grp_fu_626_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_626_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_626_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_626_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_626_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_631_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_631_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_631_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_631_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_640_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_640_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_640_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_646_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_646_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_646_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_670_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_670_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_670_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_670_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_670_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sub1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub1", "role": "default" }} , 
 	{ "name": "r_norm_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_norm_1_out", "role": "default" }} , 
 	{ "name": "r_norm_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r_norm_1_out", "role": "ap_vld" }} , 
 	{ "name": "s_norm_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_norm_1_out", "role": "default" }} , 
 	{ "name": "s_norm_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_norm_1_out", "role": "ap_vld" }} , 
 	{ "name": "norm_x_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "norm_x_1_out", "role": "default" }} , 
 	{ "name": "norm_x_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norm_x_1_out", "role": "ap_vld" }} , 
 	{ "name": "norm_z_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "norm_z_1_out", "role": "default" }} , 
 	{ "name": "norm_z_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norm_z_1_out", "role": "ap_vld" }} , 
 	{ "name": "norm_u_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "norm_u_out", "role": "default" }} , 
 	{ "name": "norm_u_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norm_u_out", "role": "ap_vld" }} , 
 	{ "name": "z_old_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_stream", "role": "dout" }} , 
 	{ "name": "z_old_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_stream", "role": "empty_n" }} , 
 	{ "name": "z_old_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_stream", "role": "read" }} , 
 	{ "name": "z_old_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_stream", "role": "din" }} , 
 	{ "name": "z_old_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_stream", "role": "full_n" }} , 
 	{ "name": "z_old_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_stream", "role": "write" }} , 
 	{ "name": "u_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_stream", "role": "dout" }} , 
 	{ "name": "u_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_stream", "role": "empty_n" }} , 
 	{ "name": "u_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_stream", "role": "read" }} , 
 	{ "name": "u_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_stream", "role": "din" }} , 
 	{ "name": "u_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_stream", "role": "full_n" }} , 
 	{ "name": "u_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_stream", "role": "write" }} , 
 	{ "name": "x_bram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_bram", "role": "address0" }} , 
 	{ "name": "x_bram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_bram", "role": "ce0" }} , 
 	{ "name": "x_bram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_bram", "role": "q0" }} , 
 	{ "name": "z_copy_2_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "dout" }} , 
 	{ "name": "z_copy_2_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "empty_n" }} , 
 	{ "name": "z_copy_2_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "read" }} , 
 	{ "name": "z_copy_2_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "din" }} , 
 	{ "name": "z_copy_2_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "full_n" }} , 
 	{ "name": "z_copy_2_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_626_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_626_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_631_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_640_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_640_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_640_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_640_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_640_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_640_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_646_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_646_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_646_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_646_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_646_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_646_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_670_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_670_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_670_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_670_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_670_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_670_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_670_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_670_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_670_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_670_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "29"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_1045_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "193", "EstimateLatencyMax" : "193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub1", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_norm_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s_norm_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "norm_x_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "norm_z_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "norm_u_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "z_old_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_old_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "z_old_stream_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "u_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "u_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "u_stream_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_bram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_copy_2_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_copy_2_stream_o_blk_n", "Type" : "RtlSignal"},
					{"Name" : "z_copy_2_stream_i_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1045_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "78", "EstimateLatencyMin" : "78", "EstimateLatencyMax" : "78",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log0_lut_table_array_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_54s_6ns_54_5_1_U71", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_71ns_4ns_75_5_1_U72", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_73ns_6ns_79_5_1_U73", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_83ns_6ns_89_5_1_U74", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_92ns_6ns_98_5_1_U75", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_87ns_6ns_93_5_1_U76", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_82ns_6ns_88_5_1_U77", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_77ns_6ns_83_5_1_U78", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_12s_80ns_90_5_1_U79", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_40ns_40ns_80_2_1_U80", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_13s_71s_71_5_1_U81", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_43ns_36ns_79_2_1_U82", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_49ns_44ns_93_5_1_U83", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mul_50ns_50ns_100_5_1_U84", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_283.mac_muladd_16s_15ns_19s_31_4_1_U85", "Parent" : "1"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_bp_Pipeline_VITIS_LOOP_1045_3 {
		sub1 {Type I LastRead 0 FirstWrite -1}
		r_norm_1_out {Type O LastRead -1 FirstWrite 95}
		s_norm_1_out {Type O LastRead -1 FirstWrite 95}
		norm_x_1_out {Type O LastRead -1 FirstWrite 95}
		norm_z_1_out {Type O LastRead -1 FirstWrite 95}
		norm_u_out {Type O LastRead -1 FirstWrite 95}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		z_old_stream {Type IO LastRead 5 FirstWrite 5}
		u_stream {Type IO LastRead 2 FirstWrite 2}
		x_bram {Type I LastRead 0 FirstWrite -1}
		z_copy_2_stream {Type IO LastRead 1 FirstWrite 6}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "193", "Max" : "193"}
	, {"Name" : "Interval", "Min" : "193", "Max" : "193"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sub1 { ap_none {  { sub1 in_data 0 32 } } }
	r_norm_1_out { ap_vld {  { r_norm_1_out out_data 1 32 }  { r_norm_1_out_ap_vld out_vld 1 1 } } }
	s_norm_1_out { ap_vld {  { s_norm_1_out out_data 1 32 }  { s_norm_1_out_ap_vld out_vld 1 1 } } }
	norm_x_1_out { ap_vld {  { norm_x_1_out out_data 1 32 }  { norm_x_1_out_ap_vld out_vld 1 1 } } }
	norm_z_1_out { ap_vld {  { norm_z_1_out out_data 1 32 }  { norm_z_1_out_ap_vld out_vld 1 1 } } }
	norm_u_out { ap_vld {  { norm_u_out out_data 1 32 }  { norm_u_out_ap_vld out_vld 1 1 } } }
	z_old_stream { ap_fifo {  { z_old_stream_dout fifo_port_we 0 32 }  { z_old_stream_empty_n fifo_status 0 1 }  { z_old_stream_read fifo_data 1 1 }  { z_old_stream_din fifo_port_we 1 32 }  { z_old_stream_full_n fifo_status 0 1 }  { z_old_stream_write fifo_data 1 1 } } }
	u_stream { ap_fifo {  { u_stream_dout fifo_port_we 0 32 }  { u_stream_empty_n fifo_status 0 1 }  { u_stream_read fifo_data 1 1 }  { u_stream_din fifo_port_we 1 32 }  { u_stream_full_n fifo_status 0 1 }  { u_stream_write fifo_data 1 1 } } }
	x_bram { ap_memory {  { x_bram_address0 mem_address 1 3 }  { x_bram_ce0 mem_ce 1 1 }  { x_bram_q0 in_data 0 32 } } }
	z_copy_2_stream { ap_fifo {  { z_copy_2_stream_dout fifo_port_we 0 32 }  { z_copy_2_stream_empty_n fifo_status 0 1 }  { z_copy_2_stream_read fifo_data 1 1 }  { z_copy_2_stream_din fifo_port_we 1 32 }  { z_copy_2_stream_full_n fifo_status 0 1 }  { z_copy_2_stream_write fifo_data 1 1 } } }
}
