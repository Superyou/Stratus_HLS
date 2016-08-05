// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Aug  4 23:06:33 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_3 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_Eqi3u10_4.v
// Design      : vv_add_Eqi3u10_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_Eqi3u10_4_0
   (in1,
    out1);
  input [9:0]in1;
  output out1;

  wire [9:0]in1;
  wire out1;
  wire out1_INST_0_i_1_n_0;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    out1_INST_0
       (.I0(in1[7]),
        .I1(in1[6]),
        .I2(in1[5]),
        .I3(in1[9]),
        .I4(in1[8]),
        .I5(out1_INST_0_i_1_n_0),
        .O(out1));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    out1_INST_0_i_1
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in1[1]),
        .I3(in1[4]),
        .I4(in1[3]),
        .O(out1_INST_0_i_1_n_0));
endmodule

