use_hls_lib "rocc"
#*******************************************************************************
# Copyright 2015 Cadence Design Systems, Inc.
# All Rights Reserved.
#
#*******************************************************************************

#use_hls_lib "dummymemlib"

######################################################################
# project.tcl
#
# This file is a Stratus HLS project configuration file. It contains
# configuration commands (in TCL format) used to set up libraries,
# define system and synthesis modules, synthesis and simulation
# configurations and so on.
######################################################################
#
# Technology Libraries
#
set LIB_PATH "/opt/cadence/STRATUS152/share/stratus/techlibs/GPDK045/gsclib045_svt_v4.4/gsclib045/timing"
set LIB_LEAF "slow_vdd1v2_basicCells.lib"
use_tech_lib    "$LIB_PATH/$LIB_LEAF"

#####################################################################

# c++ compiler options
######################################################################
set CLOCK_PERIOD 10
set_attr cc_options " -DCLOCK_PERIOD=$CLOCK_PERIOD"
set_attr hls_cc_options " -DCLOCK_PERIOD=$CLOCK_PERIOD"

######################################################################
# stratus_hls Options
# This is a set of reasonable default options
######################################################################
#
# Global synthesis attributes.
#
set_attr clock_period           $CLOCK_PERIOD
set_attr message_detail         2
set_attr default_input_delay    0

# Always set timing_aggression to some value to improve timing closure
#set_attr timing_aggression 0
#set_attr flatten_arrays all
#set_attr unroll_loops off

# Control automatic creation of custom datapath components
# op creates non-square parts, expr creates components for design-specific expressions
set_attr dpopt_auto all ;# all, off, array, op, expr

# Show additional details in log file
set_attr message_detail 3 ;# 0, 1, 2, or 3

######################################################################
# System Module Configurations
######################################################################

define_system_module main main.cc
define_system_module System system.cc
define_system_module tb tb.cc

######################################################################
# Synthesis Module Configurations
######################################################################
define_hls_module vv_add vv_add.cc
#define_hls_module vv_add vv_add.cc

define_io_config * PIN

define_hls_config vv_add ASIC
define_hls_config vv_add DPOPT -     -DUSE_DPOPT
define_hls_config vv_add VIVADO      --fpga_tool=Vivado  --fpga_part=xc7vx485tffg1158-2
define_hls_config vv_add VIVADO_DSP  --fpga_tool=Vivado  --fpga_part=xc7vx485tffg1158-2 --fpga_use_dsp=on -DUSE_DSP
define_hls_config vv_add QUARTUS     --fpga_tool=Quartus --fpga_part=5CGXFC3B6F23C6
define_hls_config vv_add QUARTUS_DSP --fpga_tool=Quartus --fpga_part=5CGXFC3B6F23C6     --fpga_use_dsp=on -DUSE_DSP

######################################################################
# Simulation Configurations
######################################################################
use_verilog_simulator vcs ;# 'mti' or 'incisive' or 'vcs' or 'vcsi''
enable_waveform_logging -vcd ;# to store signal transitions vcd or fsdb
set_attr end_of_sim_command "make cmp_result"

# A behavioral PIN-level configuration
define_sim_config B {vv_add BEH}

# The following rules are TCL code to create a simulation configuration
# for RTL_V for each hls_config defined.
foreach config [find -hls_config *] {
  set cname [get_attr name $config]
  define_sim_config ${cname}_V "vv_add RTL_V $cname"
}

######################################################################
# RC Logic Synthesis Configurations
######################################################################

define_logic_synthesis_config LS_ASIC        {vv_add ASIC}        -options [list BDW_LS_TECHLIB $LIB_PATH/$LIB_LEAF] {BDW_LS_CLK_GATING normal} {BDW_LS_NOGATES 1} -command bdw_runrc
define_logic_synthesis_config LS_DPOPT       {vv_add DPOPT}       -options [list BDW_LS_TECHLIB $LIB_PATH/$LIB_LEAF] {BDW_LS_CLK_GATING normal} {BDW_LS_NOGATES 1} -command bdw_runrc
define_logic_synthesis_config LS_VIVADO      {vv_add VIVADO}      -command bdw_runvivado
define_logic_synthesis_config LS_VIVADO_DSP  {vv_add VIVADO_DSP}  -command bdw_runvivado
define_logic_synthesis_config LS_QUARTUS     {vv_add QUARTUS}     -command bdw_runquartus
define_logic_synthesis_config LS_QUARTUS_DSP {vv_add QUARTUS_DSP} -command bdw_runquartvv_add
