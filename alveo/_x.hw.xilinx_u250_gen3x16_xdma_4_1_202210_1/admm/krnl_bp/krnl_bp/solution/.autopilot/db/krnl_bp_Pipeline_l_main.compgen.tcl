# This script segment is generated automatically by AutoPilot

set name krnl_bp_fsub_32ns_32ns_32_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
}


set name krnl_bp_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name krnl_bp_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {u_copy_1_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {u_copy_2_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {u_copy_3_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d68_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {p_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {q_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {x_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {x_hat_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {x_hat_copy_1_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {x_hat_copy_2_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {x_hat_copy_3_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {x_hat_u_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {z_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {z_copy_1_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler krnl_bp_fifo_w32_d36_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {x_hat_z_stream_U}
}


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
    id 54 \
    name mat_p_bram \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mat_p_bram \
    op interface \
    ports { mat_p_bram_address0 { O 6 vector } mat_p_bram_ce0 { O 1 bit } mat_p_bram_q0 { I 32 vector } mat_p_bram_address1 { O 6 vector } mat_p_bram_ce1 { O 1 bit } mat_p_bram_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mat_p_bram'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name vec_q_bram \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename vec_q_bram \
    op interface \
    ports { vec_q_bram_address0 { O 3 vector } vec_q_bram_ce0 { O 1 bit } vec_q_bram_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'vec_q_bram'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name x_bram \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_bram \
    op interface \
    ports { x_bram_address0 { O 3 vector } x_bram_ce0 { O 1 bit } x_bram_we0 { O 1 bit } x_bram_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_bram'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name alpha \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_alpha \
    op interface \
    ports { alpha { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name reg_alpha \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_alpha \
    op interface \
    ports { reg_alpha { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name rho \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rho \
    op interface \
    ports { rho { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
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
    id 51 \
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
    id 52 \
    name z_u_stream \
    type fifo \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_z_u_stream \
    op interface \
    ports { z_u_stream_dout { I 32 vector } z_u_stream_empty_n { I 1 bit } z_u_stream_read { O 1 bit } z_u_stream_din { O 32 vector } z_u_stream_full_n { I 1 bit } z_u_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name mac_res_stream \
    type fifo \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_mac_res_stream \
    op interface \
    ports { mac_res_stream_dout { I 32 vector } mac_res_stream_empty_n { I 1 bit } mac_res_stream_read { O 1 bit } mac_res_stream_din { O 32 vector } mac_res_stream_full_n { I 1 bit } mac_res_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
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


