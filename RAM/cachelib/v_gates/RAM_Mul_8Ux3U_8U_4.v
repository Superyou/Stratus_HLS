`timescale 1ps / 1ps

// Generated by Cadence Encounter(R) RTL Compiler RC14.11 - v14.10-s012_1

module RAM_Mul_8Ux3U_8U_4(in2, in1, out1);
  input [7:0] in2;
  input [2:0] in1;
  output [7:0] out1;
  wire [7:0] in2;
  wire [2:0] in1;
  wire [7:0] out1;
  wire mul_34_8_n_0, mul_34_8_n_1, mul_34_8_n_3, mul_34_8_n_4,
       mul_34_8_n_5, mul_34_8_n_6, mul_34_8_n_7, mul_34_8_n_8;
  wire mul_34_8_n_9, mul_34_8_n_10, mul_34_8_n_11, mul_34_8_n_12,
       mul_34_8_n_13, mul_34_8_n_14, mul_34_8_n_15, mul_34_8_n_16;
  wire mul_34_8_n_17, mul_34_8_n_18, mul_34_8_n_19, mul_34_8_n_20,
       mul_34_8_n_21, mul_34_8_n_22, mul_34_8_n_23, mul_34_8_n_24;
  wire mul_34_8_n_25, mul_34_8_n_26, mul_34_8_n_27, mul_34_8_n_28,
       mul_34_8_n_29, mul_34_8_n_30, mul_34_8_n_31, mul_34_8_n_32;
  wire mul_34_8_n_33, mul_34_8_n_34, mul_34_8_n_35, mul_34_8_n_36,
       mul_34_8_n_37, mul_34_8_n_39, mul_34_8_n_40, mul_34_8_n_41;
  wire mul_34_8_n_43, mul_34_8_n_44, mul_34_8_n_46, mul_34_8_n_48,
       mul_34_8_n_49, mul_34_8_n_51, mul_34_8_n_52;
  XNOR2X1 mul_34_8_g592(.A (mul_34_8_n_39), .B (mul_34_8_n_51), .Y
       (out1[7]));
  INVX1 mul_34_8_g593(.A (mul_34_8_n_52), .Y (out1[6]));
  ADDFX1 mul_34_8_g594(.A (mul_34_8_n_48), .B (mul_34_8_n_31), .CI
       (mul_34_8_n_34), .CO (mul_34_8_n_51), .S (mul_34_8_n_52));
  INVX1 mul_34_8_g595(.A (mul_34_8_n_49), .Y (out1[5]));
  ADDFX1 mul_34_8_g596(.A (mul_34_8_n_46), .B (mul_34_8_n_33), .CI
       (mul_34_8_n_36), .CO (mul_34_8_n_48), .S (mul_34_8_n_49));
  XNOR2X1 mul_34_8_g597(.A (mul_34_8_n_35), .B (mul_34_8_n_44), .Y
       (out1[4]));
  NAND2BX1 mul_34_8_g598(.AN (mul_34_8_n_44), .B (mul_34_8_n_35), .Y
       (mul_34_8_n_46));
  INVX1 mul_34_8_g599(.A (mul_34_8_n_43), .Y (out1[3]));
  ADDFX1 mul_34_8_g600(.A (mul_34_8_n_40), .B (mul_34_8_n_20), .CI
       (mul_34_8_n_26), .CO (mul_34_8_n_44), .S (mul_34_8_n_43));
  INVX1 mul_34_8_g601(.A (mul_34_8_n_41), .Y (out1[2]));
  ADDFX1 mul_34_8_g602(.A (mul_34_8_n_29), .B (mul_34_8_n_19), .CI
       (mul_34_8_n_16), .CO (mul_34_8_n_40), .S (mul_34_8_n_41));
  XNOR2X1 mul_34_8_g603(.A (mul_34_8_n_32), .B (mul_34_8_n_37), .Y
       (mul_34_8_n_39));
  AOI21X1 mul_34_8_g604(.A0 (mul_34_8_n_13), .A1 (mul_34_8_n_17), .B0
       (mul_34_8_n_30), .Y (out1[1]));
  XNOR2X1 mul_34_8_g605(.A (mul_34_8_n_22), .B (mul_34_8_n_27), .Y
       (mul_34_8_n_37));
  XNOR2X1 mul_34_8_g606(.A (mul_34_8_n_18), .B (mul_34_8_n_24), .Y
       (mul_34_8_n_36));
  XNOR2X1 mul_34_8_g607(.A (mul_34_8_n_23), .B (mul_34_8_n_28), .Y
       (mul_34_8_n_35));
  XNOR2X1 mul_34_8_g608(.A (mul_34_8_n_21), .B (mul_34_8_n_25), .Y
       (mul_34_8_n_34));
  NAND2BX1 mul_34_8_g609(.AN (mul_34_8_n_28), .B (mul_34_8_n_23), .Y
       (mul_34_8_n_33));
  NOR2X1 mul_34_8_g610(.A (mul_34_8_n_25), .B (mul_34_8_n_21), .Y
       (mul_34_8_n_32));
  OR2XL mul_34_8_g611(.A (mul_34_8_n_24), .B (mul_34_8_n_18), .Y
       (mul_34_8_n_31));
  INVX1 mul_34_8_g612(.A (mul_34_8_n_29), .Y (mul_34_8_n_30));
  OR2X1 mul_34_8_g613(.A (mul_34_8_n_13), .B (mul_34_8_n_17), .Y
       (mul_34_8_n_29));
  AOI22X1 mul_34_8_g614(.A0 (in2[1]), .A1 (mul_34_8_n_15), .B0
       (in2[2]), .B1 (mul_34_8_n_9), .Y (mul_34_8_n_28));
  AOI22X1 mul_34_8_g615(.A0 (in2[4]), .A1 (mul_34_8_n_15), .B0
       (in2[5]), .B1 (mul_34_8_n_9), .Y (mul_34_8_n_27));
  AOI22X1 mul_34_8_g616(.A0 (in2[0]), .A1 (mul_34_8_n_15), .B0
       (in2[1]), .B1 (mul_34_8_n_9), .Y (mul_34_8_n_26));
  AOI22X1 mul_34_8_g617(.A0 (in2[3]), .A1 (mul_34_8_n_15), .B0
       (in2[4]), .B1 (mul_34_8_n_9), .Y (mul_34_8_n_25));
  AOI22X1 mul_34_8_g618(.A0 (in2[2]), .A1 (mul_34_8_n_15), .B0
       (in2[3]), .B1 (mul_34_8_n_9), .Y (mul_34_8_n_24));
  OAI22X1 mul_34_8_g619(.A0 (mul_34_8_n_5), .A1 (mul_34_8_n_14), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_12), .Y (mul_34_8_n_23));
  OA22X1 mul_34_8_g620(.A0 (mul_34_8_n_8), .A1 (mul_34_8_n_14), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_7), .Y (mul_34_8_n_22));
  OA22X1 mul_34_8_g621(.A0 (mul_34_8_n_11), .A1 (mul_34_8_n_14), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_8), .Y (mul_34_8_n_21));
  OA22X1 mul_34_8_g622(.A0 (mul_34_8_n_6), .A1 (mul_34_8_n_14), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_5), .Y (mul_34_8_n_20));
  OA22X1 mul_34_8_g623(.A0 (mul_34_8_n_4), .A1 (mul_34_8_n_14), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_6), .Y (mul_34_8_n_19));
  OA22X1 mul_34_8_g624(.A0 (mul_34_8_n_12), .A1 (mul_34_8_n_14), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_11), .Y (mul_34_8_n_18));
  OA22X1 mul_34_8_g625(.A0 (mul_34_8_n_10), .A1 (mul_34_8_n_14), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_4), .Y (mul_34_8_n_17));
  NAND2X1 mul_34_8_g626(.A (in2[0]), .B (mul_34_8_n_9), .Y
       (mul_34_8_n_16));
  NOR2BX1 mul_34_8_g627(.AN (in1[2]), .B (mul_34_8_n_9), .Y
       (mul_34_8_n_15));
  NAND2X1 mul_34_8_g628(.A (mul_34_8_n_0), .B (mul_34_8_n_3), .Y
       (mul_34_8_n_14));
  NAND2BX1 mul_34_8_g629(.AN (out1[0]), .B (in1[1]), .Y
       (mul_34_8_n_13));
  XNOR2X1 mul_34_8_g630(.A (in2[4]), .B (in1[1]), .Y (mul_34_8_n_12));
  XNOR2X1 mul_34_8_g631(.A (in2[5]), .B (in1[1]), .Y (mul_34_8_n_11));
  XNOR2X1 mul_34_8_g632(.A (in2[0]), .B (in1[1]), .Y (mul_34_8_n_10));
  MX2X1 mul_34_8_g633(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in1[2]), .Y
       (mul_34_8_n_9));
  MXI2XL mul_34_8_g634(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in2[6]), .Y
       (mul_34_8_n_8));
  MXI2XL mul_34_8_g635(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in2[7]), .Y
       (mul_34_8_n_7));
  MXI2XL mul_34_8_g636(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in2[2]), .Y
       (mul_34_8_n_6));
  MXI2XL mul_34_8_g637(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in2[3]), .Y
       (mul_34_8_n_5));
  MXI2XL mul_34_8_g638(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in2[1]), .Y
       (mul_34_8_n_4));
  OAI22X1 mul_34_8_g639(.A0 (mul_34_8_n_1), .A1 (in1[0]), .B0
       (mul_34_8_n_0), .B1 (in1[1]), .Y (mul_34_8_n_3));
  AND2XL mul_34_8_g640(.A (in2[0]), .B (in1[0]), .Y (out1[0]));
  INVX1 mul_34_8_g641(.A (in1[1]), .Y (mul_34_8_n_1));
  INVX1 mul_34_8_g642(.A (in1[0]), .Y (mul_34_8_n_0));
endmodule


