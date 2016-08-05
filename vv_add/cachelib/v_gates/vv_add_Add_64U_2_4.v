// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Thu Aug  4 18:18:36 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_2 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_Add_64U_2_4.v
// Design      : vv_add_Add_64U_2_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_Add_64U_2_4
   (in2,
    in1,
    out1);
  input [63:0]in2;
  input [63:0]in1;
  output [63:0]out1;

  wire \<const0> ;
  wire [63:0]in1;
  wire [63:0]in2;
  wire \n_0_out1[0]_INST_0 ;
  wire \n_0_out1[0]_INST_0_i_1 ;
  wire \n_0_out1[0]_INST_0_i_2 ;
  wire \n_0_out1[0]_INST_0_i_3 ;
  wire \n_0_out1[0]_INST_0_i_4 ;
  wire \n_0_out1[12]_INST_0 ;
  wire \n_0_out1[12]_INST_0_i_1 ;
  wire \n_0_out1[12]_INST_0_i_2 ;
  wire \n_0_out1[12]_INST_0_i_3 ;
  wire \n_0_out1[12]_INST_0_i_4 ;
  wire \n_0_out1[16]_INST_0 ;
  wire \n_0_out1[16]_INST_0_i_1 ;
  wire \n_0_out1[16]_INST_0_i_2 ;
  wire \n_0_out1[16]_INST_0_i_3 ;
  wire \n_0_out1[16]_INST_0_i_4 ;
  wire \n_0_out1[20]_INST_0 ;
  wire \n_0_out1[20]_INST_0_i_1 ;
  wire \n_0_out1[20]_INST_0_i_2 ;
  wire \n_0_out1[20]_INST_0_i_3 ;
  wire \n_0_out1[20]_INST_0_i_4 ;
  wire \n_0_out1[24]_INST_0 ;
  wire \n_0_out1[24]_INST_0_i_1 ;
  wire \n_0_out1[24]_INST_0_i_2 ;
  wire \n_0_out1[24]_INST_0_i_3 ;
  wire \n_0_out1[24]_INST_0_i_4 ;
  wire \n_0_out1[28]_INST_0 ;
  wire \n_0_out1[28]_INST_0_i_1 ;
  wire \n_0_out1[28]_INST_0_i_2 ;
  wire \n_0_out1[28]_INST_0_i_3 ;
  wire \n_0_out1[28]_INST_0_i_4 ;
  wire \n_0_out1[32]_INST_0 ;
  wire \n_0_out1[32]_INST_0_i_1 ;
  wire \n_0_out1[32]_INST_0_i_2 ;
  wire \n_0_out1[32]_INST_0_i_3 ;
  wire \n_0_out1[32]_INST_0_i_4 ;
  wire \n_0_out1[36]_INST_0 ;
  wire \n_0_out1[36]_INST_0_i_1 ;
  wire \n_0_out1[36]_INST_0_i_2 ;
  wire \n_0_out1[36]_INST_0_i_3 ;
  wire \n_0_out1[36]_INST_0_i_4 ;
  wire \n_0_out1[40]_INST_0 ;
  wire \n_0_out1[40]_INST_0_i_1 ;
  wire \n_0_out1[40]_INST_0_i_2 ;
  wire \n_0_out1[40]_INST_0_i_3 ;
  wire \n_0_out1[40]_INST_0_i_4 ;
  wire \n_0_out1[44]_INST_0 ;
  wire \n_0_out1[44]_INST_0_i_1 ;
  wire \n_0_out1[44]_INST_0_i_2 ;
  wire \n_0_out1[44]_INST_0_i_3 ;
  wire \n_0_out1[44]_INST_0_i_4 ;
  wire \n_0_out1[48]_INST_0 ;
  wire \n_0_out1[48]_INST_0_i_1 ;
  wire \n_0_out1[48]_INST_0_i_2 ;
  wire \n_0_out1[48]_INST_0_i_3 ;
  wire \n_0_out1[48]_INST_0_i_4 ;
  wire \n_0_out1[4]_INST_0 ;
  wire \n_0_out1[4]_INST_0_i_1 ;
  wire \n_0_out1[4]_INST_0_i_2 ;
  wire \n_0_out1[4]_INST_0_i_3 ;
  wire \n_0_out1[4]_INST_0_i_4 ;
  wire \n_0_out1[52]_INST_0 ;
  wire \n_0_out1[52]_INST_0_i_1 ;
  wire \n_0_out1[52]_INST_0_i_2 ;
  wire \n_0_out1[52]_INST_0_i_3 ;
  wire \n_0_out1[52]_INST_0_i_4 ;
  wire \n_0_out1[56]_INST_0 ;
  wire \n_0_out1[56]_INST_0_i_1 ;
  wire \n_0_out1[56]_INST_0_i_2 ;
  wire \n_0_out1[56]_INST_0_i_3 ;
  wire \n_0_out1[56]_INST_0_i_4 ;
  wire \n_0_out1[60]_INST_0_i_1 ;
  wire \n_0_out1[60]_INST_0_i_2 ;
  wire \n_0_out1[60]_INST_0_i_3 ;
  wire \n_0_out1[60]_INST_0_i_4 ;
  wire \n_0_out1[8]_INST_0 ;
  wire \n_0_out1[8]_INST_0_i_1 ;
  wire \n_0_out1[8]_INST_0_i_2 ;
  wire \n_0_out1[8]_INST_0_i_3 ;
  wire \n_0_out1[8]_INST_0_i_4 ;
  wire \n_1_out1[0]_INST_0 ;
  wire \n_1_out1[12]_INST_0 ;
  wire \n_1_out1[16]_INST_0 ;
  wire \n_1_out1[20]_INST_0 ;
  wire \n_1_out1[24]_INST_0 ;
  wire \n_1_out1[28]_INST_0 ;
  wire \n_1_out1[32]_INST_0 ;
  wire \n_1_out1[36]_INST_0 ;
  wire \n_1_out1[40]_INST_0 ;
  wire \n_1_out1[44]_INST_0 ;
  wire \n_1_out1[48]_INST_0 ;
  wire \n_1_out1[4]_INST_0 ;
  wire \n_1_out1[52]_INST_0 ;
  wire \n_1_out1[56]_INST_0 ;
  wire \n_1_out1[60]_INST_0 ;
  wire \n_1_out1[8]_INST_0 ;
  wire \n_2_out1[0]_INST_0 ;
  wire \n_2_out1[12]_INST_0 ;
  wire \n_2_out1[16]_INST_0 ;
  wire \n_2_out1[20]_INST_0 ;
  wire \n_2_out1[24]_INST_0 ;
  wire \n_2_out1[28]_INST_0 ;
  wire \n_2_out1[32]_INST_0 ;
  wire \n_2_out1[36]_INST_0 ;
  wire \n_2_out1[40]_INST_0 ;
  wire \n_2_out1[44]_INST_0 ;
  wire \n_2_out1[48]_INST_0 ;
  wire \n_2_out1[4]_INST_0 ;
  wire \n_2_out1[52]_INST_0 ;
  wire \n_2_out1[56]_INST_0 ;
  wire \n_2_out1[60]_INST_0 ;
  wire \n_2_out1[8]_INST_0 ;
  wire \n_3_out1[0]_INST_0 ;
  wire \n_3_out1[12]_INST_0 ;
  wire \n_3_out1[16]_INST_0 ;
  wire \n_3_out1[20]_INST_0 ;
  wire \n_3_out1[24]_INST_0 ;
  wire \n_3_out1[28]_INST_0 ;
  wire \n_3_out1[32]_INST_0 ;
  wire \n_3_out1[36]_INST_0 ;
  wire \n_3_out1[40]_INST_0 ;
  wire \n_3_out1[44]_INST_0 ;
  wire \n_3_out1[48]_INST_0 ;
  wire \n_3_out1[4]_INST_0 ;
  wire \n_3_out1[52]_INST_0 ;
  wire \n_3_out1[56]_INST_0 ;
  wire \n_3_out1[60]_INST_0 ;
  wire \n_3_out1[8]_INST_0 ;
  wire [63:0]out1;

GND GND
       (.G(\<const0> ));
CARRY4 \out1[0]_INST_0 
       (.CI(\<const0> ),
        .CO({\n_0_out1[0]_INST_0 ,\n_1_out1[0]_INST_0 ,\n_2_out1[0]_INST_0 ,\n_3_out1[0]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[3:0]),
        .O(out1[3:0]),
        .S({\n_0_out1[0]_INST_0_i_1 ,\n_0_out1[0]_INST_0_i_2 ,\n_0_out1[0]_INST_0_i_3 ,\n_0_out1[0]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0_i_1 
       (.I0(in2[3]),
        .I1(in1[3]),
        .O(\n_0_out1[0]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0_i_2 
       (.I0(in2[2]),
        .I1(in1[2]),
        .O(\n_0_out1[0]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0_i_3 
       (.I0(in2[1]),
        .I1(in1[1]),
        .O(\n_0_out1[0]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0_i_4 
       (.I0(in2[0]),
        .I1(in1[0]),
        .O(\n_0_out1[0]_INST_0_i_4 ));
CARRY4 \out1[12]_INST_0 
       (.CI(\n_0_out1[8]_INST_0 ),
        .CO({\n_0_out1[12]_INST_0 ,\n_1_out1[12]_INST_0 ,\n_2_out1[12]_INST_0 ,\n_3_out1[12]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[15:12]),
        .O(out1[15:12]),
        .S({\n_0_out1[12]_INST_0_i_1 ,\n_0_out1[12]_INST_0_i_2 ,\n_0_out1[12]_INST_0_i_3 ,\n_0_out1[12]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[12]_INST_0_i_1 
       (.I0(in2[15]),
        .I1(in1[15]),
        .O(\n_0_out1[12]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[12]_INST_0_i_2 
       (.I0(in2[14]),
        .I1(in1[14]),
        .O(\n_0_out1[12]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[12]_INST_0_i_3 
       (.I0(in2[13]),
        .I1(in1[13]),
        .O(\n_0_out1[12]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[12]_INST_0_i_4 
       (.I0(in2[12]),
        .I1(in1[12]),
        .O(\n_0_out1[12]_INST_0_i_4 ));
CARRY4 \out1[16]_INST_0 
       (.CI(\n_0_out1[12]_INST_0 ),
        .CO({\n_0_out1[16]_INST_0 ,\n_1_out1[16]_INST_0 ,\n_2_out1[16]_INST_0 ,\n_3_out1[16]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[19:16]),
        .O(out1[19:16]),
        .S({\n_0_out1[16]_INST_0_i_1 ,\n_0_out1[16]_INST_0_i_2 ,\n_0_out1[16]_INST_0_i_3 ,\n_0_out1[16]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[16]_INST_0_i_1 
       (.I0(in2[19]),
        .I1(in1[19]),
        .O(\n_0_out1[16]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[16]_INST_0_i_2 
       (.I0(in2[18]),
        .I1(in1[18]),
        .O(\n_0_out1[16]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[16]_INST_0_i_3 
       (.I0(in2[17]),
        .I1(in1[17]),
        .O(\n_0_out1[16]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[16]_INST_0_i_4 
       (.I0(in2[16]),
        .I1(in1[16]),
        .O(\n_0_out1[16]_INST_0_i_4 ));
CARRY4 \out1[20]_INST_0 
       (.CI(\n_0_out1[16]_INST_0 ),
        .CO({\n_0_out1[20]_INST_0 ,\n_1_out1[20]_INST_0 ,\n_2_out1[20]_INST_0 ,\n_3_out1[20]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[23:20]),
        .O(out1[23:20]),
        .S({\n_0_out1[20]_INST_0_i_1 ,\n_0_out1[20]_INST_0_i_2 ,\n_0_out1[20]_INST_0_i_3 ,\n_0_out1[20]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[20]_INST_0_i_1 
       (.I0(in2[23]),
        .I1(in1[23]),
        .O(\n_0_out1[20]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[20]_INST_0_i_2 
       (.I0(in2[22]),
        .I1(in1[22]),
        .O(\n_0_out1[20]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[20]_INST_0_i_3 
       (.I0(in2[21]),
        .I1(in1[21]),
        .O(\n_0_out1[20]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[20]_INST_0_i_4 
       (.I0(in2[20]),
        .I1(in1[20]),
        .O(\n_0_out1[20]_INST_0_i_4 ));
CARRY4 \out1[24]_INST_0 
       (.CI(\n_0_out1[20]_INST_0 ),
        .CO({\n_0_out1[24]_INST_0 ,\n_1_out1[24]_INST_0 ,\n_2_out1[24]_INST_0 ,\n_3_out1[24]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[27:24]),
        .O(out1[27:24]),
        .S({\n_0_out1[24]_INST_0_i_1 ,\n_0_out1[24]_INST_0_i_2 ,\n_0_out1[24]_INST_0_i_3 ,\n_0_out1[24]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[24]_INST_0_i_1 
       (.I0(in2[27]),
        .I1(in1[27]),
        .O(\n_0_out1[24]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[24]_INST_0_i_2 
       (.I0(in2[26]),
        .I1(in1[26]),
        .O(\n_0_out1[24]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[24]_INST_0_i_3 
       (.I0(in2[25]),
        .I1(in1[25]),
        .O(\n_0_out1[24]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[24]_INST_0_i_4 
       (.I0(in2[24]),
        .I1(in1[24]),
        .O(\n_0_out1[24]_INST_0_i_4 ));
CARRY4 \out1[28]_INST_0 
       (.CI(\n_0_out1[24]_INST_0 ),
        .CO({\n_0_out1[28]_INST_0 ,\n_1_out1[28]_INST_0 ,\n_2_out1[28]_INST_0 ,\n_3_out1[28]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[31:28]),
        .O(out1[31:28]),
        .S({\n_0_out1[28]_INST_0_i_1 ,\n_0_out1[28]_INST_0_i_2 ,\n_0_out1[28]_INST_0_i_3 ,\n_0_out1[28]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[28]_INST_0_i_1 
       (.I0(in2[31]),
        .I1(in1[31]),
        .O(\n_0_out1[28]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[28]_INST_0_i_2 
       (.I0(in2[30]),
        .I1(in1[30]),
        .O(\n_0_out1[28]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[28]_INST_0_i_3 
       (.I0(in2[29]),
        .I1(in1[29]),
        .O(\n_0_out1[28]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[28]_INST_0_i_4 
       (.I0(in2[28]),
        .I1(in1[28]),
        .O(\n_0_out1[28]_INST_0_i_4 ));
CARRY4 \out1[32]_INST_0 
       (.CI(\n_0_out1[28]_INST_0 ),
        .CO({\n_0_out1[32]_INST_0 ,\n_1_out1[32]_INST_0 ,\n_2_out1[32]_INST_0 ,\n_3_out1[32]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[35:32]),
        .O(out1[35:32]),
        .S({\n_0_out1[32]_INST_0_i_1 ,\n_0_out1[32]_INST_0_i_2 ,\n_0_out1[32]_INST_0_i_3 ,\n_0_out1[32]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[32]_INST_0_i_1 
       (.I0(in2[35]),
        .I1(in1[35]),
        .O(\n_0_out1[32]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[32]_INST_0_i_2 
       (.I0(in2[34]),
        .I1(in1[34]),
        .O(\n_0_out1[32]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[32]_INST_0_i_3 
       (.I0(in2[33]),
        .I1(in1[33]),
        .O(\n_0_out1[32]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[32]_INST_0_i_4 
       (.I0(in2[32]),
        .I1(in1[32]),
        .O(\n_0_out1[32]_INST_0_i_4 ));
CARRY4 \out1[36]_INST_0 
       (.CI(\n_0_out1[32]_INST_0 ),
        .CO({\n_0_out1[36]_INST_0 ,\n_1_out1[36]_INST_0 ,\n_2_out1[36]_INST_0 ,\n_3_out1[36]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[39:36]),
        .O(out1[39:36]),
        .S({\n_0_out1[36]_INST_0_i_1 ,\n_0_out1[36]_INST_0_i_2 ,\n_0_out1[36]_INST_0_i_3 ,\n_0_out1[36]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[36]_INST_0_i_1 
       (.I0(in2[39]),
        .I1(in1[39]),
        .O(\n_0_out1[36]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[36]_INST_0_i_2 
       (.I0(in2[38]),
        .I1(in1[38]),
        .O(\n_0_out1[36]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[36]_INST_0_i_3 
       (.I0(in2[37]),
        .I1(in1[37]),
        .O(\n_0_out1[36]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[36]_INST_0_i_4 
       (.I0(in2[36]),
        .I1(in1[36]),
        .O(\n_0_out1[36]_INST_0_i_4 ));
CARRY4 \out1[40]_INST_0 
       (.CI(\n_0_out1[36]_INST_0 ),
        .CO({\n_0_out1[40]_INST_0 ,\n_1_out1[40]_INST_0 ,\n_2_out1[40]_INST_0 ,\n_3_out1[40]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[43:40]),
        .O(out1[43:40]),
        .S({\n_0_out1[40]_INST_0_i_1 ,\n_0_out1[40]_INST_0_i_2 ,\n_0_out1[40]_INST_0_i_3 ,\n_0_out1[40]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[40]_INST_0_i_1 
       (.I0(in2[43]),
        .I1(in1[43]),
        .O(\n_0_out1[40]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[40]_INST_0_i_2 
       (.I0(in2[42]),
        .I1(in1[42]),
        .O(\n_0_out1[40]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[40]_INST_0_i_3 
       (.I0(in2[41]),
        .I1(in1[41]),
        .O(\n_0_out1[40]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[40]_INST_0_i_4 
       (.I0(in2[40]),
        .I1(in1[40]),
        .O(\n_0_out1[40]_INST_0_i_4 ));
CARRY4 \out1[44]_INST_0 
       (.CI(\n_0_out1[40]_INST_0 ),
        .CO({\n_0_out1[44]_INST_0 ,\n_1_out1[44]_INST_0 ,\n_2_out1[44]_INST_0 ,\n_3_out1[44]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[47:44]),
        .O(out1[47:44]),
        .S({\n_0_out1[44]_INST_0_i_1 ,\n_0_out1[44]_INST_0_i_2 ,\n_0_out1[44]_INST_0_i_3 ,\n_0_out1[44]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[44]_INST_0_i_1 
       (.I0(in2[47]),
        .I1(in1[47]),
        .O(\n_0_out1[44]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[44]_INST_0_i_2 
       (.I0(in2[46]),
        .I1(in1[46]),
        .O(\n_0_out1[44]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[44]_INST_0_i_3 
       (.I0(in2[45]),
        .I1(in1[45]),
        .O(\n_0_out1[44]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[44]_INST_0_i_4 
       (.I0(in2[44]),
        .I1(in1[44]),
        .O(\n_0_out1[44]_INST_0_i_4 ));
CARRY4 \out1[48]_INST_0 
       (.CI(\n_0_out1[44]_INST_0 ),
        .CO({\n_0_out1[48]_INST_0 ,\n_1_out1[48]_INST_0 ,\n_2_out1[48]_INST_0 ,\n_3_out1[48]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[51:48]),
        .O(out1[51:48]),
        .S({\n_0_out1[48]_INST_0_i_1 ,\n_0_out1[48]_INST_0_i_2 ,\n_0_out1[48]_INST_0_i_3 ,\n_0_out1[48]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[48]_INST_0_i_1 
       (.I0(in2[51]),
        .I1(in1[51]),
        .O(\n_0_out1[48]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[48]_INST_0_i_2 
       (.I0(in2[50]),
        .I1(in1[50]),
        .O(\n_0_out1[48]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[48]_INST_0_i_3 
       (.I0(in2[49]),
        .I1(in1[49]),
        .O(\n_0_out1[48]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[48]_INST_0_i_4 
       (.I0(in2[48]),
        .I1(in1[48]),
        .O(\n_0_out1[48]_INST_0_i_4 ));
CARRY4 \out1[4]_INST_0 
       (.CI(\n_0_out1[0]_INST_0 ),
        .CO({\n_0_out1[4]_INST_0 ,\n_1_out1[4]_INST_0 ,\n_2_out1[4]_INST_0 ,\n_3_out1[4]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[7:4]),
        .O(out1[7:4]),
        .S({\n_0_out1[4]_INST_0_i_1 ,\n_0_out1[4]_INST_0_i_2 ,\n_0_out1[4]_INST_0_i_3 ,\n_0_out1[4]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[4]_INST_0_i_1 
       (.I0(in2[7]),
        .I1(in1[7]),
        .O(\n_0_out1[4]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[4]_INST_0_i_2 
       (.I0(in2[6]),
        .I1(in1[6]),
        .O(\n_0_out1[4]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[4]_INST_0_i_3 
       (.I0(in2[5]),
        .I1(in1[5]),
        .O(\n_0_out1[4]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[4]_INST_0_i_4 
       (.I0(in2[4]),
        .I1(in1[4]),
        .O(\n_0_out1[4]_INST_0_i_4 ));
CARRY4 \out1[52]_INST_0 
       (.CI(\n_0_out1[48]_INST_0 ),
        .CO({\n_0_out1[52]_INST_0 ,\n_1_out1[52]_INST_0 ,\n_2_out1[52]_INST_0 ,\n_3_out1[52]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[55:52]),
        .O(out1[55:52]),
        .S({\n_0_out1[52]_INST_0_i_1 ,\n_0_out1[52]_INST_0_i_2 ,\n_0_out1[52]_INST_0_i_3 ,\n_0_out1[52]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[52]_INST_0_i_1 
       (.I0(in2[55]),
        .I1(in1[55]),
        .O(\n_0_out1[52]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[52]_INST_0_i_2 
       (.I0(in2[54]),
        .I1(in1[54]),
        .O(\n_0_out1[52]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[52]_INST_0_i_3 
       (.I0(in2[53]),
        .I1(in1[53]),
        .O(\n_0_out1[52]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[52]_INST_0_i_4 
       (.I0(in2[52]),
        .I1(in1[52]),
        .O(\n_0_out1[52]_INST_0_i_4 ));
CARRY4 \out1[56]_INST_0 
       (.CI(\n_0_out1[52]_INST_0 ),
        .CO({\n_0_out1[56]_INST_0 ,\n_1_out1[56]_INST_0 ,\n_2_out1[56]_INST_0 ,\n_3_out1[56]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[59:56]),
        .O(out1[59:56]),
        .S({\n_0_out1[56]_INST_0_i_1 ,\n_0_out1[56]_INST_0_i_2 ,\n_0_out1[56]_INST_0_i_3 ,\n_0_out1[56]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[56]_INST_0_i_1 
       (.I0(in2[59]),
        .I1(in1[59]),
        .O(\n_0_out1[56]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[56]_INST_0_i_2 
       (.I0(in2[58]),
        .I1(in1[58]),
        .O(\n_0_out1[56]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[56]_INST_0_i_3 
       (.I0(in2[57]),
        .I1(in1[57]),
        .O(\n_0_out1[56]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[56]_INST_0_i_4 
       (.I0(in2[56]),
        .I1(in1[56]),
        .O(\n_0_out1[56]_INST_0_i_4 ));
CARRY4 \out1[60]_INST_0 
       (.CI(\n_0_out1[56]_INST_0 ),
        .CO({\n_1_out1[60]_INST_0 ,\n_2_out1[60]_INST_0 ,\n_3_out1[60]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,in2[62:60]}),
        .O(out1[63:60]),
        .S({\n_0_out1[60]_INST_0_i_1 ,\n_0_out1[60]_INST_0_i_2 ,\n_0_out1[60]_INST_0_i_3 ,\n_0_out1[60]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[60]_INST_0_i_1 
       (.I0(in2[63]),
        .I1(in1[63]),
        .O(\n_0_out1[60]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[60]_INST_0_i_2 
       (.I0(in2[62]),
        .I1(in1[62]),
        .O(\n_0_out1[60]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[60]_INST_0_i_3 
       (.I0(in2[61]),
        .I1(in1[61]),
        .O(\n_0_out1[60]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[60]_INST_0_i_4 
       (.I0(in2[60]),
        .I1(in1[60]),
        .O(\n_0_out1[60]_INST_0_i_4 ));
CARRY4 \out1[8]_INST_0 
       (.CI(\n_0_out1[4]_INST_0 ),
        .CO({\n_0_out1[8]_INST_0 ,\n_1_out1[8]_INST_0 ,\n_2_out1[8]_INST_0 ,\n_3_out1[8]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[11:8]),
        .O(out1[11:8]),
        .S({\n_0_out1[8]_INST_0_i_1 ,\n_0_out1[8]_INST_0_i_2 ,\n_0_out1[8]_INST_0_i_3 ,\n_0_out1[8]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h6)) 
     \out1[8]_INST_0_i_1 
       (.I0(in2[11]),
        .I1(in1[11]),
        .O(\n_0_out1[8]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[8]_INST_0_i_2 
       (.I0(in2[10]),
        .I1(in1[10]),
        .O(\n_0_out1[8]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[8]_INST_0_i_3 
       (.I0(in2[9]),
        .I1(in1[9]),
        .O(\n_0_out1[8]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[8]_INST_0_i_4 
       (.I0(in2[8]),
        .I1(in1[8]),
        .O(\n_0_out1[8]_INST_0_i_4 ));
endmodule

