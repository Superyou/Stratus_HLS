// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Mon Aug  1 12:14:03 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_1 -force
//               /home/staff/yw777/practice/RAM/bdw_work/modules/RAM/VIVADO_DSP/v_gates/RAM_LessThan_12Sx12S_1U_4.v
// Design      : RAM_LessThan_12Sx12S_1U_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module RAM_LessThan_12Sx12S_1U_4_1
   (in2,
    in1,
    out1);
  input [11:0]in2;
  input [11:0]in1;
  output out1;

  wire \<const0> ;
  wire [11:0]in1;
  wire [11:0]in2;
  wire n_0_out1_INST_0_i_1;
  wire n_0_out1_INST_0_i_10;
  wire n_0_out1_INST_0_i_11;
  wire n_0_out1_INST_0_i_12;
  wire n_0_out1_INST_0_i_13;
  wire n_0_out1_INST_0_i_14;
  wire n_0_out1_INST_0_i_15;
  wire n_0_out1_INST_0_i_16;
  wire n_0_out1_INST_0_i_17;
  wire n_0_out1_INST_0_i_18;
  wire n_0_out1_INST_0_i_19;
  wire n_0_out1_INST_0_i_2;
  wire n_0_out1_INST_0_i_20;
  wire n_0_out1_INST_0_i_3;
  wire n_0_out1_INST_0_i_4;
  wire n_0_out1_INST_0_i_5;
  wire n_0_out1_INST_0_i_6;
  wire n_0_out1_INST_0_i_7;
  wire n_0_out1_INST_0_i_8;
  wire n_0_out1_INST_0_i_9;
  wire n_1_out1_INST_0_i_1;
  wire n_1_out1_INST_0_i_4;
  wire n_2_out1_INST_0_i_1;
  wire n_2_out1_INST_0_i_4;
  wire n_3_out1_INST_0_i_1;
  wire n_3_out1_INST_0_i_4;
  wire out1;

GND GND
       (.G(\<const0> ));
CARRY4 out1_INST_0
       (.CI(n_0_out1_INST_0_i_1),
        .CO(out1),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,n_0_out1_INST_0_i_2}),
        .S({\<const0> ,\<const0> ,\<const0> ,n_0_out1_INST_0_i_3}));
CARRY4 out1_INST_0_i_1
       (.CI(n_0_out1_INST_0_i_4),
        .CO({n_0_out1_INST_0_i_1,n_1_out1_INST_0_i_1,n_2_out1_INST_0_i_1,n_3_out1_INST_0_i_1}),
        .CYINIT(\<const0> ),
        .DI({n_0_out1_INST_0_i_5,n_0_out1_INST_0_i_6,n_0_out1_INST_0_i_7,n_0_out1_INST_0_i_8}),
        .S({n_0_out1_INST_0_i_9,n_0_out1_INST_0_i_10,n_0_out1_INST_0_i_11,n_0_out1_INST_0_i_12}));
LUT2 #(
    .INIT(4'h9)) 
     out1_INST_0_i_10
       (.I0(in2[11]),
        .I1(in1[11]),
        .O(n_0_out1_INST_0_i_10));
LUT4 #(
    .INIT(16'h9009)) 
     out1_INST_0_i_11
       (.I0(in1[10]),
        .I1(in2[10]),
        .I2(in1[11]),
        .I3(in2[11]),
        .O(n_0_out1_INST_0_i_11));
LUT4 #(
    .INIT(16'h9009)) 
     out1_INST_0_i_12
       (.I0(in1[8]),
        .I1(in2[8]),
        .I2(in1[9]),
        .I3(in2[9]),
        .O(n_0_out1_INST_0_i_12));
LUT4 #(
    .INIT(16'h2F02)) 
     out1_INST_0_i_13
       (.I0(in1[6]),
        .I1(in2[6]),
        .I2(in2[7]),
        .I3(in1[7]),
        .O(n_0_out1_INST_0_i_13));
LUT4 #(
    .INIT(16'h2F02)) 
     out1_INST_0_i_14
       (.I0(in1[4]),
        .I1(in2[4]),
        .I2(in2[5]),
        .I3(in1[5]),
        .O(n_0_out1_INST_0_i_14));
LUT4 #(
    .INIT(16'h2F02)) 
     out1_INST_0_i_15
       (.I0(in1[2]),
        .I1(in2[2]),
        .I2(in2[3]),
        .I3(in1[3]),
        .O(n_0_out1_INST_0_i_15));
LUT4 #(
    .INIT(16'h2F02)) 
     out1_INST_0_i_16
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in2[1]),
        .I3(in1[1]),
        .O(n_0_out1_INST_0_i_16));
LUT4 #(
    .INIT(16'h9009)) 
     out1_INST_0_i_17
       (.I0(in1[6]),
        .I1(in2[6]),
        .I2(in1[7]),
        .I3(in2[7]),
        .O(n_0_out1_INST_0_i_17));
LUT4 #(
    .INIT(16'h9009)) 
     out1_INST_0_i_18
       (.I0(in1[4]),
        .I1(in2[4]),
        .I2(in1[5]),
        .I3(in2[5]),
        .O(n_0_out1_INST_0_i_18));
LUT4 #(
    .INIT(16'h9009)) 
     out1_INST_0_i_19
       (.I0(in1[2]),
        .I1(in2[2]),
        .I2(in1[3]),
        .I3(in2[3]),
        .O(n_0_out1_INST_0_i_19));
LUT2 #(
    .INIT(4'h2)) 
     out1_INST_0_i_2
       (.I0(in2[11]),
        .I1(in1[11]),
        .O(n_0_out1_INST_0_i_2));
LUT4 #(
    .INIT(16'h9009)) 
     out1_INST_0_i_20
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in1[1]),
        .I3(in2[1]),
        .O(n_0_out1_INST_0_i_20));
LUT2 #(
    .INIT(4'h9)) 
     out1_INST_0_i_3
       (.I0(in2[11]),
        .I1(in1[11]),
        .O(n_0_out1_INST_0_i_3));
CARRY4 out1_INST_0_i_4
       (.CI(\<const0> ),
        .CO({n_0_out1_INST_0_i_4,n_1_out1_INST_0_i_4,n_2_out1_INST_0_i_4,n_3_out1_INST_0_i_4}),
        .CYINIT(\<const0> ),
        .DI({n_0_out1_INST_0_i_13,n_0_out1_INST_0_i_14,n_0_out1_INST_0_i_15,n_0_out1_INST_0_i_16}),
        .S({n_0_out1_INST_0_i_17,n_0_out1_INST_0_i_18,n_0_out1_INST_0_i_19,n_0_out1_INST_0_i_20}));
LUT2 #(
    .INIT(4'h4)) 
     out1_INST_0_i_5
       (.I0(in2[11]),
        .I1(in1[11]),
        .O(n_0_out1_INST_0_i_5));
LUT2 #(
    .INIT(4'h4)) 
     out1_INST_0_i_6
       (.I0(in2[11]),
        .I1(in1[11]),
        .O(n_0_out1_INST_0_i_6));
LUT4 #(
    .INIT(16'h2F02)) 
     out1_INST_0_i_7
       (.I0(in1[10]),
        .I1(in2[10]),
        .I2(in2[11]),
        .I3(in1[11]),
        .O(n_0_out1_INST_0_i_7));
LUT4 #(
    .INIT(16'h2F02)) 
     out1_INST_0_i_8
       (.I0(in1[8]),
        .I1(in2[8]),
        .I2(in2[9]),
        .I3(in1[9]),
        .O(n_0_out1_INST_0_i_8));
LUT2 #(
    .INIT(4'h9)) 
     out1_INST_0_i_9
       (.I0(in2[11]),
        .I1(in1[11]),
        .O(n_0_out1_INST_0_i_9));
endmodule

