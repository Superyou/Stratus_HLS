// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Thu Aug  4 18:18:36 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_1 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_N_Mux_64_2_0_4.v
// Design      : vv_add_N_Mux_64_2_0_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_N_Mux_64_2_0_4
   (in3,
    in2,
    ctrl1,
    out1);
  input [63:0]in3;
  input [63:0]in2;
  input ctrl1;
  output [63:0]out1;

  wire ctrl1;
  wire [63:0]in2;
  wire [63:0]in3;
  wire [63:0]out1;

LUT3 #(
    .INIT(8'hAC)) 
     \out1[0]_INST_0 
       (.I0(in2[0]),
        .I1(in3[0]),
        .I2(ctrl1),
        .O(out1[0]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[10]_INST_0 
       (.I0(in2[10]),
        .I1(in3[10]),
        .I2(ctrl1),
        .O(out1[10]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[11]_INST_0 
       (.I0(in2[11]),
        .I1(in3[11]),
        .I2(ctrl1),
        .O(out1[11]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[12]_INST_0 
       (.I0(in2[12]),
        .I1(in3[12]),
        .I2(ctrl1),
        .O(out1[12]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[13]_INST_0 
       (.I0(in2[13]),
        .I1(in3[13]),
        .I2(ctrl1),
        .O(out1[13]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[14]_INST_0 
       (.I0(in2[14]),
        .I1(in3[14]),
        .I2(ctrl1),
        .O(out1[14]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[15]_INST_0 
       (.I0(in2[15]),
        .I1(in3[15]),
        .I2(ctrl1),
        .O(out1[15]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[16]_INST_0 
       (.I0(in2[16]),
        .I1(in3[16]),
        .I2(ctrl1),
        .O(out1[16]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[17]_INST_0 
       (.I0(in2[17]),
        .I1(in3[17]),
        .I2(ctrl1),
        .O(out1[17]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[18]_INST_0 
       (.I0(in2[18]),
        .I1(in3[18]),
        .I2(ctrl1),
        .O(out1[18]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[19]_INST_0 
       (.I0(in2[19]),
        .I1(in3[19]),
        .I2(ctrl1),
        .O(out1[19]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[1]_INST_0 
       (.I0(in2[1]),
        .I1(in3[1]),
        .I2(ctrl1),
        .O(out1[1]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[20]_INST_0 
       (.I0(in2[20]),
        .I1(in3[20]),
        .I2(ctrl1),
        .O(out1[20]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[21]_INST_0 
       (.I0(in2[21]),
        .I1(in3[21]),
        .I2(ctrl1),
        .O(out1[21]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[22]_INST_0 
       (.I0(in2[22]),
        .I1(in3[22]),
        .I2(ctrl1),
        .O(out1[22]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[23]_INST_0 
       (.I0(in2[23]),
        .I1(in3[23]),
        .I2(ctrl1),
        .O(out1[23]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[24]_INST_0 
       (.I0(in2[24]),
        .I1(in3[24]),
        .I2(ctrl1),
        .O(out1[24]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[25]_INST_0 
       (.I0(in2[25]),
        .I1(in3[25]),
        .I2(ctrl1),
        .O(out1[25]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[26]_INST_0 
       (.I0(in2[26]),
        .I1(in3[26]),
        .I2(ctrl1),
        .O(out1[26]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[27]_INST_0 
       (.I0(in2[27]),
        .I1(in3[27]),
        .I2(ctrl1),
        .O(out1[27]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[28]_INST_0 
       (.I0(in2[28]),
        .I1(in3[28]),
        .I2(ctrl1),
        .O(out1[28]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[29]_INST_0 
       (.I0(in2[29]),
        .I1(in3[29]),
        .I2(ctrl1),
        .O(out1[29]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[2]_INST_0 
       (.I0(in2[2]),
        .I1(in3[2]),
        .I2(ctrl1),
        .O(out1[2]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[30]_INST_0 
       (.I0(in2[30]),
        .I1(in3[30]),
        .I2(ctrl1),
        .O(out1[30]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[31]_INST_0 
       (.I0(in2[31]),
        .I1(in3[31]),
        .I2(ctrl1),
        .O(out1[31]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[32]_INST_0 
       (.I0(in2[32]),
        .I1(in3[32]),
        .I2(ctrl1),
        .O(out1[32]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[33]_INST_0 
       (.I0(in2[33]),
        .I1(in3[33]),
        .I2(ctrl1),
        .O(out1[33]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[34]_INST_0 
       (.I0(in2[34]),
        .I1(in3[34]),
        .I2(ctrl1),
        .O(out1[34]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[35]_INST_0 
       (.I0(in2[35]),
        .I1(in3[35]),
        .I2(ctrl1),
        .O(out1[35]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[36]_INST_0 
       (.I0(in2[36]),
        .I1(in3[36]),
        .I2(ctrl1),
        .O(out1[36]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[37]_INST_0 
       (.I0(in2[37]),
        .I1(in3[37]),
        .I2(ctrl1),
        .O(out1[37]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[38]_INST_0 
       (.I0(in2[38]),
        .I1(in3[38]),
        .I2(ctrl1),
        .O(out1[38]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[39]_INST_0 
       (.I0(in2[39]),
        .I1(in3[39]),
        .I2(ctrl1),
        .O(out1[39]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[3]_INST_0 
       (.I0(in2[3]),
        .I1(in3[3]),
        .I2(ctrl1),
        .O(out1[3]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[40]_INST_0 
       (.I0(in2[40]),
        .I1(in3[40]),
        .I2(ctrl1),
        .O(out1[40]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[41]_INST_0 
       (.I0(in2[41]),
        .I1(in3[41]),
        .I2(ctrl1),
        .O(out1[41]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[42]_INST_0 
       (.I0(in2[42]),
        .I1(in3[42]),
        .I2(ctrl1),
        .O(out1[42]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[43]_INST_0 
       (.I0(in2[43]),
        .I1(in3[43]),
        .I2(ctrl1),
        .O(out1[43]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[44]_INST_0 
       (.I0(in2[44]),
        .I1(in3[44]),
        .I2(ctrl1),
        .O(out1[44]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[45]_INST_0 
       (.I0(in2[45]),
        .I1(in3[45]),
        .I2(ctrl1),
        .O(out1[45]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[46]_INST_0 
       (.I0(in2[46]),
        .I1(in3[46]),
        .I2(ctrl1),
        .O(out1[46]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[47]_INST_0 
       (.I0(in2[47]),
        .I1(in3[47]),
        .I2(ctrl1),
        .O(out1[47]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[48]_INST_0 
       (.I0(in2[48]),
        .I1(in3[48]),
        .I2(ctrl1),
        .O(out1[48]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[49]_INST_0 
       (.I0(in2[49]),
        .I1(in3[49]),
        .I2(ctrl1),
        .O(out1[49]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[4]_INST_0 
       (.I0(in2[4]),
        .I1(in3[4]),
        .I2(ctrl1),
        .O(out1[4]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[50]_INST_0 
       (.I0(in2[50]),
        .I1(in3[50]),
        .I2(ctrl1),
        .O(out1[50]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[51]_INST_0 
       (.I0(in2[51]),
        .I1(in3[51]),
        .I2(ctrl1),
        .O(out1[51]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[52]_INST_0 
       (.I0(in2[52]),
        .I1(in3[52]),
        .I2(ctrl1),
        .O(out1[52]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[53]_INST_0 
       (.I0(in2[53]),
        .I1(in3[53]),
        .I2(ctrl1),
        .O(out1[53]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[54]_INST_0 
       (.I0(in2[54]),
        .I1(in3[54]),
        .I2(ctrl1),
        .O(out1[54]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[55]_INST_0 
       (.I0(in2[55]),
        .I1(in3[55]),
        .I2(ctrl1),
        .O(out1[55]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[56]_INST_0 
       (.I0(in2[56]),
        .I1(in3[56]),
        .I2(ctrl1),
        .O(out1[56]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[57]_INST_0 
       (.I0(in2[57]),
        .I1(in3[57]),
        .I2(ctrl1),
        .O(out1[57]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[58]_INST_0 
       (.I0(in2[58]),
        .I1(in3[58]),
        .I2(ctrl1),
        .O(out1[58]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[59]_INST_0 
       (.I0(in2[59]),
        .I1(in3[59]),
        .I2(ctrl1),
        .O(out1[59]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[5]_INST_0 
       (.I0(in2[5]),
        .I1(in3[5]),
        .I2(ctrl1),
        .O(out1[5]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[60]_INST_0 
       (.I0(in2[60]),
        .I1(in3[60]),
        .I2(ctrl1),
        .O(out1[60]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[61]_INST_0 
       (.I0(in2[61]),
        .I1(in3[61]),
        .I2(ctrl1),
        .O(out1[61]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[62]_INST_0 
       (.I0(in2[62]),
        .I1(in3[62]),
        .I2(ctrl1),
        .O(out1[62]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[63]_INST_0 
       (.I0(in2[63]),
        .I1(in3[63]),
        .I2(ctrl1),
        .O(out1[63]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[6]_INST_0 
       (.I0(in2[6]),
        .I1(in3[6]),
        .I2(ctrl1),
        .O(out1[6]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[7]_INST_0 
       (.I0(in2[7]),
        .I1(in3[7]),
        .I2(ctrl1),
        .O(out1[7]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[8]_INST_0 
       (.I0(in2[8]),
        .I1(in3[8]),
        .I2(ctrl1),
        .O(out1[8]));
LUT3 #(
    .INIT(8'hAC)) 
     \out1[9]_INST_0 
       (.I0(in2[9]),
        .I1(in3[9]),
        .I2(ctrl1),
        .O(out1[9]));
endmodule

