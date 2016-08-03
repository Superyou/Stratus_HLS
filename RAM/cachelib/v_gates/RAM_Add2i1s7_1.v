`timescale 1ps / 1ps

// Generated by Cadence Encounter(R) RTL Compiler RC14.11 - v14.10-s012_1

module RAM_Add2i1s7_1(in1, out1);
  input [6:0] in1;
  output [7:0] out1;
  wire [6:0] in1;
  wire [7:0] out1;
  wire inc_add_33_2_1_n_3, inc_add_33_2_1_n_4, inc_add_33_2_1_n_5,
       inc_add_33_2_1_n_6, inc_add_33_2_1_n_7, inc_add_33_2_1_n_8,
       inc_add_33_2_1_n_9, inc_add_33_2_1_n_10;
  wire inc_add_33_2_1_n_11, inc_add_33_2_1_n_12, inc_add_33_2_1_n_14,
       inc_add_33_2_1_n_15, inc_add_33_2_1_n_16;
  INVX1 g2(.A (in1[0]), .Y (out1[0]));
  MXI2XL inc_add_33_2_1_g68(.A (inc_add_33_2_1_n_4), .B (in1[5]), .S0
       (inc_add_33_2_1_n_15), .Y (out1[5]));
  MXI2XL inc_add_33_2_1_g70(.A (inc_add_33_2_1_n_6), .B (in1[6]), .S0
       (inc_add_33_2_1_n_14), .Y (out1[7]));
  MXI2XL inc_add_33_2_1_g71(.A (inc_add_33_2_1_n_6), .B (in1[6]), .S0
       (inc_add_33_2_1_n_16), .Y (out1[6]));
  MXI2XL inc_add_33_2_1_g72(.A (inc_add_33_2_1_n_3), .B (in1[4]), .S0
       (inc_add_33_2_1_n_11), .Y (out1[4]));
  NOR2BX1 inc_add_33_2_1_g73(.AN (inc_add_33_2_1_n_11), .B
       (inc_add_33_2_1_n_8), .Y (inc_add_33_2_1_n_16));
  NOR2BX1 inc_add_33_2_1_g74(.AN (inc_add_33_2_1_n_11), .B
       (inc_add_33_2_1_n_3), .Y (inc_add_33_2_1_n_15));
  NOR2BX1 inc_add_33_2_1_g75(.AN (inc_add_33_2_1_n_11), .B
       (inc_add_33_2_1_n_10), .Y (inc_add_33_2_1_n_14));
  MXI2XL inc_add_33_2_1_g76(.A (in1[2]), .B (inc_add_33_2_1_n_5), .S0
       (inc_add_33_2_1_n_7), .Y (out1[2]));
  NOR2X1 inc_add_33_2_1_g77(.A (inc_add_33_2_1_n_5), .B
       (inc_add_33_2_1_n_7), .Y (inc_add_33_2_1_n_12));
  NOR2X4 inc_add_33_2_1_g78(.A (inc_add_33_2_1_n_9), .B
       (inc_add_33_2_1_n_7), .Y (inc_add_33_2_1_n_11));
  OR2XL inc_add_33_2_1_g79(.A (inc_add_33_2_1_n_6), .B
       (inc_add_33_2_1_n_8), .Y (inc_add_33_2_1_n_10));
  NAND2X8 inc_add_33_2_1_g81(.A (in1[3]), .B (in1[2]), .Y
       (inc_add_33_2_1_n_9));
  NAND2X2 inc_add_33_2_1_g82(.A (in1[5]), .B (in1[4]), .Y
       (inc_add_33_2_1_n_8));
  NAND2X6 inc_add_33_2_1_g83(.A (in1[1]), .B (in1[0]), .Y
       (inc_add_33_2_1_n_7));
  INVX1 inc_add_33_2_1_g84(.A (in1[6]), .Y (inc_add_33_2_1_n_6));
  INVX1 inc_add_33_2_1_g87(.A (in1[2]), .Y (inc_add_33_2_1_n_5));
  INVX1 inc_add_33_2_1_g88(.A (in1[5]), .Y (inc_add_33_2_1_n_4));
  INVX1 inc_add_33_2_1_g89(.A (in1[4]), .Y (inc_add_33_2_1_n_3));
  CLKXOR2X1 inc_add_33_2_1_g2(.A (in1[1]), .B (in1[0]), .Y (out1[1]));
  CLKXOR2X1 inc_add_33_2_1_g90(.A (in1[3]), .B (inc_add_33_2_1_n_12),
       .Y (out1[3]));
endmodule


