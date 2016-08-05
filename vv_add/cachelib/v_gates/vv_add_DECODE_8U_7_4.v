// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Thu Aug  4 18:19:29 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_0 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_DECODE_8U_7_4.v
// Design      : vv_add_DECODE_8U_7_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_DECODE_8U_7_4
   (in1,
    out1);
  input [2:0]in1;
  output [7:0]out1;

  wire [2:0]in1;
  wire [7:0]out1;

LUT3 #(
    .INIT(8'h01)) 
     \out1[0]_INST_0 
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in1[1]),
        .O(out1[0]));
LUT3 #(
    .INIT(8'h04)) 
     \out1[1]_INST_0 
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in1[1]),
        .O(out1[1]));
LUT3 #(
    .INIT(8'h04)) 
     \out1[2]_INST_0 
       (.I0(in1[2]),
        .I1(in1[1]),
        .I2(in1[0]),
        .O(out1[2]));
LUT3 #(
    .INIT(8'h40)) 
     \out1[3]_INST_0 
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in1[1]),
        .O(out1[3]));
LUT3 #(
    .INIT(8'h02)) 
     \out1[4]_INST_0 
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in1[1]),
        .O(out1[4]));
LUT3 #(
    .INIT(8'h08)) 
     \out1[5]_INST_0 
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in1[1]),
        .O(out1[5]));
LUT3 #(
    .INIT(8'h08)) 
     \out1[6]_INST_0 
       (.I0(in1[2]),
        .I1(in1[1]),
        .I2(in1[0]),
        .O(out1[6]));
LUT3 #(
    .INIT(8'h80)) 
     \out1[7]_INST_0 
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in1[1]),
        .O(out1[7]));
endmodule

