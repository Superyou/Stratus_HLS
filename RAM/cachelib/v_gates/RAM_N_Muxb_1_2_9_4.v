// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Fri Jul 22 16:09:48 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_8 -force
//               /home/staff/yw777/practice/RAM/bdw_work/modules/RAM/VIVADO_DSP/v_gates/RAM_N_Muxb_1_2_9_4.v
// Design      : RAM_N_Muxb_1_2_9_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module RAM_N_Muxb_1_2_9_4
   (in3,
    in2,
    ctrl1,
    out1);
  input in3;
  input in2;
  input ctrl1;
  output out1;

  wire ctrl1;
  wire in2;
  wire in3;
  wire out1;

LUT3 #(
    .INIT(8'hB8)) 
     out1_INST_0
       (.I0(in2),
        .I1(ctrl1),
        .I2(in3),
        .O(out1));
endmodule

