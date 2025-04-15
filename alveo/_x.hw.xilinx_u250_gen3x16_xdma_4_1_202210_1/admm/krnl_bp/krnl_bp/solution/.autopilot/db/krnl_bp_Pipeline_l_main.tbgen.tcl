set moduleName krnl_bp_Pipeline_l_main
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {krnl_bp_Pipeline_l_main}
set C_modelType { void 0 }
set C_modelArgList {
	{ alpha float 32 regular  }
	{ reg_alpha float 32 regular  }
	{ rho float 32 regular  }
	{ u_stream int 32 regular {fifo 2 volatile } {global 2}  }
	{ z_copy_2_stream int 32 regular {fifo 2 volatile } {global 2}  }
	{ z_u_stream int 32 regular {fifo 2 volatile } {global 2}  }
	{ mac_res_stream int 32 regular {fifo 2 volatile } {global 2}  }
	{ mat_p_bram float 32 regular {array 64 { 1 1 } 1 1 } {global 0}  }
	{ z_old_stream int 32 regular {fifo 2 volatile } {global 2}  }
	{ vec_q_bram float 32 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ x_bram float 32 regular {array 8 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "alpha", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_alpha", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rho", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "z_copy_2_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "z_u_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mac_res_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "mat_p_bram", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "z_old_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "vec_q_bram", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_bram", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ alpha sc_in sc_lv 32 signal 0 } 
	{ reg_alpha sc_in sc_lv 32 signal 1 } 
	{ rho sc_in sc_lv 32 signal 2 } 
	{ u_stream_dout sc_in sc_lv 32 signal 3 } 
	{ u_stream_empty_n sc_in sc_logic 1 signal 3 } 
	{ u_stream_read sc_out sc_logic 1 signal 3 } 
	{ u_stream_din sc_out sc_lv 32 signal 3 } 
	{ u_stream_full_n sc_in sc_logic 1 signal 3 } 
	{ u_stream_write sc_out sc_logic 1 signal 3 } 
	{ z_copy_2_stream_dout sc_in sc_lv 32 signal 4 } 
	{ z_copy_2_stream_empty_n sc_in sc_logic 1 signal 4 } 
	{ z_copy_2_stream_read sc_out sc_logic 1 signal 4 } 
	{ z_copy_2_stream_din sc_out sc_lv 32 signal 4 } 
	{ z_copy_2_stream_full_n sc_in sc_logic 1 signal 4 } 
	{ z_copy_2_stream_write sc_out sc_logic 1 signal 4 } 
	{ z_u_stream_dout sc_in sc_lv 32 signal 5 } 
	{ z_u_stream_empty_n sc_in sc_logic 1 signal 5 } 
	{ z_u_stream_read sc_out sc_logic 1 signal 5 } 
	{ z_u_stream_din sc_out sc_lv 32 signal 5 } 
	{ z_u_stream_full_n sc_in sc_logic 1 signal 5 } 
	{ z_u_stream_write sc_out sc_logic 1 signal 5 } 
	{ mac_res_stream_dout sc_in sc_lv 32 signal 6 } 
	{ mac_res_stream_empty_n sc_in sc_logic 1 signal 6 } 
	{ mac_res_stream_read sc_out sc_logic 1 signal 6 } 
	{ mac_res_stream_din sc_out sc_lv 32 signal 6 } 
	{ mac_res_stream_full_n sc_in sc_logic 1 signal 6 } 
	{ mac_res_stream_write sc_out sc_logic 1 signal 6 } 
	{ mat_p_bram_address0 sc_out sc_lv 6 signal 7 } 
	{ mat_p_bram_ce0 sc_out sc_logic 1 signal 7 } 
	{ mat_p_bram_q0 sc_in sc_lv 32 signal 7 } 
	{ mat_p_bram_address1 sc_out sc_lv 6 signal 7 } 
	{ mat_p_bram_ce1 sc_out sc_logic 1 signal 7 } 
	{ mat_p_bram_q1 sc_in sc_lv 32 signal 7 } 
	{ z_old_stream_dout sc_in sc_lv 32 signal 8 } 
	{ z_old_stream_empty_n sc_in sc_logic 1 signal 8 } 
	{ z_old_stream_read sc_out sc_logic 1 signal 8 } 
	{ z_old_stream_din sc_out sc_lv 32 signal 8 } 
	{ z_old_stream_full_n sc_in sc_logic 1 signal 8 } 
	{ z_old_stream_write sc_out sc_logic 1 signal 8 } 
	{ vec_q_bram_address0 sc_out sc_lv 3 signal 9 } 
	{ vec_q_bram_ce0 sc_out sc_logic 1 signal 9 } 
	{ vec_q_bram_q0 sc_in sc_lv 32 signal 9 } 
	{ x_bram_address0 sc_out sc_lv 3 signal 10 } 
	{ x_bram_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_bram_we0 sc_out sc_logic 1 signal 10 } 
	{ x_bram_d0 sc_out sc_lv 32 signal 10 } 
	{ grp_fu_363_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_363_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_363_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_363_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_363_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "alpha", "role": "default" }} , 
 	{ "name": "reg_alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_alpha", "role": "default" }} , 
 	{ "name": "rho", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rho", "role": "default" }} , 
 	{ "name": "u_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_stream", "role": "dout" }} , 
 	{ "name": "u_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_stream", "role": "empty_n" }} , 
 	{ "name": "u_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_stream", "role": "read" }} , 
 	{ "name": "u_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_stream", "role": "din" }} , 
 	{ "name": "u_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_stream", "role": "full_n" }} , 
 	{ "name": "u_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_stream", "role": "write" }} , 
 	{ "name": "z_copy_2_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "dout" }} , 
 	{ "name": "z_copy_2_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "empty_n" }} , 
 	{ "name": "z_copy_2_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "read" }} , 
 	{ "name": "z_copy_2_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "din" }} , 
 	{ "name": "z_copy_2_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "full_n" }} , 
 	{ "name": "z_copy_2_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_copy_2_stream", "role": "write" }} , 
 	{ "name": "z_u_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_u_stream", "role": "dout" }} , 
 	{ "name": "z_u_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream", "role": "empty_n" }} , 
 	{ "name": "z_u_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream", "role": "read" }} , 
 	{ "name": "z_u_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_u_stream", "role": "din" }} , 
 	{ "name": "z_u_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream", "role": "full_n" }} , 
 	{ "name": "z_u_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream", "role": "write" }} , 
 	{ "name": "mac_res_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "dout" }} , 
 	{ "name": "mac_res_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "empty_n" }} , 
 	{ "name": "mac_res_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "read" }} , 
 	{ "name": "mac_res_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "din" }} , 
 	{ "name": "mac_res_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "full_n" }} , 
 	{ "name": "mac_res_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "write" }} , 
 	{ "name": "mat_p_bram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "address0" }} , 
 	{ "name": "mat_p_bram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "ce0" }} , 
 	{ "name": "mat_p_bram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "q0" }} , 
 	{ "name": "mat_p_bram_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "address1" }} , 
 	{ "name": "mat_p_bram_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "ce1" }} , 
 	{ "name": "mat_p_bram_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "q1" }} , 
 	{ "name": "z_old_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_stream", "role": "dout" }} , 
 	{ "name": "z_old_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_stream", "role": "empty_n" }} , 
 	{ "name": "z_old_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_stream", "role": "read" }} , 
 	{ "name": "z_old_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_old_stream", "role": "din" }} , 
 	{ "name": "z_old_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_stream", "role": "full_n" }} , 
 	{ "name": "z_old_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_old_stream", "role": "write" }} , 
 	{ "name": "vec_q_bram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vec_q_bram", "role": "address0" }} , 
 	{ "name": "vec_q_bram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_q_bram", "role": "ce0" }} , 
 	{ "name": "vec_q_bram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec_q_bram", "role": "q0" }} , 
 	{ "name": "x_bram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_bram", "role": "address0" }} , 
 	{ "name": "x_bram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_bram", "role": "ce0" }} , 
 	{ "name": "x_bram_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_bram", "role": "we0" }} , 
 	{ "name": "x_bram_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_bram", "role": "d0" }} , 
 	{ "name": "grp_fu_363_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_363_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_363_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_363_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_363_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_363_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_363_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_363_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_363_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_363_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "krnl_bp_Pipeline_l_main",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "869", "EstimateLatencyMax" : "869",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "rho", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "u_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "u_stream_o_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "u_copy_1_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_1_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "u_copy_2_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_2_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "u_copy_3_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_3_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "z_copy_2_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_copy_2_stream_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_3_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_u_stream_o_blk_n", "Type" : "RtlSignal"},
					{"Name" : "z_u_stream_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mac_fu_378", "Port" : "z_u_stream", "Inst_start_state" : "128", "Inst_end_state" : "310"}]},
			{"Name" : "p_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mac_fu_378", "Port" : "p_stream", "Inst_start_state" : "128", "Inst_end_state" : "310"}]},
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "mac_res_stream_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mac_fu_378", "Port" : "mac_res_stream", "Inst_start_state" : "128", "Inst_end_state" : "310"}]},
			{"Name" : "mat_p_bram", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mac_fu_378", "Port" : "mat_p_bram", "Inst_start_state" : "128", "Inst_end_state" : "310"}]},
			{"Name" : "q_stream", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "x_stream", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "z_old_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_old_stream_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_1_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "x_hat_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "x_hat_copy_1_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_1_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "x_hat_copy_2_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_2_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "x_hat_copy_3_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_3_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "x_hat_u_stream", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "z_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "z_copy_1_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_replicate_stream_fu_358", "Port" : "krnl_bp_u_copy_2_stream", "Inst_start_state" : "396", "Inst_end_state" : "403"}]},
			{"Name" : "x_hat_z_stream", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "vec_q_bram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_bram", "Type" : "Memory", "Direction" : "O"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_replicate_stream_fu_358", "SubBlockPort" : ["krnl_bp_u_stream_blk_n", "krnl_bp_u_copy_1_stream_blk_n", "krnl_bp_u_copy_2_stream_blk_n", "krnl_bp_u_copy_3_stream_blk_n"]},
			{"SubInstance" : "grp_mac_fu_378", "SubBlockPort" : ["p_stream_o_blk_n", "p_stream_i_blk_n", "z_u_stream_blk_n", "mac_res_stream_blk_n"]}],
		"Loop" : [
			{"Name" : "l_main", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "435", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state435"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_replicate_stream_fu_358", "Parent" : "0",
		"CDFG" : "replicate_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "krnl_bp_u_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "krnl_bp_u_copy_1_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_copy_1_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "krnl_bp_u_copy_2_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_copy_2_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "krnl_bp_u_copy_3_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_copy_3_stream_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_378", "Parent" : "0",
		"CDFG" : "mac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "127",
		"VariableLatency" : "0", "ExactLatency" : "182", "EstimateLatencyMin" : "182", "EstimateLatencyMax" : "182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "p_stream_o_blk_n", "Type" : "RtlPort"},
					{"Name" : "p_stream_i_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_u_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mac_res_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "mat_p_bram", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_7_full_dsp_1_U20", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U21", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U22", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U23", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U24", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U25", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U26", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U27", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U28", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U29", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_stream_fifo_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_stream_fifo_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_copy_1_stream_fifo_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_stream_fifo_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_stream_fifo_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_u_stream_fifo_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_stream_fifo_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_copy_3_stream_fifo_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_copy_2_stream_fifo_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_copy_1_stream_fifo_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_copy_3_stream_fifo_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_copy_2_stream_fifo_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_copy_1_stream_fifo_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_stream_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_bp_Pipeline_l_main {
		alpha {Type I LastRead 0 FirstWrite -1}
		reg_alpha {Type I LastRead 0 FirstWrite -1}
		rho {Type I LastRead 0 FirstWrite -1}
		u_stream {Type IO LastRead 7 FirstWrite -1}
		u_copy_1_stream {Type IO LastRead -1 FirstWrite -1}
		u_copy_2_stream {Type IO LastRead -1 FirstWrite -1}
		u_copy_3_stream {Type IO LastRead -1 FirstWrite -1}
		z_copy_2_stream {Type IO LastRead 118 FirstWrite 0}
		z_u_stream {Type IO LastRead 72 FirstWrite -1}
		p_stream {Type IO LastRead -1 FirstWrite -1}
		mac_res_stream {Type IO LastRead 317 FirstWrite 126}
		mat_p_bram {Type I LastRead 32 FirstWrite -1}
		q_stream {Type IO LastRead -1 FirstWrite -1}
		x_stream {Type IO LastRead -1 FirstWrite -1}
		z_old_stream {Type IO LastRead 118 FirstWrite 0}
		x_hat_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_copy_1_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_copy_2_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_copy_3_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_u_stream {Type IO LastRead -1 FirstWrite -1}
		z_stream {Type IO LastRead -1 FirstWrite -1}
		z_copy_1_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_z_stream {Type IO LastRead -1 FirstWrite -1}
		vec_q_bram {Type I LastRead 8 FirstWrite -1}
		x_bram {Type O LastRead -1 FirstWrite 354}}
	replicate_stream {
		krnl_bp_u_stream {Type I LastRead 7 FirstWrite -1}
		krnl_bp_u_copy_1_stream {Type O LastRead -1 FirstWrite 0}
		krnl_bp_u_copy_2_stream {Type O LastRead -1 FirstWrite 0}
		krnl_bp_u_copy_3_stream {Type O LastRead -1 FirstWrite 0}}
	mac {
		p_stream {Type IO LastRead 128 FirstWrite 1}
		z_u_stream {Type I LastRead 72 FirstWrite -1}
		mac_res_stream {Type O LastRead -1 FirstWrite 126}
		mat_p_bram {Type I LastRead 32 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "869", "Max" : "869"}
	, {"Name" : "Interval", "Min" : "869", "Max" : "869"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	alpha { ap_none {  { alpha in_data 0 32 } } }
	reg_alpha { ap_none {  { reg_alpha in_data 0 32 } } }
	rho { ap_none {  { rho in_data 0 32 } } }
	u_stream { ap_fifo {  { u_stream_dout fifo_port_we 0 32 }  { u_stream_empty_n fifo_status 0 1 }  { u_stream_read fifo_data 1 1 }  { u_stream_din fifo_port_we 1 32 }  { u_stream_full_n fifo_status 0 1 }  { u_stream_write fifo_data 1 1 } } }
	z_copy_2_stream { ap_fifo {  { z_copy_2_stream_dout fifo_port_we 0 32 }  { z_copy_2_stream_empty_n fifo_status 0 1 }  { z_copy_2_stream_read fifo_data 1 1 }  { z_copy_2_stream_din fifo_port_we 1 32 }  { z_copy_2_stream_full_n fifo_status 0 1 }  { z_copy_2_stream_write fifo_data 1 1 } } }
	z_u_stream { ap_fifo {  { z_u_stream_dout fifo_port_we 0 32 }  { z_u_stream_empty_n fifo_status 0 1 }  { z_u_stream_read fifo_data 1 1 }  { z_u_stream_din fifo_port_we 1 32 }  { z_u_stream_full_n fifo_status 0 1 }  { z_u_stream_write fifo_data 1 1 } } }
	mac_res_stream { ap_fifo {  { mac_res_stream_dout fifo_port_we 0 32 }  { mac_res_stream_empty_n fifo_status 0 1 }  { mac_res_stream_read fifo_data 1 1 }  { mac_res_stream_din fifo_port_we 1 32 }  { mac_res_stream_full_n fifo_status 0 1 }  { mac_res_stream_write fifo_data 1 1 } } }
	mat_p_bram { ap_memory {  { mat_p_bram_address0 mem_address 1 6 }  { mat_p_bram_ce0 mem_ce 1 1 }  { mat_p_bram_q0 mem_dout 0 32 }  { mat_p_bram_address1 MemPortADDR2 1 6 }  { mat_p_bram_ce1 MemPortCE2 1 1 }  { mat_p_bram_q1 MemPortDOUT2 0 32 } } }
	z_old_stream { ap_fifo {  { z_old_stream_dout fifo_port_we 0 32 }  { z_old_stream_empty_n fifo_status 0 1 }  { z_old_stream_read fifo_data 1 1 }  { z_old_stream_din fifo_port_we 1 32 }  { z_old_stream_full_n fifo_status 0 1 }  { z_old_stream_write fifo_data 1 1 } } }
	vec_q_bram { ap_memory {  { vec_q_bram_address0 mem_address 1 3 }  { vec_q_bram_ce0 mem_ce 1 1 }  { vec_q_bram_q0 in_data 0 32 } } }
	x_bram { ap_memory {  { x_bram_address0 mem_address 1 3 }  { x_bram_ce0 mem_ce 1 1 }  { x_bram_we0 mem_we 1 1 }  { x_bram_d0 mem_din 1 32 } } }
}
