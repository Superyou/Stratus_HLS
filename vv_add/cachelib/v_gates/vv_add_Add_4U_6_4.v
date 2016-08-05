// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Thu Aug  4 20:25:04 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_2 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_Add_4U_6_4.v
// Design      : vv_add_Add_4U_6_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_Add_4U_6_4
   (in2,
    in1,
    out1);
  input [3:0]in2;
  input [3:0]in1;
  output [3:0]out1;

  wire [3:0]in1;
  wire [3:0]in2;
  wire \n_0_out1[3]_INST_0_i_1 ;
  wire \n_0_out1[3]_INST_0_i_2 ;
  wire [3:0]out1;

LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0 
       (.I0(in1[0]),
        .I1(in2[0]),
        .O(out1[0]));
LUT4 #(
    .INIT(16'h8778)) 
     \out1[1]_INST_0 
       (.I0(in2[0]),
        .I1(in1[0]),
        .I2(in1[1]),
        .I3(in2[1]),
        .O(out1[1]));
LUT6 #(
    .INIT(64'hAA959555556A6AAA)) 
     \out1[2]_INST_0 
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in2[0]),
        .I3(in1[1]),
        .I4(in2[1]),
        .I5(in2[2]),
        .O(out1[2]));
LUT6 #(
    .INIT(64'h8EEE711171118EEE)) 
     \out1[3]_INST_0 
       (.I0(in1[2]),
        .I1(in2[2]),
        .I2(\n_0_out1[3]_INST_0_i_1 ),
        .I3(\n_0_out1[3]_INST_0_i_2 ),
        .I4(in2[3]),
        .I5(in1[3]),
        .O(out1[3]));
LUT2 #(
    .INIT(4'h7)) 
     \out1[3]_INST_0_i_1 
       (.I0(in1[1]),
        .I1(in2[1]),
        .O(\n_0_out1[3]_INST_0_i_1 ));
LUT4 #(
    .INIT(16'h777F)) 
     \out1[3]_INST_0_i_2 
       (.I0(in2[0]),
        .I1(in1[0]),
        .I2(in2[1]),
        .I3(in1[1]),
        .O(\n_0_out1[3]_INST_0_i_2 ));
endmodule

