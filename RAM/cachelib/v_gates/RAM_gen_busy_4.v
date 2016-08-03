// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Fri Jul 22 16:09:45 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_0 -force
//               /home/staff/yw777/practice/RAM/bdw_work/modules/RAM/VIVADO_DSP/v_gates/RAM_gen_busy_4.v
// Design      : RAM_gen_busy_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module RAM_gen_busy_4
   (in1,
    in2,
    in3,
    in4,
    in5,
    out1);
  input in1;
  input in2;
  input in3;
  input in4;
  input in5;
  output [2:0]out1;

  wire in1;
  wire in2;
  wire in3;
  wire in4;
  wire [2:0]out1;

LUT3 #(
    .INIT(8'hEF)) 
     \out1[0]_INST_0 
       (.I0(in1),
        .I1(in4),
        .I2(in3),
        .O(out1[0]));
LUT3 #(
    .INIT(8'h02)) 
     \out1[1]_INST_0 
       (.I0(in3),
        .I1(in4),
        .I2(in1),
        .O(out1[1]));
LUT4 #(
    .INIT(16'hFEAA)) 
     \out1[2]_INST_0 
       (.I0(in4),
        .I1(in2),
        .I2(in3),
        .I3(in1),
        .O(out1[2]));
endmodule

