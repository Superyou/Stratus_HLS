// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Aug  4 23:07:48 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_4 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_Equal_1U_5_4.v
// Design      : vv_add_Equal_1U_5_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_Equal_1U_5_4_0
   (in2,
    in1,
    out1);
  input [6:0]in2;
  input [6:0]in1;
  output out1;

  wire [6:0]in1;
  wire [6:0]in2;
  wire out1;
  wire out1_INST_0_i_1_n_0;
  wire out1_INST_0_i_2_n_0;

  LUT4 #(
    .INIT(16'h9000)) 
    out1_INST_0
       (.I0(in1[6]),
        .I1(in2[6]),
        .I2(out1_INST_0_i_1_n_0),
        .I3(out1_INST_0_i_2_n_0),
        .O(out1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_1
       (.I0(in1[3]),
        .I1(in2[3]),
        .I2(in2[5]),
        .I3(in1[5]),
        .I4(in2[4]),
        .I5(in1[4]),
        .O(out1_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    out1_INST_0_i_2
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in2[2]),
        .I3(in1[2]),
        .I4(in2[1]),
        .I5(in1[1]),
        .O(out1_INST_0_i_2_n_0));
endmodule

