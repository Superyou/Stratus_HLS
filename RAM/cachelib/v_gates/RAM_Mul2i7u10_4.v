`timescale 1ps / 1ps

// Generated by Cadence Encounter(R) RTL Compiler RC14.11 - v14.10-s012_1

module RAM_Mul2i7u10_4(in1, out1);
  input [9:0] in1;
  output [9:0] out1;
  wire [9:0] in1;
  wire [9:0] out1;
  wire const_mul_32_8_n_1, const_mul_32_8_n_2, const_mul_32_8_n_3,
       const_mul_32_8_n_4, const_mul_32_8_n_5, const_mul_32_8_n_6,
       const_mul_32_8_n_7, const_mul_32_8_n_9;
  wire const_mul_32_8_n_10, const_mul_32_8_n_12, const_mul_32_8_n_13,
       const_mul_32_8_n_15, const_mul_32_8_n_16, const_mul_32_8_n_18,
       const_mul_32_8_n_19, const_mul_32_8_n_21;
  wire const_mul_32_8_n_22, const_mul_32_8_n_24, const_mul_32_8_n_25,
       const_mul_32_8_n_27, const_mul_32_8_n_28;
  assign out1[0] = in1[0];
  XNOR2X1 const_mul_32_8_g199(.A (const_mul_32_8_n_9), .B
       (const_mul_32_8_n_27), .Y (out1[9]));
  INVX1 const_mul_32_8_g200(.A (const_mul_32_8_n_28), .Y (out1[8]));
  ADDFX1 const_mul_32_8_g201(.A (const_mul_32_8_n_24), .B (in1[8]), .CI
       (const_mul_32_8_n_4), .CO (const_mul_32_8_n_27), .S
       (const_mul_32_8_n_28));
  INVX1 const_mul_32_8_g202(.A (const_mul_32_8_n_25), .Y (out1[7]));
  ADDFX1 const_mul_32_8_g203(.A (const_mul_32_8_n_21), .B (in1[7]), .CI
       (const_mul_32_8_n_2), .CO (const_mul_32_8_n_24), .S
       (const_mul_32_8_n_25));
  INVX1 const_mul_32_8_g204(.A (const_mul_32_8_n_22), .Y (out1[6]));
  ADDFX1 const_mul_32_8_g205(.A (const_mul_32_8_n_18), .B (in1[6]), .CI
       (const_mul_32_8_n_3), .CO (const_mul_32_8_n_21), .S
       (const_mul_32_8_n_22));
  INVX1 const_mul_32_8_g206(.A (const_mul_32_8_n_19), .Y (out1[5]));
  ADDFX1 const_mul_32_8_g207(.A (const_mul_32_8_n_15), .B (in1[5]), .CI
       (const_mul_32_8_n_6), .CO (const_mul_32_8_n_18), .S
       (const_mul_32_8_n_19));
  INVX1 const_mul_32_8_g208(.A (const_mul_32_8_n_16), .Y (out1[4]));
  ADDFX1 const_mul_32_8_g209(.A (const_mul_32_8_n_12), .B (in1[4]), .CI
       (const_mul_32_8_n_5), .CO (const_mul_32_8_n_15), .S
       (const_mul_32_8_n_16));
  INVX1 const_mul_32_8_g210(.A (const_mul_32_8_n_13), .Y (out1[3]));
  ADDFX1 const_mul_32_8_g211(.A (const_mul_32_8_n_10), .B (in1[3]), .CI
       (const_mul_32_8_n_1), .CO (const_mul_32_8_n_12), .S
       (const_mul_32_8_n_13));
  MXI2XL const_mul_32_8_g212(.A (in1[2]), .B (const_mul_32_8_n_6), .S0
       (const_mul_32_8_n_7), .Y (out1[2]));
  NAND2X1 const_mul_32_8_g213(.A (const_mul_32_8_n_6), .B
       (const_mul_32_8_n_7), .Y (const_mul_32_8_n_10));
  XNOR2X1 const_mul_32_8_g214(.A (in1[9]), .B (in1[6]), .Y
       (const_mul_32_8_n_9));
  OAI22X1 const_mul_32_8_g215(.A0 (const_mul_32_8_n_5), .A1 (in1[0]),
       .B0 (const_mul_32_8_n_1), .B1 (in1[1]), .Y (out1[1]));
  NOR2X1 const_mul_32_8_g216(.A (in1[1]), .B (in1[0]), .Y
       (const_mul_32_8_n_7));
  INVX1 const_mul_32_8_g217(.A (in1[2]), .Y (const_mul_32_8_n_6));
  INVX1 const_mul_32_8_g218(.A (in1[1]), .Y (const_mul_32_8_n_5));
  INVX1 const_mul_32_8_g219(.A (in1[5]), .Y (const_mul_32_8_n_4));
  INVX1 const_mul_32_8_g220(.A (in1[3]), .Y (const_mul_32_8_n_3));
  INVX1 const_mul_32_8_g221(.A (in1[4]), .Y (const_mul_32_8_n_2));
  INVX1 const_mul_32_8_g222(.A (in1[0]), .Y (const_mul_32_8_n_1));
endmodule

