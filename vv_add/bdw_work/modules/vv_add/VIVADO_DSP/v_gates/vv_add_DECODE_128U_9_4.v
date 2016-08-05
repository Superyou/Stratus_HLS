// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Aug  4 23:07:39 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_0 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_DECODE_128U_9_4.v
// Design      : vv_add_DECODE_128U_9_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_DECODE_128U_9_4
   (in1,
    out1);
  input [6:0]in1;
  output [127:0]out1;

  wire [6:0]in1;
  wire [127:0]out1;
  wire \out1[111]_INST_0_i_1_n_0 ;
  wire \out1[127]_INST_0_i_1_n_0 ;
  wire \out1[15]_INST_0_i_1_n_0 ;
  wire \out1[31]_INST_0_i_1_n_0 ;
  wire \out1[47]_INST_0_i_1_n_0 ;
  wire \out1[63]_INST_0_i_1_n_0 ;
  wire \out1[79]_INST_0_i_1_n_0 ;
  wire \out1[95]_INST_0_i_1_n_0 ;

  LUT5 #(
    .INIT(32'h00010000)) 
    \out1[0]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[0]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[100]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[100]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[101]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[101]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[102]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[102]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[103]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[103]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[104]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[104]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[105]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[105]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[106]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[106]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[107]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[107]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \out1[108]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[108]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[109]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[109]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[10]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[10]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[110]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[110]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out1[111]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[111]));
  LUT3 #(
    .INIT(8'h40)) 
    \out1[111]_INST_0_i_1 
       (.I0(in1[4]),
        .I1(in1[5]),
        .I2(in1[6]),
        .O(\out1[111]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out1[112]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[112]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[113]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[113]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[114]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[114]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out1[115]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[115]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[116]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[116]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[117]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[117]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[118]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[118]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[119]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[119]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[11]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[11]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[120]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[120]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[121]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[121]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[122]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[122]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[123]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[123]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \out1[124]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[124]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[125]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[125]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[126]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[126]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out1[127]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[127]_INST_0_i_1_n_0 ),
        .O(out1[127]));
  LUT3 #(
    .INIT(8'h80)) 
    \out1[127]_INST_0_i_1 
       (.I0(in1[5]),
        .I1(in1[4]),
        .I2(in1[6]),
        .O(\out1[127]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \out1[12]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[12]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[13]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[13]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[14]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out1[15]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[15]));
  LUT3 #(
    .INIT(8'h01)) 
    \out1[15]_INST_0_i_1 
       (.I0(in1[5]),
        .I1(in1[4]),
        .I2(in1[6]),
        .O(\out1[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out1[16]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[16]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[17]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[17]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[18]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[18]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out1[19]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[19]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[1]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[1]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[20]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[20]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[21]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[21]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[22]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[22]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[23]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[23]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[24]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[24]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[25]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[25]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[26]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[26]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[27]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[27]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \out1[28]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[28]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[29]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[29]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[2]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[2]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[30]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[30]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out1[31]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[31]_INST_0_i_1_n_0 ),
        .O(out1[31]));
  LUT3 #(
    .INIT(8'h04)) 
    \out1[31]_INST_0_i_1 
       (.I0(in1[5]),
        .I1(in1[4]),
        .I2(in1[6]),
        .O(\out1[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out1[32]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[32]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[33]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[33]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[34]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[34]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out1[35]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[35]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[36]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[36]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[37]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[37]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[38]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[38]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[39]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[39]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out1[3]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[3]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[40]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[40]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[41]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[41]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[42]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[42]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[43]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[43]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \out1[44]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[44]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[45]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[45]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[46]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[46]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out1[47]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[47]_INST_0_i_1_n_0 ),
        .O(out1[47]));
  LUT3 #(
    .INIT(8'h04)) 
    \out1[47]_INST_0_i_1 
       (.I0(in1[4]),
        .I1(in1[5]),
        .I2(in1[6]),
        .O(\out1[47]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out1[48]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[48]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[49]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[49]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[4]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[4]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[50]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[50]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out1[51]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[51]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[52]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[52]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[53]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[53]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[54]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[54]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[55]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[55]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[56]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[56]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[57]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[57]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[58]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[58]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[59]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[59]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[5]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[5]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \out1[60]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[60]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[61]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[61]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[62]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[62]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out1[63]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[63]_INST_0_i_1_n_0 ),
        .O(out1[63]));
  LUT3 #(
    .INIT(8'h08)) 
    \out1[63]_INST_0_i_1 
       (.I0(in1[5]),
        .I1(in1[4]),
        .I2(in1[6]),
        .O(\out1[63]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out1[64]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[64]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[65]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[65]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[66]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[66]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out1[67]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[67]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[68]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[68]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[69]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[69]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[6]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[6]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[70]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[70]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[71]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[71]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[72]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[72]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[73]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[73]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[74]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[74]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[75]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[75]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \out1[76]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[76]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[77]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[77]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[78]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[78]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out1[79]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[79]_INST_0_i_1_n_0 ),
        .O(out1[79]));
  LUT3 #(
    .INIT(8'h10)) 
    \out1[79]_INST_0_i_1 
       (.I0(in1[5]),
        .I1(in1[4]),
        .I2(in1[6]),
        .O(\out1[79]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[7]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[7]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out1[80]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[80]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[81]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[81]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[82]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[82]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out1[83]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[83]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[84]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[84]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[85]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[85]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[86]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[86]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[87]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[87]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[88]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[88]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[89]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[89]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \out1[8]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[8]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[90]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[90]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \out1[91]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[91]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \out1[92]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[92]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[93]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[93]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \out1[94]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[94]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \out1[95]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[95]_INST_0_i_1_n_0 ),
        .O(out1[95]));
  LUT3 #(
    .INIT(8'h40)) 
    \out1[95]_INST_0_i_1 
       (.I0(in1[5]),
        .I1(in1[4]),
        .I2(in1[6]),
        .O(\out1[95]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out1[96]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[96]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[97]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[97]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \out1[98]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[98]));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out1[99]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(\out1[111]_INST_0_i_1_n_0 ),
        .O(out1[99]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out1[9]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[3]),
        .I3(in1[2]),
        .I4(\out1[15]_INST_0_i_1_n_0 ),
        .O(out1[9]));
endmodule
