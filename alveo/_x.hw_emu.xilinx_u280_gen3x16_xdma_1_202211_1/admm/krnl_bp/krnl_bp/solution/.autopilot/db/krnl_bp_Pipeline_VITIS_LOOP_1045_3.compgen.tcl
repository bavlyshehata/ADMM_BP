# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name x_bram \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename x_bram \
    op interface \
    ports { x_bram_address0 { O 3 vector } x_bram_ce0 { O 1 bit } x_bram_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_bram'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name sub1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub1 \
    op interface \
    ports { sub1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name r_norm_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_norm_1_out \
    op interface \
    ports { r_norm_1_out { O 32 vector } r_norm_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name s_norm_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_norm_1_out \
    op interface \
    ports { s_norm_1_out { O 32 vector } s_norm_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name norm_x_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_norm_x_1_out \
    op interface \
    ports { norm_x_1_out { O 32 vector } norm_x_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name norm_z_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_norm_z_1_out \
    op interface \
    ports { norm_z_1_out { O 32 vector } norm_z_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name norm_u_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_norm_u_out \
    op interface \
    ports { norm_u_out { O 32 vector } norm_u_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name z_old_stream \
    type fifo \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_z_old_stream \
    op interface \
    ports { z_old_stream_dout { I 32 vector } z_old_stream_empty_n { I 1 bit } z_old_stream_read { O 1 bit } z_old_stream_din { O 32 vector } z_old_stream_full_n { I 1 bit } z_old_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name u_stream \
    type fifo \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_u_stream \
    op interface \
    ports { u_stream_dout { I 32 vector } u_stream_empty_n { I 1 bit } u_stream_read { O 1 bit } u_stream_din { O 32 vector } u_stream_full_n { I 1 bit } u_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name z_copy_2_stream \
    type fifo \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_z_copy_2_stream \
    op interface \
    ports { z_copy_2_stream_dout { I 32 vector } z_copy_2_stream_empty_n { I 1 bit } z_copy_2_stream_read { O 1 bit } z_copy_2_stream_din { O 32 vector } z_copy_2_stream_full_n { I 1 bit } z_copy_2_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName krnl_bp_flow_control_loop_pipe_sequential_init_U
set CompName krnl_bp_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix krnl_bp_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


