// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Mon Aug  1 12:14:02 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_0 -force
//               /home/staff/yw777/practice/RAM/bdw_work/modules/RAM/VIVADO_DSP/v_gates/RAM_Mul_10Ux3U_10U_4.v
// Design      : RAM_Mul_10Ux3U_10U_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module RAM_Mul_10Ux3U_10U_4_1
   (in2,
    in1,
    out1);
  input [9:0]in2;
  input [2:0]in1;
  output [9:0]out1;

  wire \<const0> ;
  wire [2:0]in1;
  wire [9:0]in2;
  wire \n_0_out1[0]_INST_0 ;
  wire \n_0_out1[0]_INST_0_i_1 ;
  wire \n_0_out1[0]_INST_0_i_2 ;
  wire \n_0_out1[0]_INST_0_i_3 ;
  wire \n_0_out1[0]_INST_0_i_4 ;
  wire \n_0_out1[0]_INST_0_i_5 ;
  wire \n_0_out1[0]_INST_0_i_6 ;
  wire \n_0_out1[0]_INST_0_i_7 ;
  wire \n_0_out1[0]_INST_0_i_8 ;
  wire \n_0_out1[4]_INST_0 ;
  wire \n_0_out1[4]_INST_0_i_1 ;
  wire \n_0_out1[4]_INST_0_i_10 ;
  wire \n_0_out1[4]_INST_0_i_11 ;
  wire \n_0_out1[4]_INST_0_i_12 ;
  wire \n_0_out1[4]_INST_0_i_13 ;
  wire \n_0_out1[4]_INST_0_i_14 ;
  wire \n_0_out1[4]_INST_0_i_15 ;
  wire \n_0_out1[4]_INST_0_i_16 ;
  wire \n_0_out1[4]_INST_0_i_2 ;
  wire \n_0_out1[4]_INST_0_i_3 ;
  wire \n_0_out1[4]_INST_0_i_4 ;
  wire \n_0_out1[4]_INST_0_i_5 ;
  wire \n_0_out1[4]_INST_0_i_6 ;
  wire \n_0_out1[4]_INST_0_i_7 ;
  wire \n_0_out1[4]_INST_0_i_8 ;
  wire \n_0_out1[4]_INST_0_i_9 ;
  wire \n_0_out1[8]_INST_0_i_1 ;
  wire \n_0_out1[8]_INST_0_i_2 ;
  wire \n_0_out1[8]_INST_0_i_3 ;
  wire \n_0_out1[8]_INST_0_i_4 ;
  wire \n_0_out1[8]_INST_0_i_5 ;
  wire \n_0_out1[8]_INST_0_i_6 ;
  wire \n_0_out1[8]_INST_0_i_7 ;
  wire \n_1_out1[0]_INST_0 ;
  wire \n_1_out1[4]_INST_0 ;
  wire \n_2_out1[0]_INST_0 ;
  wire \n_2_out1[4]_INST_0 ;
  wire \n_3_out1[0]_INST_0 ;
  wire \n_3_out1[4]_INST_0 ;
  wire \n_3_out1[8]_INST_0 ;
  wire [9:0]out1;

GND GND
       (.G(\<const0> ));
CARRY4 \out1[0]_INST_0 
       (.CI(\<const0> ),
        .CO({\n_0_out1[0]_INST_0 ,\n_1_out1[0]_INST_0 ,\n_2_out1[0]_INST_0 ,\n_3_out1[0]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI({\n_0_out1[0]_INST_0_i_1 ,\n_0_out1[0]_INST_0_i_2 ,\n_0_out1[0]_INST_0_i_3 ,\<const0> }),
        .O(out1[3:0]),
        .S({\n_0_out1[0]_INST_0_i_4 ,\n_0_out1[0]_INST_0_i_5 ,\n_0_out1[0]_INST_0_i_6 ,\n_0_out1[0]_INST_0_i_7 }));
LUT6 #(
    .INIT(64'h8777788878887888)) 
     \out1[0]_INST_0_i_1 
       (.I0(in1[1]),
        .I1(in2[2]),
        .I2(in1[2]),
        .I3(in2[1]),
        .I4(in2[3]),
        .I5(in1[0]),
        .O(\n_0_out1[0]_INST_0_i_1 ));
LUT4 #(
    .INIT(16'h7888)) 
     \out1[0]_INST_0_i_2 
       (.I0(in1[1]),
        .I1(in2[1]),
        .I2(in1[2]),
        .I3(in2[0]),
        .O(\n_0_out1[0]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \out1[0]_INST_0_i_3 
       (.I0(in1[0]),
        .I1(in2[1]),
        .O(\n_0_out1[0]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'h99C369C399339933)) 
     \out1[0]_INST_0_i_4 
       (.I0(in2[2]),
        .I1(\n_0_out1[0]_INST_0_i_8 ),
        .I2(in2[1]),
        .I3(in1[1]),
        .I4(in2[0]),
        .I5(in1[2]),
        .O(\n_0_out1[0]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h8777788878887888)) 
     \out1[0]_INST_0_i_5 
       (.I0(in2[0]),
        .I1(in1[2]),
        .I2(in2[1]),
        .I3(in1[1]),
        .I4(in1[0]),
        .I5(in2[2]),
        .O(\n_0_out1[0]_INST_0_i_5 ));
LUT4 #(
    .INIT(16'h7888)) 
     \out1[0]_INST_0_i_6 
       (.I0(in1[0]),
        .I1(in2[1]),
        .I2(in1[1]),
        .I3(in2[0]),
        .O(\n_0_out1[0]_INST_0_i_6 ));
LUT2 #(
    .INIT(4'h8)) 
     \out1[0]_INST_0_i_7 
       (.I0(in2[0]),
        .I1(in1[0]),
        .O(\n_0_out1[0]_INST_0_i_7 ));
LUT2 #(
    .INIT(4'h7)) 
     \out1[0]_INST_0_i_8 
       (.I0(in2[3]),
        .I1(in1[0]),
        .O(\n_0_out1[0]_INST_0_i_8 ));
CARRY4 \out1[4]_INST_0 
       (.CI(\n_0_out1[0]_INST_0 ),
        .CO({\n_0_out1[4]_INST_0 ,\n_1_out1[4]_INST_0 ,\n_2_out1[4]_INST_0 ,\n_3_out1[4]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI({\n_0_out1[4]_INST_0_i_1 ,\n_0_out1[4]_INST_0_i_2 ,\n_0_out1[4]_INST_0_i_3 ,\n_0_out1[4]_INST_0_i_4 }),
        .O(out1[7:4]),
        .S({\n_0_out1[4]_INST_0_i_5 ,\n_0_out1[4]_INST_0_i_6 ,\n_0_out1[4]_INST_0_i_7 ,\n_0_out1[4]_INST_0_i_8 }));
LUT6 #(
    .INIT(64'hF888800080008000)) 
     \out1[4]_INST_0_i_1 
       (.I0(in1[2]),
        .I1(in2[4]),
        .I2(in1[1]),
        .I3(in2[5]),
        .I4(in1[0]),
        .I5(in2[6]),
        .O(\n_0_out1[4]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
     \out1[4]_INST_0_i_10 
       (.I0(in2[6]),
        .I1(in1[0]),
        .I2(in2[5]),
        .I3(in1[1]),
        .I4(in2[4]),
        .I5(in1[2]),
        .O(\n_0_out1[4]_INST_0_i_10 ));
LUT2 #(
    .INIT(4'h7)) 
     \out1[4]_INST_0_i_11 
       (.I0(in2[4]),
        .I1(in1[2]),
        .O(\n_0_out1[4]_INST_0_i_11 ));
LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
     \out1[4]_INST_0_i_12 
       (.I0(in2[5]),
        .I1(in1[0]),
        .I2(in2[4]),
        .I3(in1[1]),
        .I4(in2[3]),
        .I5(in1[2]),
        .O(\n_0_out1[4]_INST_0_i_12 ));
LUT2 #(
    .INIT(4'h7)) 
     \out1[4]_INST_0_i_13 
       (.I0(in2[3]),
        .I1(in1[2]),
        .O(\n_0_out1[4]_INST_0_i_13 ));
LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
     \out1[4]_INST_0_i_14 
       (.I0(in2[4]),
        .I1(in1[0]),
        .I2(in2[3]),
        .I3(in1[1]),
        .I4(in2[2]),
        .I5(in1[2]),
        .O(\n_0_out1[4]_INST_0_i_14 ));
LUT2 #(
    .INIT(4'h7)) 
     \out1[4]_INST_0_i_15 
       (.I0(in2[2]),
        .I1(in1[2]),
        .O(\n_0_out1[4]_INST_0_i_15 ));
LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
     \out1[4]_INST_0_i_16 
       (.I0(in2[3]),
        .I1(in1[0]),
        .I2(in2[2]),
        .I3(in1[1]),
        .I4(in2[1]),
        .I5(in1[2]),
        .O(\n_0_out1[4]_INST_0_i_16 ));
LUT6 #(
    .INIT(64'hF888800080008000)) 
     \out1[4]_INST_0_i_2 
       (.I0(in1[2]),
        .I1(in2[3]),
        .I2(in1[1]),
        .I3(in2[4]),
        .I4(in1[0]),
        .I5(in2[5]),
        .O(\n_0_out1[4]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hF888800080008000)) 
     \out1[4]_INST_0_i_3 
       (.I0(in1[2]),
        .I1(in2[2]),
        .I2(in1[1]),
        .I3(in2[3]),
        .I4(in1[0]),
        .I5(in2[4]),
        .O(\n_0_out1[4]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'hF888800080008000)) 
     \out1[4]_INST_0_i_4 
       (.I0(in1[2]),
        .I1(in2[1]),
        .I2(in1[1]),
        .I3(in2[2]),
        .I4(in1[0]),
        .I5(in2[3]),
        .O(\n_0_out1[4]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h7887878787787878)) 
     \out1[4]_INST_0_i_5 
       (.I0(in1[1]),
        .I1(in2[6]),
        .I2(\n_0_out1[4]_INST_0_i_9 ),
        .I3(in2[7]),
        .I4(in1[0]),
        .I5(\n_0_out1[4]_INST_0_i_10 ),
        .O(\n_0_out1[4]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h7887878787787878)) 
     \out1[4]_INST_0_i_6 
       (.I0(in1[1]),
        .I1(in2[5]),
        .I2(\n_0_out1[4]_INST_0_i_11 ),
        .I3(in2[6]),
        .I4(in1[0]),
        .I5(\n_0_out1[4]_INST_0_i_12 ),
        .O(\n_0_out1[4]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'h7887878787787878)) 
     \out1[4]_INST_0_i_7 
       (.I0(in1[1]),
        .I1(in2[4]),
        .I2(\n_0_out1[4]_INST_0_i_13 ),
        .I3(in2[5]),
        .I4(in1[0]),
        .I5(\n_0_out1[4]_INST_0_i_14 ),
        .O(\n_0_out1[4]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'h7887878787787878)) 
     \out1[4]_INST_0_i_8 
       (.I0(in1[1]),
        .I1(in2[3]),
        .I2(\n_0_out1[4]_INST_0_i_15 ),
        .I3(in2[4]),
        .I4(in1[0]),
        .I5(\n_0_out1[4]_INST_0_i_16 ),
        .O(\n_0_out1[4]_INST_0_i_8 ));
LUT2 #(
    .INIT(4'h7)) 
     \out1[4]_INST_0_i_9 
       (.I0(in2[5]),
        .I1(in1[2]),
        .O(\n_0_out1[4]_INST_0_i_9 ));
CARRY4 \out1[8]_INST_0 
       (.CI(\n_0_out1[4]_INST_0 ),
        .CO(\n_3_out1[8]_INST_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\n_0_out1[8]_INST_0_i_1 }),
        .O(out1[9:8]),
        .S({\<const0> ,\<const0> ,\n_0_out1[8]_INST_0_i_2 ,\n_0_out1[8]_INST_0_i_3 }));
LUT6 #(
    .INIT(64'hF888800080008000)) 
     \out1[8]_INST_0_i_1 
       (.I0(in1[2]),
        .I1(in2[5]),
        .I2(in1[1]),
        .I3(in2[6]),
        .I4(in1[0]),
        .I5(in2[7]),
        .O(\n_0_out1[8]_INST_0_i_1 ));
LUT6 #(
    .INIT(64'h95AA559555955595)) 
     \out1[8]_INST_0_i_2 
       (.I0(\n_0_out1[8]_INST_0_i_4 ),
        .I1(in2[7]),
        .I2(in1[1]),
        .I3(\n_0_out1[8]_INST_0_i_5 ),
        .I4(in2[6]),
        .I5(in1[2]),
        .O(\n_0_out1[8]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'h7887878787787878)) 
     \out1[8]_INST_0_i_3 
       (.I0(in1[1]),
        .I1(in2[7]),
        .I2(\n_0_out1[8]_INST_0_i_6 ),
        .I3(in2[8]),
        .I4(in1[0]),
        .I5(\n_0_out1[8]_INST_0_i_7 ),
        .O(\n_0_out1[8]_INST_0_i_3 ));
LUT6 #(
    .INIT(64'h7888877787778777)) 
     \out1[8]_INST_0_i_4 
       (.I0(in1[0]),
        .I1(in2[9]),
        .I2(in2[7]),
        .I3(in1[2]),
        .I4(in2[8]),
        .I5(in1[1]),
        .O(\n_0_out1[8]_INST_0_i_4 ));
LUT2 #(
    .INIT(4'h7)) 
     \out1[8]_INST_0_i_5 
       (.I0(in2[8]),
        .I1(in1[0]),
        .O(\n_0_out1[8]_INST_0_i_5 ));
LUT2 #(
    .INIT(4'h7)) 
     \out1[8]_INST_0_i_6 
       (.I0(in2[6]),
        .I1(in1[2]),
        .O(\n_0_out1[8]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'h07777FFF7FFF7FFF)) 
     \out1[8]_INST_0_i_7 
       (.I0(in2[7]),
        .I1(in1[0]),
        .I2(in2[6]),
        .I3(in1[1]),
        .I4(in2[5]),
        .I5(in1[2]),
        .O(\n_0_out1[8]_INST_0_i_7 ));
endmodule

