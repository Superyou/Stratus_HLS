`timescale 1ps / 1ps

// Generated by Cadence Encounter(R) RTL Compiler RC14.11 - v14.10-s012_1

module RAM_Add2i1s11_1(in1, out1);
  input [10:0] in1;
  output [11:0] out1;
  wire [10:0] in1;
  wire [11:0] out1;
  wire inc_add_33_2_1_n_6, inc_add_33_2_1_n_7, inc_add_33_2_1_n_8,
       inc_add_33_2_1_n_9, inc_add_33_2_1_n_10, inc_add_33_2_1_n_11,
       inc_add_33_2_1_n_12, inc_add_33_2_1_n_13;
  wire inc_add_33_2_1_n_14, inc_add_33_2_1_n_15, inc_add_33_2_1_n_16,
       inc_add_33_2_1_n_17, inc_add_33_2_1_n_18, inc_add_33_2_1_n_19,
       inc_add_33_2_1_n_20, inc_add_33_2_1_n_22;
  wire inc_add_33_2_1_n_23, inc_add_33_2_1_n_24, inc_add_33_2_1_n_25,
       inc_add_33_2_1_n_26, inc_add_33_2_1_n_27, inc_add_33_2_1_n_28;
  INVX1 g2(.A (in1[0]), .Y (out1[0]));
  MXI2XL inc_add_33_2_1_g111(.A (inc_add_33_2_1_n_8), .B (in1[9]), .S0
       (inc_add_33_2_1_n_27), .Y (out1[9]));
  MXI2XL inc_add_33_2_1_g114(.A (inc_add_33_2_1_n_7), .B (in1[10]), .S0
       (inc_add_33_2_1_n_26), .Y (out1[11]));
  MXI2XL inc_add_33_2_1_g115(.A (inc_add_33_2_1_n_7), .B (in1[10]), .S0
       (inc_add_33_2_1_n_28), .Y (out1[10]));
  MXI2XL inc_add_33_2_1_g116(.A (in1[8]), .B (inc_add_33_2_1_n_10), .S0
       (inc_add_33_2_1_n_23), .Y (out1[8]));
  MXI2XL inc_add_33_2_1_g118(.A (inc_add_33_2_1_n_9), .B (in1[6]), .S0
       (inc_add_33_2_1_n_25), .Y (out1[6]));
  NOR2X1 inc_add_33_2_1_g119(.A (inc_add_33_2_1_n_13), .B
       (inc_add_33_2_1_n_23), .Y (inc_add_33_2_1_n_28));
  NOR2X1 inc_add_33_2_1_g120(.A (inc_add_33_2_1_n_10), .B
       (inc_add_33_2_1_n_23), .Y (inc_add_33_2_1_n_27));
  NOR2X1 inc_add_33_2_1_g121(.A (inc_add_33_2_1_n_17), .B
       (inc_add_33_2_1_n_23), .Y (inc_add_33_2_1_n_26));
  NOR2BX1 inc_add_33_2_1_g123(.AN (inc_add_33_2_1_n_19), .B
       (inc_add_33_2_1_n_14), .Y (inc_add_33_2_1_n_25));
  NAND2X1 inc_add_33_2_1_g124(.A (in1[4]), .B (inc_add_33_2_1_n_19), .Y
       (inc_add_33_2_1_n_24));
  NAND2X2 inc_add_33_2_1_g125(.A (inc_add_33_2_1_n_16), .B
       (inc_add_33_2_1_n_19), .Y (inc_add_33_2_1_n_23));
  NAND2X1 inc_add_33_2_1_g126(.A (inc_add_33_2_1_n_18), .B
       (inc_add_33_2_1_n_19), .Y (inc_add_33_2_1_n_22));
  MXI2XL inc_add_33_2_1_g127(.A (in1[2]), .B (inc_add_33_2_1_n_6), .S0
       (inc_add_33_2_1_n_11), .Y (out1[2]));
  NOR2X1 inc_add_33_2_1_g128(.A (inc_add_33_2_1_n_6), .B
       (inc_add_33_2_1_n_11), .Y (inc_add_33_2_1_n_20));
  NOR2X6 inc_add_33_2_1_g129(.A (inc_add_33_2_1_n_12), .B
       (inc_add_33_2_1_n_11), .Y (inc_add_33_2_1_n_19));
  NOR2X1 inc_add_33_2_1_g130(.A (inc_add_33_2_1_n_9), .B
       (inc_add_33_2_1_n_14), .Y (inc_add_33_2_1_n_18));
  OR2XL inc_add_33_2_1_g131(.A (inc_add_33_2_1_n_7), .B
       (inc_add_33_2_1_n_13), .Y (inc_add_33_2_1_n_17));
  NOR2X2 inc_add_33_2_1_g132(.A (inc_add_33_2_1_n_15), .B
       (inc_add_33_2_1_n_14), .Y (inc_add_33_2_1_n_16));
  NAND2X4 inc_add_33_2_1_g134(.A (in1[7]), .B (in1[6]), .Y
       (inc_add_33_2_1_n_15));
  NAND2X6 inc_add_33_2_1_g135(.A (in1[5]), .B (in1[4]), .Y
       (inc_add_33_2_1_n_14));
  NAND2X1 inc_add_33_2_1_g136(.A (in1[9]), .B (in1[8]), .Y
       (inc_add_33_2_1_n_13));
  NAND2X8 inc_add_33_2_1_g137(.A (in1[3]), .B (in1[2]), .Y
       (inc_add_33_2_1_n_12));
  NAND2X6 inc_add_33_2_1_g138(.A (in1[1]), .B (in1[0]), .Y
       (inc_add_33_2_1_n_11));
  INVX1 inc_add_33_2_1_g139(.A (in1[8]), .Y (inc_add_33_2_1_n_10));
  INVX1 inc_add_33_2_1_g141(.A (in1[6]), .Y (inc_add_33_2_1_n_9));
  INVX1 inc_add_33_2_1_g143(.A (in1[9]), .Y (inc_add_33_2_1_n_8));
  INVX1 inc_add_33_2_1_g145(.A (in1[10]), .Y (inc_add_33_2_1_n_7));
  INVX1 inc_add_33_2_1_g147(.A (in1[2]), .Y (inc_add_33_2_1_n_6));
  XNOR2X1 inc_add_33_2_1_g2(.A (in1[7]), .B (inc_add_33_2_1_n_22), .Y
       (out1[7]));
  XNOR2X1 inc_add_33_2_1_g149(.A (in1[5]), .B (inc_add_33_2_1_n_24), .Y
       (out1[5]));
  CLKXOR2X1 inc_add_33_2_1_g150(.A (in1[1]), .B (in1[0]), .Y (out1[1]));
  CLKXOR2X1 inc_add_33_2_1_g151(.A (in1[3]), .B (inc_add_33_2_1_n_20),
       .Y (out1[3]));
  CLKXOR2X1 inc_add_33_2_1_g152(.A (in1[4]), .B (inc_add_33_2_1_n_19),
       .Y (out1[4]));
endmodule

