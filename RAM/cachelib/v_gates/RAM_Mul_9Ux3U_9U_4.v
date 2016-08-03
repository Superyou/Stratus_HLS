`timescale 1ps / 1ps

// Generated by Cadence Encounter(R) RTL Compiler RC14.11 - v14.10-s012_1

module RAM_Mul_9Ux3U_9U_4(in2, in1, out1);
  input [8:0] in2;
  input [2:0] in1;
  output [8:0] out1;
  wire [8:0] in2;
  wire [2:0] in1;
  wire [8:0] out1;
  wire mul_34_8_n_0, mul_34_8_n_1, mul_34_8_n_3, mul_34_8_n_4,
       mul_34_8_n_5, mul_34_8_n_6, mul_34_8_n_7, mul_34_8_n_8;
  wire mul_34_8_n_9, mul_34_8_n_10, mul_34_8_n_11, mul_34_8_n_12,
       mul_34_8_n_13, mul_34_8_n_14, mul_34_8_n_15, mul_34_8_n_16;
  wire mul_34_8_n_17, mul_34_8_n_18, mul_34_8_n_19, mul_34_8_n_20,
       mul_34_8_n_21, mul_34_8_n_22, mul_34_8_n_23, mul_34_8_n_24;
  wire mul_34_8_n_25, mul_34_8_n_26, mul_34_8_n_27, mul_34_8_n_28,
       mul_34_8_n_29, mul_34_8_n_30, mul_34_8_n_31, mul_34_8_n_32;
  wire mul_34_8_n_33, mul_34_8_n_34, mul_34_8_n_35, mul_34_8_n_36,
       mul_34_8_n_37, mul_34_8_n_38, mul_34_8_n_39, mul_34_8_n_41;
  wire mul_34_8_n_42, mul_34_8_n_43, mul_34_8_n_44, mul_34_8_n_45,
       mul_34_8_n_46, mul_34_8_n_47, mul_34_8_n_48, mul_34_8_n_49;
  wire mul_34_8_n_50, mul_34_8_n_51, mul_34_8_n_52, mul_34_8_n_53,
       mul_34_8_n_54, mul_34_8_n_55, mul_34_8_n_56, mul_34_8_n_57;
  wire mul_34_8_n_58, mul_34_8_n_59, mul_34_8_n_60, mul_34_8_n_62,
       mul_34_8_n_63, mul_34_8_n_64, mul_34_8_n_65, mul_34_8_n_68;
  wire mul_34_8_n_69, mul_34_8_n_71, mul_34_8_n_73, mul_34_8_n_74;
  XNOR2X1 mul_34_8_g701(.A (mul_34_8_n_53), .B (mul_34_8_n_73), .Y
       (out1[8]));
  XNOR2X1 mul_34_8_g702(.A (mul_34_8_n_56), .B (mul_34_8_n_74), .Y
       (out1[7]));
  OAI2BB1X1 mul_34_8_g703(.A0N (mul_34_8_n_50), .A1N (mul_34_8_n_71),
       .B0 (mul_34_8_n_52), .Y (mul_34_8_n_74));
  AOI211XL mul_34_8_g704(.A0 (mul_34_8_n_58), .A1 (mul_34_8_n_69), .B0
       (mul_34_8_n_62), .C0 (mul_34_8_n_49), .Y (mul_34_8_n_73));
  XNOR2X1 mul_34_8_g705(.A (mul_34_8_n_55), .B (mul_34_8_n_71), .Y
       (out1[6]));
  NAND2BX1 mul_34_8_g706(.AN (mul_34_8_n_69), .B (mul_34_8_n_51), .Y
       (mul_34_8_n_71));
  XNOR2X1 mul_34_8_g707(.A (mul_34_8_n_68), .B (mul_34_8_n_54), .Y
       (out1[5]));
  NOR2BX1 mul_34_8_g708(.AN (mul_34_8_n_68), .B (mul_34_8_n_47), .Y
       (mul_34_8_n_69));
  ADDHX1 mul_34_8_g709(.A (mul_34_8_n_45), .B (mul_34_8_n_65), .CO
       (mul_34_8_n_68), .S (out1[4]));
  INVX1 mul_34_8_g710(.A (mul_34_8_n_64), .Y (out1[3]));
  INVX1 mul_34_8_g711(.A (mul_34_8_n_63), .Y (mul_34_8_n_65));
  ADDFX1 mul_34_8_g712(.A (mul_34_8_n_59), .B (mul_34_8_n_23), .CI
       (mul_34_8_n_29), .CO (mul_34_8_n_63), .S (mul_34_8_n_64));
  OAI22X1 mul_34_8_g713(.A0 (mul_34_8_n_51), .A1 (mul_34_8_n_57), .B0
       (mul_34_8_n_48), .B1 (mul_34_8_n_52), .Y (mul_34_8_n_62));
  INVX1 mul_34_8_g714(.A (mul_34_8_n_60), .Y (out1[2]));
  ADDFX1 mul_34_8_g715(.A (mul_34_8_n_36), .B (mul_34_8_n_21), .CI
       (mul_34_8_n_19), .CO (mul_34_8_n_59), .S (mul_34_8_n_60));
  INVX1 mul_34_8_g716(.A (mul_34_8_n_57), .Y (mul_34_8_n_58));
  NAND2BX1 mul_34_8_g717(.AN (mul_34_8_n_48), .B (mul_34_8_n_50), .Y
       (mul_34_8_n_57));
  OR2XL mul_34_8_g718(.A (mul_34_8_n_49), .B (mul_34_8_n_48), .Y
       (mul_34_8_n_56));
  NAND2X1 mul_34_8_g719(.A (mul_34_8_n_52), .B (mul_34_8_n_50), .Y
       (mul_34_8_n_55));
  NAND2BX1 mul_34_8_g720(.AN (mul_34_8_n_47), .B (mul_34_8_n_51), .Y
       (mul_34_8_n_54));
  XNOR2X1 mul_34_8_g721(.A (mul_34_8_n_35), .B (mul_34_8_n_39), .Y
       (mul_34_8_n_53));
  NAND2X1 mul_34_8_g722(.A (mul_34_8_n_43), .B (mul_34_8_n_42), .Y
       (mul_34_8_n_52));
  NAND2X1 mul_34_8_g723(.A (mul_34_8_n_46), .B (mul_34_8_n_44), .Y
       (mul_34_8_n_51));
  OR2X1 mul_34_8_g724(.A (mul_34_8_n_43), .B (mul_34_8_n_42), .Y
       (mul_34_8_n_50));
  NOR2BX1 mul_34_8_g725(.AN (mul_34_8_n_41), .B (mul_34_8_n_38), .Y
       (mul_34_8_n_49));
  NOR2BX1 mul_34_8_g726(.AN (mul_34_8_n_38), .B (mul_34_8_n_41), .Y
       (mul_34_8_n_48));
  NOR2X1 mul_34_8_g727(.A (mul_34_8_n_46), .B (mul_34_8_n_44), .Y
       (mul_34_8_n_47));
  ADDHX1 mul_34_8_g728(.A (mul_34_8_n_33), .B (mul_34_8_n_24), .CO
       (mul_34_8_n_46), .S (mul_34_8_n_45));
  ADDHX1 mul_34_8_g729(.A (mul_34_8_n_34), .B (mul_34_8_n_26), .CO
       (mul_34_8_n_43), .S (mul_34_8_n_44));
  ADDHX1 mul_34_8_g730(.A (mul_34_8_n_30), .B (mul_34_8_n_22), .CO
       (mul_34_8_n_41), .S (mul_34_8_n_42));
  AOI21X1 mul_34_8_g731(.A0 (mul_34_8_n_16), .A1 (mul_34_8_n_27), .B0
       (mul_34_8_n_37), .Y (out1[1]));
  XNOR2X1 mul_34_8_g732(.A (mul_34_8_n_25), .B (mul_34_8_n_31), .Y
       (mul_34_8_n_39));
  XNOR2X1 mul_34_8_g733(.A (mul_34_8_n_28), .B (mul_34_8_n_32), .Y
       (mul_34_8_n_38));
  INVX1 mul_34_8_g734(.A (mul_34_8_n_36), .Y (mul_34_8_n_37));
  OR2X1 mul_34_8_g735(.A (mul_34_8_n_16), .B (mul_34_8_n_27), .Y
       (mul_34_8_n_36));
  NOR2X1 mul_34_8_g736(.A (mul_34_8_n_32), .B (mul_34_8_n_28), .Y
       (mul_34_8_n_35));
  AO22XL mul_34_8_g737(.A0 (in2[2]), .A1 (mul_34_8_n_20), .B0 (in2[3]),
       .B1 (mul_34_8_n_10), .Y (mul_34_8_n_34));
  AO22XL mul_34_8_g738(.A0 (in2[1]), .A1 (mul_34_8_n_20), .B0 (in2[2]),
       .B1 (mul_34_8_n_10), .Y (mul_34_8_n_33));
  AOI22X1 mul_34_8_g739(.A0 (in2[4]), .A1 (mul_34_8_n_20), .B0
       (in2[5]), .B1 (mul_34_8_n_10), .Y (mul_34_8_n_32));
  AOI22X1 mul_34_8_g740(.A0 (in2[5]), .A1 (mul_34_8_n_20), .B0
       (in2[6]), .B1 (mul_34_8_n_10), .Y (mul_34_8_n_31));
  AO22XL mul_34_8_g741(.A0 (in2[3]), .A1 (mul_34_8_n_20), .B0 (in2[4]),
       .B1 (mul_34_8_n_10), .Y (mul_34_8_n_30));
  AOI22X1 mul_34_8_g742(.A0 (in2[0]), .A1 (mul_34_8_n_20), .B0
       (in2[1]), .B1 (mul_34_8_n_10), .Y (mul_34_8_n_29));
  AOI22X1 mul_34_8_g743(.A0 (mul_34_8_n_4), .A1 (mul_34_8_n_18), .B0
       (in1[0]), .B1 (mul_34_8_n_9), .Y (mul_34_8_n_28));
  AOI22X1 mul_34_8_g744(.A0 (mul_34_8_n_13), .A1 (mul_34_8_n_18), .B0
       (in1[0]), .B1 (mul_34_8_n_12), .Y (mul_34_8_n_27));
  OAI22X1 mul_34_8_g745(.A0 (mul_34_8_n_6), .A1 (mul_34_8_n_17), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_15), .Y (mul_34_8_n_26));
  AOI22X1 mul_34_8_g746(.A0 (mul_34_8_n_9), .A1 (mul_34_8_n_18), .B0
       (in1[0]), .B1 (mul_34_8_n_14), .Y (mul_34_8_n_25));
  OAI22X1 mul_34_8_g747(.A0 (mul_34_8_n_11), .A1 (mul_34_8_n_17), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_6), .Y (mul_34_8_n_24));
  OA22X1 mul_34_8_g748(.A0 (mul_34_8_n_8), .A1 (mul_34_8_n_17), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_11), .Y (mul_34_8_n_23));
  OAI22X1 mul_34_8_g749(.A0 (mul_34_8_n_15), .A1 (mul_34_8_n_17), .B0
       (mul_34_8_n_0), .B1 (mul_34_8_n_5), .Y (mul_34_8_n_22));
  AOI22X1 mul_34_8_g750(.A0 (mul_34_8_n_12), .A1 (mul_34_8_n_18), .B0
       (in1[0]), .B1 (mul_34_8_n_7), .Y (mul_34_8_n_21));
  NOR2BX1 mul_34_8_g751(.AN (in1[2]), .B (mul_34_8_n_10), .Y
       (mul_34_8_n_20));
  NAND2X1 mul_34_8_g752(.A (in2[0]), .B (mul_34_8_n_10), .Y
       (mul_34_8_n_19));
  INVX1 mul_34_8_g753(.A (mul_34_8_n_18), .Y (mul_34_8_n_17));
  NOR2X1 mul_34_8_g754(.A (in1[0]), .B (mul_34_8_n_3), .Y
       (mul_34_8_n_18));
  NAND2BX1 mul_34_8_g755(.AN (out1[0]), .B (in1[1]), .Y
       (mul_34_8_n_16));
  XNOR2X1 mul_34_8_g756(.A (in2[5]), .B (in1[1]), .Y (mul_34_8_n_15));
  MXI2XL mul_34_8_g757(.A (mul_34_8_n_1), .B (in1[1]), .S0 (in2[8]), .Y
       (mul_34_8_n_14));
  MXI2XL mul_34_8_g758(.A (mul_34_8_n_1), .B (in1[1]), .S0 (in2[0]), .Y
       (mul_34_8_n_13));
  MXI2XL mul_34_8_g759(.A (mul_34_8_n_1), .B (in1[1]), .S0 (in2[1]), .Y
       (mul_34_8_n_12));
  MXI2XL mul_34_8_g760(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in2[3]), .Y
       (mul_34_8_n_11));
  MX2X1 mul_34_8_g761(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in1[2]), .Y
       (mul_34_8_n_10));
  MXI2XL mul_34_8_g762(.A (mul_34_8_n_1), .B (in1[1]), .S0 (in2[7]), .Y
       (mul_34_8_n_9));
  INVX1 mul_34_8_g763(.A (mul_34_8_n_7), .Y (mul_34_8_n_8));
  MX2XL mul_34_8_g764(.A (in1[1]), .B (mul_34_8_n_1), .S0 (in2[2]), .Y
       (mul_34_8_n_7));
  MX2XL mul_34_8_g765(.A (mul_34_8_n_1), .B (in1[1]), .S0 (in2[4]), .Y
       (mul_34_8_n_6));
  INVX1 mul_34_8_g766(.A (mul_34_8_n_4), .Y (mul_34_8_n_5));
  MXI2XL mul_34_8_g767(.A (mul_34_8_n_1), .B (in1[1]), .S0 (in2[6]), .Y
       (mul_34_8_n_4));
  AOI22X1 mul_34_8_g768(.A0 (in1[1]), .A1 (mul_34_8_n_0), .B0 (in1[0]),
       .B1 (mul_34_8_n_1), .Y (mul_34_8_n_3));
  AND2XL mul_34_8_g769(.A (in2[0]), .B (in1[0]), .Y (out1[0]));
  INVX1 mul_34_8_g770(.A (in1[1]), .Y (mul_34_8_n_1));
  INVX1 mul_34_8_g771(.A (in1[0]), .Y (mul_34_8_n_0));
endmodule


