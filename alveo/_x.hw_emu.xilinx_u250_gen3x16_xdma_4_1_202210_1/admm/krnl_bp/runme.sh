#!/bin/sh

# 
# v++(TM)
# runme.sh: a v++-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/Vitis_HLS/2022.2/bin:/tools/Xilinx/Vitis/2022.2/bin:/tools/Xilinx/Vitis/2022.2/bin
else
  PATH=/tools/Xilinx/Vitis_HLS/2022.2/bin:/tools/Xilinx/Vitis/2022.2/bin:/tools/Xilinx/Vitis/2022.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/bsheh002/ADMM07/alveo/_x.hw_emu.xilinx_u250_gen3x16_xdma_4_1_202210_1/admm/krnl_bp'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vitis_hls -f krnl_bp.tcl -messageDb vitis_hls.pb
