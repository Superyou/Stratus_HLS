// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Aug  4 23:07:45 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_3 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_Add_4U_6_4.v
// Design      : vv_add_Add_4U_6_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_Add_4U_6_4_0
   (in2,
    in1,
    out1);
  input [3:0]in2;
  input [3:0]in1;
  output [3:0]out1;

  wire [3:0]in1;
  wire [3:0]in2;
  wire [3:0]out1;
  wire \out1[3]_INST_0_i_1_n_0 ;

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
        .I2(in2[1]),
        .I3(in1[1]),
        .O(out1[1]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \out1[2]_INST_0 
       (.I0(in1[1]),
        .I1(in2[1]),
        .I2(in2[0]),
        .I3(in1[0]),
        .I4(in2[2]),
        .I5(in1[2]),
        .O(out1[2]));
  LUT5 #(
    .INIT(32'hB24D4DB2)) 
    \out1[3]_INST_0 
       (.I0(in1[2]),
        .I1(\out1[3]_INST_0_i_1_n_0 ),
        .I2(in2[2]),
        .I3(in2[3]),
        .I4(in1[3]),
        .O(out1[3]));
  LUT4 #(
    .INIT(16'h077F)) 
    \out1[3]_INST_0_i_1 
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in2[1]),
        .I3(in1[1]),
        .O(\out1[3]_INST_0_i_1_n_0 ));
endmodule

