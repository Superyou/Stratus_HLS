// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Aug  4 23:07:41 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_1 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_DECODE_16U_8_4.v
// Design      : vv_add_DECODE_16U_8_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_DECODE_16U_8_4_0
   (in1,
    out1);
  input [3:0]in1;
  output [15:0]out1;

  wire [3:0]in1;
  wire [15:0]out1;

  LUT4 #(
    .INIT(16'h0001)) 
    \out1[0]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[0]));
  LUT4 #(
    .INIT(16'h0020)) 
    \out1[10]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(out1[10]));
  LUT4 #(
    .INIT(16'h2000)) 
    \out1[11]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[11]));
  LUT4 #(
    .INIT(16'h0008)) 
    \out1[12]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[12]));
  LUT4 #(
    .INIT(16'h0080)) 
    \out1[13]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[13]));
  LUT4 #(
    .INIT(16'h0080)) 
    \out1[14]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(out1[14]));
  LUT4 #(
    .INIT(16'h8000)) 
    \out1[15]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[15]));
  LUT4 #(
    .INIT(16'h0010)) 
    \out1[1]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \out1[2]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(out1[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \out1[3]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[3]));
  LUT4 #(
    .INIT(16'h0002)) 
    \out1[4]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[4]));
  LUT4 #(
    .INIT(16'h0020)) 
    \out1[5]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[5]));
  LUT4 #(
    .INIT(16'h0020)) 
    \out1[6]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(out1[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    \out1[7]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[7]));
  LUT4 #(
    .INIT(16'h0002)) 
    \out1[8]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[8]));
  LUT4 #(
    .INIT(16'h0020)) 
    \out1[9]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(out1[9]));
endmodule

