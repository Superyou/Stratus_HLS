// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Aug  4 23:07:43 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_2 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_NotBit_1U_7_4.v
// Design      : vv_add_NotBit_1U_7_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_NotBit_1U_7_4
   (in1,
    out1);
  input in1;
  output out1;

  wire in1;
  wire out1;

  LUT1 #(
    .INIT(2'h1)) 
    out1_INST_0
       (.I0(in1),
        .O(out1));
endmodule

