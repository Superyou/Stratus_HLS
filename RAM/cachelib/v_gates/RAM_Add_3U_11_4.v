// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Fri Jul 22 16:10:37 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_2 -force
//               /home/staff/yw777/practice/RAM/bdw_work/modules/RAM/VIVADO_DSP/v_gates/RAM_Add_3U_11_4.v
// Design      : RAM_Add_3U_11_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module RAM_Add_3U_11_4
   (in2,
    in1,
    out1);
  input [2:0]in2;
  input [2:0]in1;
  output [2:0]out1;

  wire [2:0]in1;
  wire [2:0]in2;
  wire [2:0]out1;

LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0 
       (.I0(in2[0]),
        .I1(in1[0]),
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
    .INIT(64'hF880077F077FF880)) 
     \out1[2]_INST_0 
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in2[1]),
        .I3(in1[1]),
        .I4(in1[2]),
        .I5(in2[2]),
        .O(out1[2]));
endmodule

