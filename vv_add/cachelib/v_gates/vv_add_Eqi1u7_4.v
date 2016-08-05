// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Thu Aug  4 18:18:37 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_3 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_Eqi1u7_4.v
// Design      : vv_add_Eqi1u7_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_Eqi1u7_4
   (in1,
    out1);
  input [6:0]in1;
  output out1;

  wire [6:0]in1;
  wire n_0_out1_INST_0_i_1;
  wire out1;

LUT2 #(
    .INIT(4'h8)) 
     out1_INST_0
       (.I0(n_0_out1_INST_0_i_1),
        .I1(in1[0]),
        .O(out1));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     out1_INST_0_i_1
       (.I0(in1[6]),
        .I1(in1[4]),
        .I2(in1[5]),
        .I3(in1[1]),
        .I4(in1[3]),
        .I5(in1[2]),
        .O(n_0_out1_INST_0_i_1));
endmodule

