`timescale 1ps / 1ps

// Generated by Cadence Encounter(R) RTL Compiler RC14.11 - v14.10-s012_1

module RAM_Mul2i7u9_1(in1, out1);
  input [8:0] in1;
  output [8:0] out1;
  wire [8:0] in1;
  wire [8:0] out1;
  wire const_mul_32_8_n_0, const_mul_32_8_n_6, const_mul_32_8_n_8,
       const_mul_32_8_n_10, const_mul_32_8_n_11, const_mul_32_8_n_12,
       const_mul_32_8_n_13, const_mul_32_8_n_14;
  wire const_mul_32_8_n_15, const_mul_32_8_n_16, const_mul_32_8_n_17,
       const_mul_32_8_n_19, const_mul_32_8_n_20, const_mul_32_8_n_21,
       const_mul_32_8_n_22, const_mul_32_8_n_24;
  wire const_mul_32_8_n_25, const_mul_32_8_n_26, const_mul_32_8_n_27,
       const_mul_32_8_n_28, const_mul_32_8_n_29, const_mul_32_8_n_30,
       const_mul_32_8_n_31, const_mul_32_8_n_32;
  wire const_mul_32_8_n_34, const_mul_32_8_n_35, const_mul_32_8_n_36,
       const_mul_32_8_n_38, const_mul_32_8_n_39, const_mul_32_8_n_40,
       const_mul_32_8_n_41, const_mul_32_8_n_42;
  wire const_mul_32_8_n_43, const_mul_32_8_n_44, const_mul_32_8_n_46,
       const_mul_32_8_n_47, const_mul_32_8_n_48, n_68, n_69, n_70;
  wire n_71, n_72, n_73, n_75, n_76, n_77, n_78, n_80;
  assign out1[0] = in1[0];
  MXI2XL const_mul_32_8_g311(.A (const_mul_32_8_n_21), .B
       (const_mul_32_8_n_22), .S0 (const_mul_32_8_n_48), .Y (out1[8]));
  AOI21X1 const_mul_32_8_g315(.A0 (const_mul_32_8_n_29), .A1
       (const_mul_32_8_n_43), .B0 (const_mul_32_8_n_40), .Y
       (const_mul_32_8_n_48));
  OAI21X1 const_mul_32_8_g316(.A0 (const_mul_32_8_n_32), .A1
       (const_mul_32_8_n_42), .B0 (const_mul_32_8_n_34), .Y
       (const_mul_32_8_n_47));
  AOI21X1 const_mul_32_8_g317(.A0 (const_mul_32_8_n_12), .A1
       (const_mul_32_8_n_41), .B0 (const_mul_32_8_n_11), .Y
       (const_mul_32_8_n_46));
  OAI2BB2XL const_mul_32_8_g318(.A0N (const_mul_32_8_n_36), .A1N
       (const_mul_32_8_n_24), .B0 (const_mul_32_8_n_36), .B1
       (const_mul_32_8_n_24), .Y (out1[3]));
  OAI2BB1X1 const_mul_32_8_g320(.A0N (const_mul_32_8_n_35), .A1N
       (const_mul_32_8_n_41), .B0 (const_mul_32_8_n_39), .Y
       (const_mul_32_8_n_44));
  NOR2X1 const_mul_32_8_g321(.A (const_mul_32_8_n_32), .B
       (const_mul_32_8_n_42), .Y (const_mul_32_8_n_43));
  INVX2 const_mul_32_8_g322(.A (const_mul_32_8_n_42), .Y
       (const_mul_32_8_n_41));
  NOR2X2 const_mul_32_8_g323(.A (const_mul_32_8_n_0), .B
       (const_mul_32_8_n_38), .Y (const_mul_32_8_n_42));
  OAI211X1 const_mul_32_8_g324(.A0 (const_mul_32_8_n_34), .A1
       (const_mul_32_8_n_28), .B0 (const_mul_32_8_n_10), .C0
       (const_mul_32_8_n_26), .Y (const_mul_32_8_n_40));
  AOI2BB1X1 const_mul_32_8_g325(.A0N (const_mul_32_8_n_14), .A1N
       (const_mul_32_8_n_34), .B0 (const_mul_32_8_n_19), .Y
       (const_mul_32_8_n_39));
  NOR3X4 const_mul_32_8_g326(.A (in1[2]), .B (const_mul_32_8_n_16), .C
       (n_70), .Y (const_mul_32_8_n_38));
  MXI2XL const_mul_32_8_g327(.A (n_75), .B (n_76), .S0 (n_68), .Y
       (out1[2]));
  NAND2X1 const_mul_32_8_g328(.A (n_77), .B (n_69), .Y
       (const_mul_32_8_n_36));
  NOR2X1 const_mul_32_8_g329(.A (const_mul_32_8_n_14), .B
       (const_mul_32_8_n_32), .Y (const_mul_32_8_n_35));
  AOI21X2 const_mul_32_8_g330(.A0 (const_mul_32_8_n_11), .A1
       (const_mul_32_8_n_15), .B0 (const_mul_32_8_n_20), .Y
       (const_mul_32_8_n_34));
  NAND2X2 const_mul_32_8_g332(.A (const_mul_32_8_n_15), .B
       (const_mul_32_8_n_12), .Y (const_mul_32_8_n_32));
  NOR2BX1 const_mul_32_8_g334(.AN (const_mul_32_8_n_15), .B
       (const_mul_32_8_n_20), .Y (const_mul_32_8_n_31));
  NAND2X1 const_mul_32_8_g336(.A (const_mul_32_8_n_10), .B
       (const_mul_32_8_n_17), .Y (const_mul_32_8_n_30));
  INVX1 const_mul_32_8_g337(.A (const_mul_32_8_n_28), .Y
       (const_mul_32_8_n_29));
  NAND2X1 const_mul_32_8_g338(.A (const_mul_32_8_n_17), .B
       (const_mul_32_8_n_13), .Y (const_mul_32_8_n_28));
  NOR2X1 const_mul_32_8_g340(.A (const_mul_32_8_n_19), .B
       (const_mul_32_8_n_14), .Y (const_mul_32_8_n_27));
  NAND2X1 const_mul_32_8_g341(.A (const_mul_32_8_n_17), .B
       (const_mul_32_8_n_19), .Y (const_mul_32_8_n_26));
  NOR2BX1 const_mul_32_8_g343(.AN (const_mul_32_8_n_12), .B
       (const_mul_32_8_n_11), .Y (const_mul_32_8_n_25));
  NOR2X1 const_mul_32_8_g344(.A (const_mul_32_8_n_0), .B
       (const_mul_32_8_n_16), .Y (const_mul_32_8_n_24));
  MXI2XL const_mul_32_8_g345(.A (const_mul_32_8_n_6), .B (in1[1]), .S0
       (in1[0]), .Y (out1[1]));
  INVX1 const_mul_32_8_g346(.A (const_mul_32_8_n_21), .Y
       (const_mul_32_8_n_22));
  XNOR2X1 const_mul_32_8_g347(.A (in1[8]), .B (in1[5]), .Y
       (const_mul_32_8_n_21));
  NOR2X1 const_mul_32_8_g348(.A (n_78), .B (in1[5]), .Y
       (const_mul_32_8_n_20));
  NOR2BX1 const_mul_32_8_g349(.AN (in1[3]), .B (in1[6]), .Y
       (const_mul_32_8_n_19));
  NOR2X8 const_mul_32_8_g350(.A (in1[1]), .B (in1[0]), .Y (n_71));
  NAND2X1 const_mul_32_8_g351(.A (in1[7]), .B (const_mul_32_8_n_8), .Y
       (const_mul_32_8_n_17));
  NOR2X6 const_mul_32_8_g352(.A (in1[0]), .B (n_72), .Y
       (const_mul_32_8_n_16));
  NAND2X8 const_mul_32_8_g353(.A (in1[5]), .B (n_80), .Y
       (const_mul_32_8_n_15));
  INVX1 const_mul_32_8_g354(.A (const_mul_32_8_n_13), .Y
       (const_mul_32_8_n_14));
  NAND2X2 const_mul_32_8_g355(.A (in1[6]), .B (n_73), .Y
       (const_mul_32_8_n_13));
  NAND2X1 const_mul_32_8_g356(.A (in1[4]), .B (const_mul_32_8_n_6), .Y
       (const_mul_32_8_n_12));
  NOR2X4 const_mul_32_8_g357(.A (in1[4]), .B (const_mul_32_8_n_6), .Y
       (const_mul_32_8_n_11));
  NAND2BX1 const_mul_32_8_g359(.AN (in1[7]), .B (in1[4]), .Y
       (const_mul_32_8_n_10));
  INVX1 const_mul_32_8_g361(.A (in1[4]), .Y (const_mul_32_8_n_8));
  CLKINVX3 const_mul_32_8_g364(.A (in1[1]), .Y (const_mul_32_8_n_6));
  XNOR2X1 const_mul_32_8_g2(.A (const_mul_32_8_n_31), .B
       (const_mul_32_8_n_46), .Y (out1[5]));
  XNOR2X1 const_mul_32_8_g365(.A (const_mul_32_8_n_30), .B
       (const_mul_32_8_n_44), .Y (out1[7]));
  CLKXOR2X1 const_mul_32_8_g366(.A (const_mul_32_8_n_27), .B
       (const_mul_32_8_n_47), .Y (out1[6]));
  CLKXOR2X1 const_mul_32_8_g367(.A (const_mul_32_8_n_25), .B
       (const_mul_32_8_n_41), .Y (out1[4]));
  NOR2BX1 const_mul_32_8_g368(.AN (in1[0]), .B (in1[3]), .Y
       (const_mul_32_8_n_0));
  CLKINVX1 fopt(.A (n_69), .Y (n_68));
  BUFX3 fopt373(.A (n_71), .Y (n_69));
  CLKINVX3 fopt374(.A (n_71), .Y (n_70));
  CLKINVX8 fopt375(.A (in1[3]), .Y (n_72));
  CLKINVX1 fopt376(.A (in1[3]), .Y (n_73));
  CLKINVX1 fopt377(.A (n_76), .Y (n_75));
  CLKINVX1 fopt378(.A (n_77), .Y (n_76));
  CLKINVX1 fopt379(.A (in1[2]), .Y (n_77));
  CLKINVX2 fopt380(.A (in1[2]), .Y (n_78));
  CLKINVX8 fopt381(.A (in1[2]), .Y (n_80));
endmodule


