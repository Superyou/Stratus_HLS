// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Aug  4 23:06:27 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_0 -force
//               /home/staff/yw777/Stratus_HLS/vv_add/bdw_work/modules/vv_add/VIVADO_DSP/v_gates/vv_add_Equal_10Ux2U_1U_4.v
// Design      : vv_add_Equal_10Ux2U_1U_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module vv_add_Equal_10Ux2U_1U_4
   (in2,
    in1,
    out1);
  input [9:0]in2;
  input [1:0]in1;
  output out1;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]in1;
  wire [9:0]in2;
  wire out1;
  wire out1_INST_0_i_1_n_0;
  wire out1_INST_0_i_2_n_0;
  wire out1_INST_0_i_3_n_0;
  wire out1_INST_0_i_4_n_0;
  wire out1_INST_0_n_1;
  wire out1_INST_0_n_2;
  wire out1_INST_0_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 out1_INST_0
       (.CI(\<const0> ),
        .CO({out1,out1_INST_0_n_1,out1_INST_0_n_2,out1_INST_0_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({out1_INST_0_i_1_n_0,out1_INST_0_i_2_n_0,out1_INST_0_i_3_n_0,out1_INST_0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    out1_INST_0_i_1
       (.I0(in2[9]),
        .O(out1_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    out1_INST_0_i_2
       (.I0(in2[8]),
        .I1(in2[7]),
        .I2(in2[6]),
        .O(out1_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    out1_INST_0_i_3
       (.I0(in2[5]),
        .I1(in2[4]),
        .I2(in2[3]),
        .O(out1_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    out1_INST_0_i_4
       (.I0(in1[0]),
        .I1(in2[0]),
        .I2(in2[2]),
        .I3(in2[1]),
        .I4(in1[1]),
        .O(out1_INST_0_i_4_n_0));
endmodule
