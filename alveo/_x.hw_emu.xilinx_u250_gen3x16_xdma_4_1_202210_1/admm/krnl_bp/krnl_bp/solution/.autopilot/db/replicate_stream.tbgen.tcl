set moduleName replicate_stream
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {replicate_stream}
set C_modelType { void 0 }
set C_modelArgList {
	{ krnl_bp_u_stream int 32 regular {fifo 0 volatile }  }
	{ krnl_bp_u_copy_1_stream int 32 regular {fifo 1 volatile }  }
	{ krnl_bp_u_copy_2_stream int 32 regular {fifo 1 volatile }  }
	{ krnl_bp_u_copy_3_stream int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "krnl_bp_u_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "krnl_bp_u_copy_1_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "krnl_bp_u_copy_2_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "krnl_bp_u_copy_3_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ krnl_bp_u_stream_dout sc_in sc_lv 32 signal 0 } 
	{ krnl_bp_u_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ krnl_bp_u_stream_read sc_out sc_logic 1 signal 0 } 
	{ krnl_bp_u_copy_1_stream_din sc_out sc_lv 32 signal 1 } 
	{ krnl_bp_u_copy_1_stream_full_n sc_in sc_logic 1 signal 1 } 
	{ krnl_bp_u_copy_1_stream_write sc_out sc_logic 1 signal 1 } 
	{ krnl_bp_u_copy_2_stream_din sc_out sc_lv 32 signal 2 } 
	{ krnl_bp_u_copy_2_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ krnl_bp_u_copy_2_stream_write sc_out sc_logic 1 signal 2 } 
	{ krnl_bp_u_copy_3_stream_din sc_out sc_lv 32 signal 3 } 
	{ krnl_bp_u_copy_3_stream_full_n sc_in sc_logic 1 signal 3 } 
	{ krnl_bp_u_copy_3_stream_write sc_out sc_logic 1 signal 3 } 
	{ krnl_bp_u_stream_blk_n sc_out sc_logic 1 signal -1 } 
	{ krnl_bp_u_copy_1_stream_blk_n sc_out sc_logic 1 signal -1 } 
	{ krnl_bp_u_copy_2_stream_blk_n sc_out sc_logic 1 signal -1 } 
	{ krnl_bp_u_copy_3_stream_blk_n sc_out sc_logic 1 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "krnl_bp_u_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "krnl_bp_u_stream", "role": "dout" }} , 
 	{ "name": "krnl_bp_u_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_stream", "role": "empty_n" }} , 
 	{ "name": "krnl_bp_u_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_stream", "role": "read" }} , 
 	{ "name": "krnl_bp_u_copy_1_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_1_stream", "role": "din" }} , 
 	{ "name": "krnl_bp_u_copy_1_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_1_stream", "role": "full_n" }} , 
 	{ "name": "krnl_bp_u_copy_1_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_1_stream", "role": "write" }} , 
 	{ "name": "krnl_bp_u_copy_2_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_2_stream", "role": "din" }} , 
 	{ "name": "krnl_bp_u_copy_2_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_2_stream", "role": "full_n" }} , 
 	{ "name": "krnl_bp_u_copy_2_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_2_stream", "role": "write" }} , 
 	{ "name": "krnl_bp_u_copy_3_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_3_stream", "role": "din" }} , 
 	{ "name": "krnl_bp_u_copy_3_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_3_stream", "role": "full_n" }} , 
 	{ "name": "krnl_bp_u_copy_3_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_3_stream", "role": "write" }} , 
 	{ "name": "krnl_bp_u_stream_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_stream_blk_n", "role": "default" }} , 
 	{ "name": "krnl_bp_u_copy_1_stream_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_1_stream_blk_n", "role": "default" }} , 
 	{ "name": "krnl_bp_u_copy_2_stream_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_2_stream_blk_n", "role": "default" }} , 
 	{ "name": "krnl_bp_u_copy_3_stream_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "krnl_bp_u_copy_3_stream_blk_n", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
					{"Name" : "krnl_bp_u_copy_3_stream_blk_n", "Type" : "RtlPort"}]}]}]}


set ArgLastReadFirstWriteLatency {
	replicate_stream {
		krnl_bp_u_stream {Type I LastRead 7 FirstWrite -1}
		krnl_bp_u_copy_1_stream {Type O LastRead -1 FirstWrite 0}
		krnl_bp_u_copy_2_stream {Type O LastRead -1 FirstWrite 0}
		krnl_bp_u_copy_3_stream {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	krnl_bp_u_stream { ap_fifo {  { krnl_bp_u_stream_dout fifo_port_we 0 32 }  { krnl_bp_u_stream_empty_n fifo_status 0 1 }  { krnl_bp_u_stream_read fifo_data 1 1 } } }
	krnl_bp_u_copy_1_stream { ap_fifo {  { krnl_bp_u_copy_1_stream_din fifo_port_we 1 32 }  { krnl_bp_u_copy_1_stream_full_n fifo_status 0 1 }  { krnl_bp_u_copy_1_stream_write fifo_data 1 1 } } }
	krnl_bp_u_copy_2_stream { ap_fifo {  { krnl_bp_u_copy_2_stream_din fifo_port_we 1 32 }  { krnl_bp_u_copy_2_stream_full_n fifo_status 0 1 }  { krnl_bp_u_copy_2_stream_write fifo_data 1 1 } } }
	krnl_bp_u_copy_3_stream { ap_fifo {  { krnl_bp_u_copy_3_stream_din fifo_port_we 1 32 }  { krnl_bp_u_copy_3_stream_full_n fifo_status 0 1 }  { krnl_bp_u_copy_3_stream_write fifo_data 1 1 } } }
}
