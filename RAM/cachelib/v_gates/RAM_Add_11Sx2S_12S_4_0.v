// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (lin64) Build 932637 Wed Jun 11 13:08:52 MDT 2014
// Date        : Fri Jul 22 16:09:46 2016
// Host        : zhang-01.ece.cornell.edu running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -cell inst_3 -force
//               /home/staff/yw777/practice/RAM/bdw_work/modules/RAM/VIVADO_DSP/v_gates/RAM_Add_11Sx2S_12S_4.v
// Design      : RAM_Add_11Sx2S_12S_4
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7vx485tffg1158-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module RAM_Add_11Sx2S_12S_4_0
   (in2,
    in1,
    out1);
  input [10:0]in2;
  input [1:0]in1;
  output [11:0]out1;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]in1;
  wire [10:0]in2;
  wire \n_0_out1[0]_INST_0 ;
  wire \n_0_out1[0]_INST_0_i_1 ;
  wire \n_0_out1[0]_INST_0_i_2 ;
  wire \n_0_out1[0]_INST_0_i_3 ;
  wire \n_0_out1[0]_INST_0_i_4 ;
  wire \n_0_out1[0]_INST_0_i_5 ;
  wire \n_0_out1[4]_INST_0 ;
  wire \n_0_out1[4]_INST_0_i_1 ;
  wire \n_0_out1[4]_INST_0_i_2 ;
  wire \n_0_out1[4]_INST_0_i_3 ;
  wire \n_0_out1[4]_INST_0_i_4 ;
  wire \n_0_out1[8]_INST_0_i_1 ;
  wire \n_0_out1[8]_INST_0_i_2 ;
  wire \n_0_out1[8]_INST_0_i_3 ;
  wire \n_1_out1[0]_INST_0 ;
  wire \n_1_out1[4]_INST_0 ;
  wire \n_1_out1[8]_INST_0 ;
  wire \n_2_out1[0]_INST_0 ;
  wire \n_2_out1[4]_INST_0 ;
  wire \n_2_out1[8]_INST_0 ;
  wire \n_3_out1[0]_INST_0 ;
  wire \n_3_out1[4]_INST_0 ;
  wire \n_3_out1[8]_INST_0 ;
  wire [11:0]out1;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
CARRY4 \out1[0]_INST_0 
       (.CI(\<const0> ),
        .CO({\n_0_out1[0]_INST_0 ,\n_1_out1[0]_INST_0 ,\n_2_out1[0]_INST_0 ,\n_3_out1[0]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI({in2[2],\n_0_out1[0]_INST_0_i_1 ,in1[1],in2[0]}),
        .O(out1[3:0]),
        .S({\n_0_out1[0]_INST_0_i_2 ,\n_0_out1[0]_INST_0_i_3 ,\n_0_out1[0]_INST_0_i_4 ,\n_0_out1[0]_INST_0_i_5 }));
LUT1 #(
    .INIT(2'h1)) 
     \out1[0]_INST_0_i_1 
       (.I0(in1[1]),
        .O(\n_0_out1[0]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h9)) 
     \out1[0]_INST_0_i_2 
       (.I0(in2[2]),
        .I1(in2[3]),
        .O(\n_0_out1[0]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0_i_3 
       (.I0(in1[1]),
        .I1(in2[2]),
        .O(\n_0_out1[0]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0_i_4 
       (.I0(in1[1]),
        .I1(in2[1]),
        .O(\n_0_out1[0]_INST_0_i_4 ));
LUT2 #(
    .INIT(4'h6)) 
     \out1[0]_INST_0_i_5 
       (.I0(in2[0]),
        .I1(in1[0]),
        .O(\n_0_out1[0]_INST_0_i_5 ));
CARRY4 \out1[4]_INST_0 
       (.CI(\n_0_out1[0]_INST_0 ),
        .CO({\n_0_out1[4]_INST_0 ,\n_1_out1[4]_INST_0 ,\n_2_out1[4]_INST_0 ,\n_3_out1[4]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI(in2[6:3]),
        .O(out1[7:4]),
        .S({\n_0_out1[4]_INST_0_i_1 ,\n_0_out1[4]_INST_0_i_2 ,\n_0_out1[4]_INST_0_i_3 ,\n_0_out1[4]_INST_0_i_4 }));
LUT2 #(
    .INIT(4'h9)) 
     \out1[4]_INST_0_i_1 
       (.I0(in2[6]),
        .I1(in2[7]),
        .O(\n_0_out1[4]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h9)) 
     \out1[4]_INST_0_i_2 
       (.I0(in2[5]),
        .I1(in2[6]),
        .O(\n_0_out1[4]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \out1[4]_INST_0_i_3 
       (.I0(in2[4]),
        .I1(in2[5]),
        .O(\n_0_out1[4]_INST_0_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \out1[4]_INST_0_i_4 
       (.I0(in2[3]),
        .I1(in2[4]),
        .O(\n_0_out1[4]_INST_0_i_4 ));
CARRY4 \out1[8]_INST_0 
       (.CI(\n_0_out1[4]_INST_0 ),
        .CO({\n_1_out1[8]_INST_0 ,\n_2_out1[8]_INST_0 ,\n_3_out1[8]_INST_0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,in2[9:7]}),
        .O(out1[11:8]),
        .S({\<const1> ,\n_0_out1[8]_INST_0_i_1 ,\n_0_out1[8]_INST_0_i_2 ,\n_0_out1[8]_INST_0_i_3 }));
LUT2 #(
    .INIT(4'h9)) 
     \out1[8]_INST_0_i_1 
       (.I0(in2[9]),
        .I1(in2[10]),
        .O(\n_0_out1[8]_INST_0_i_1 ));
LUT2 #(
    .INIT(4'h9)) 
     \out1[8]_INST_0_i_2 
       (.I0(in2[8]),
        .I1(in2[9]),
        .O(\n_0_out1[8]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \out1[8]_INST_0_i_3 
       (.I0(in2[7]),
        .I1(in2[8]),
        .O(\n_0_out1[8]_INST_0_i_3 ));
endmodule

