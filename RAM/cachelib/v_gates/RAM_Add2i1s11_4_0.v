// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Fri Jul 22 16:09:49 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_11 -force
//               /home/staff/yw777/practice/RAM/bdw_work/modules/RAM/VIVADO_DSP/v_gates/RAM_Add2i1s11_4.v
// Design      : RAM_Add2i1s11_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module RAM_Add2i1s11_4_0
   (in1,
    out1);
  input [10:0]in1;
  output [11:0]out1;

  wire [10:0]in1;
  wire \n_0_out1[11]_INST_0_i_1 ;
  wire \n_0_out1[11]_INST_0_i_2 ;
  wire \n_0_out1[7]_INST_0_i_1 ;
  wire \n_0_out1[9]_INST_0_i_1 ;
  wire [11:0]out1;

LUT1 #(
    .INIT(2'h1)) 
     \out1[0]_INST_0 
       (.I0(in1[0]),
        .O(out1[0]));
LUT6 #(
    .INIT(64'hFFF7FFFF00080000)) 
     \out1[10]_INST_0 
       (.I0(in1[9]),
        .I1(in1[7]),
        .I2(\n_0_out1[11]_INST_0_i_1 ),
        .I3(\n_0_out1[11]_INST_0_i_2 ),
        .I4(in1[8]),
        .I5(in1[10]),
        .O(out1[10]));
LUT6 #(
    .INIT(64'hFFF7FFFF00000000)) 
     \out1[11]_INST_0 
       (.I0(in1[9]),
        .I1(in1[7]),
        .I2(\n_0_out1[11]_INST_0_i_1 ),
        .I3(\n_0_out1[11]_INST_0_i_2 ),
        .I4(in1[8]),
        .I5(in1[10]),
        .O(out1[11]));
LUT3 #(
    .INIT(8'h7F)) 
     \out1[11]_INST_0_i_1 
       (.I0(in1[0]),
        .I1(in1[1]),
        .I2(in1[6]),
        .O(\n_0_out1[11]_INST_0_i_1 ));
LUT4 #(
    .INIT(16'h7FFF)) 
     \out1[11]_INST_0_i_2 
       (.I0(in1[5]),
        .I1(in1[4]),
        .I2(in1[3]),
        .I3(in1[2]),
        .O(\n_0_out1[11]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[1]_INST_0 
       (.I0(in1[0]),
        .I1(in1[1]),
        .O(out1[1]));
LUT3 #(
    .INIT(8'h78)) 
     \out1[2]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .O(out1[2]));
LUT4 #(
    .INIT(16'h7F80)) 
     \out1[3]_INST_0 
       (.I0(in1[2]),
        .I1(in1[0]),
        .I2(in1[1]),
        .I3(in1[3]),
        .O(out1[3]));
LUT5 #(
    .INIT(32'h7FFF8000)) 
     \out1[4]_INST_0 
       (.I0(in1[1]),
        .I1(in1[0]),
        .I2(in1[2]),
        .I3(in1[3]),
        .I4(in1[4]),
        .O(out1[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \out1[5]_INST_0 
       (.I0(in1[4]),
        .I1(in1[3]),
        .I2(in1[2]),
        .I3(in1[0]),
        .I4(in1[1]),
        .I5(in1[5]),
        .O(out1[5]));
LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
     \out1[6]_INST_0 
       (.I0(\n_0_out1[7]_INST_0_i_1 ),
        .I1(in1[5]),
        .I2(in1[4]),
        .I3(in1[1]),
        .I4(in1[0]),
        .I5(in1[6]),
        .O(out1[6]));
LUT6 #(
    .INIT(64'hFFF7FFFF00080000)) 
     \out1[7]_INST_0 
       (.I0(in1[5]),
        .I1(in1[4]),
        .I2(\n_0_out1[7]_INST_0_i_1 ),
        .I3(\n_0_out1[9]_INST_0_i_1 ),
        .I4(in1[6]),
        .I5(in1[7]),
        .O(out1[7]));
LUT2 #(
    .INIT(4'h7)) 
     \out1[7]_INST_0_i_1 
       (.I0(in1[2]),
        .I1(in1[3]),
        .O(\n_0_out1[7]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
     \out1[8]_INST_0 
       (.I0(in1[7]),
        .I1(in1[6]),
        .I2(in1[1]),
        .I3(in1[0]),
        .I4(\n_0_out1[11]_INST_0_i_2 ),
        .I5(in1[8]),
        .O(out1[8]));
LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
     \out1[9]_INST_0 
       (.I0(in1[8]),
        .I1(\n_0_out1[11]_INST_0_i_2 ),
        .I2(\n_0_out1[9]_INST_0_i_1 ),
        .I3(in1[6]),
        .I4(in1[7]),
        .I5(in1[9]),
        .O(out1[9]));
LUT2 #(
    .INIT(4'h7)) 
     \out1[9]_INST_0_i_1 
       (.I0(in1[1]),
        .I1(in1[0]),
        .O(\n_0_out1[9]_INST_0_i_1 ));
endmodule

