`timescale 1ps / 1ps

// Generated by Cadence Encounter(R) RTL Compiler RC14.11 - v14.10-s012_1

module RAM_Mul_10Ux3U_10U_1(in2, in1, out1);
  input [9:0] in2;
  input [2:0] in1;
  output [9:0] out1;
  wire [9:0] in2;
  wire [2:0] in1;
  wire [9:0] out1;
  wire mul_34_8_n_2, mul_34_8_n_3, mul_34_8_n_4, mul_34_8_n_5,
       mul_34_8_n_6, mul_34_8_n_10, mul_34_8_n_15, mul_34_8_n_17;
  wire mul_34_8_n_18, mul_34_8_n_21, mul_34_8_n_22, mul_34_8_n_24,
       mul_34_8_n_26, mul_34_8_n_27, mul_34_8_n_29, mul_34_8_n_30;
  wire mul_34_8_n_31, mul_34_8_n_32, mul_34_8_n_34, mul_34_8_n_35,
       mul_34_8_n_36, mul_34_8_n_37, mul_34_8_n_39, mul_34_8_n_40;
  wire mul_34_8_n_41, mul_34_8_n_42, mul_34_8_n_43, mul_34_8_n_45,
       mul_34_8_n_46, mul_34_8_n_47, mul_34_8_n_48, mul_34_8_n_51;
  wire mul_34_8_n_52, mul_34_8_n_53, mul_34_8_n_54, mul_34_8_n_55,
       mul_34_8_n_56, mul_34_8_n_57, mul_34_8_n_58, mul_34_8_n_59;
  wire mul_34_8_n_60, mul_34_8_n_61, mul_34_8_n_62, mul_34_8_n_63,
       mul_34_8_n_64, mul_34_8_n_65, mul_34_8_n_66, mul_34_8_n_67;
  wire mul_34_8_n_68, mul_34_8_n_69, mul_34_8_n_70, mul_34_8_n_71,
       mul_34_8_n_72, mul_34_8_n_73, mul_34_8_n_74, mul_34_8_n_75;
  wire mul_34_8_n_76, mul_34_8_n_77, mul_34_8_n_78, mul_34_8_n_79,
       mul_34_8_n_80, mul_34_8_n_81, mul_34_8_n_82, mul_34_8_n_83;
  wire mul_34_8_n_84, mul_34_8_n_85, mul_34_8_n_86, mul_34_8_n_87,
       mul_34_8_n_88, mul_34_8_n_90, mul_34_8_n_91, mul_34_8_n_92;
  wire mul_34_8_n_93, mul_34_8_n_94, mul_34_8_n_95, mul_34_8_n_96,
       mul_34_8_n_97, mul_34_8_n_98, mul_34_8_n_99, mul_34_8_n_100;
  wire mul_34_8_n_101, mul_34_8_n_102, mul_34_8_n_103, mul_34_8_n_104,
       mul_34_8_n_105, mul_34_8_n_106, mul_34_8_n_107, mul_34_8_n_108;
  wire mul_34_8_n_109, mul_34_8_n_110, mul_34_8_n_111, mul_34_8_n_112,
       mul_34_8_n_113, mul_34_8_n_114, mul_34_8_n_115, mul_34_8_n_116;
  wire mul_34_8_n_117, mul_34_8_n_118, mul_34_8_n_119, mul_34_8_n_120,
       mul_34_8_n_121, n_136, n_137, n_138;
  wire n_139, n_140, n_144, n_145, n_148, n_149, n_152, n_153;
  wire n_154, n_156, n_158, n_159, n_160, n_161, n_162, n_163;
  wire n_165, n_167, n_168, n_169, n_170, n_171, n_172, n_173;
  wire n_174, n_203, n_204, n_205, n_207;
  MXI2XL mul_34_8_g823(.A (mul_34_8_n_105), .B (mul_34_8_n_104), .S0
       (mul_34_8_n_121), .Y (out1[9]));
  OAI21X2 mul_34_8_g826(.A0 (mul_34_8_n_102), .A1 (mul_34_8_n_119), .B0
       (mul_34_8_n_94), .Y (mul_34_8_n_121));
  OAI21X1 mul_34_8_g828(.A0 (n_138), .A1 (mul_34_8_n_118), .B0
       (mul_34_8_n_96), .Y (mul_34_8_n_120));
  AOI21X2 mul_34_8_g830(.A0 (mul_34_8_n_111), .A1 (mul_34_8_n_15), .B0
       (mul_34_8_n_114), .Y (mul_34_8_n_119));
  AOI21X1 mul_34_8_g831(.A0 (mul_34_8_n_116), .A1 (mul_34_8_n_110), .B0
       (mul_34_8_n_95), .Y (mul_34_8_n_118));
  NOR2X1 mul_34_8_g833(.A (mul_34_8_n_5), .B (mul_34_8_n_115), .Y
       (mul_34_8_n_117));
  INVX2 mul_34_8_g836(.A (mul_34_8_n_115), .Y (mul_34_8_n_116));
  NOR2X1 mul_34_8_g837(.A (mul_34_8_n_81), .B (mul_34_8_n_6), .Y
       (mul_34_8_n_115));
  NAND2X2 mul_34_8_g840(.A (mul_34_8_n_112), .B (mul_34_8_n_113), .Y
       (mul_34_8_n_114));
  NAND2X2 mul_34_8_g841(.A (mul_34_8_n_95), .B (mul_34_8_n_111), .Y
       (mul_34_8_n_113));
  AOI21X2 mul_34_8_g842(.A0 (mul_34_8_n_100), .A1 (mul_34_8_n_10), .B0
       (mul_34_8_n_97), .Y (mul_34_8_n_112));
  NOR2X2 mul_34_8_g843(.A (mul_34_8_n_101), .B (n_139), .Y
       (mul_34_8_n_111));
  NOR2X2 mul_34_8_g845(.A (mul_34_8_n_5), .B (mul_34_8_n_99), .Y
       (mul_34_8_n_110));
  NOR2BX1 mul_34_8_g847(.AN (mul_34_8_n_94), .B (mul_34_8_n_102), .Y
       (mul_34_8_n_109));
  NOR2X1 mul_34_8_g849(.A (mul_34_8_n_97), .B (mul_34_8_n_101), .Y
       (mul_34_8_n_108));
  NOR2X1 mul_34_8_g851(.A (mul_34_8_n_10), .B (n_138), .Y
       (mul_34_8_n_107));
  NOR2BX1 mul_34_8_g853(.AN (mul_34_8_n_98), .B (mul_34_8_n_95), .Y
       (mul_34_8_n_106));
  INVX1 mul_34_8_g854(.A (mul_34_8_n_104), .Y (mul_34_8_n_105));
  XNOR2X1 mul_34_8_g855(.A (mul_34_8_n_92), .B (mul_34_8_n_88), .Y
       (mul_34_8_n_104));
  AOI21X2 mul_34_8_g856(.A0 (mul_34_8_n_79), .A1 (mul_34_8_n_78), .B0
       (mul_34_8_n_77), .Y (mul_34_8_n_103));
  NOR2X1 mul_34_8_g858(.A (mul_34_8_n_82), .B (mul_34_8_n_93), .Y
       (mul_34_8_n_102));
  INVX1 mul_34_8_g859(.A (mul_34_8_n_101), .Y (mul_34_8_n_100));
  NOR2X2 mul_34_8_g860(.A (mul_34_8_n_84), .B (mul_34_8_n_86), .Y
       (mul_34_8_n_101));
  INVX1 mul_34_8_g861(.A (mul_34_8_n_98), .Y (mul_34_8_n_99));
  NAND2X1 mul_34_8_g862(.A (mul_34_8_n_4), .B (mul_34_8_n_87), .Y
       (mul_34_8_n_98));
  AND2X1 mul_34_8_g863(.A (mul_34_8_n_84), .B (mul_34_8_n_86), .Y
       (mul_34_8_n_97));
  INVX1 mul_34_8_g864(.A (mul_34_8_n_10), .Y (mul_34_8_n_96));
  NOR2X1 mul_34_8_g866(.A (mul_34_8_n_4), .B (mul_34_8_n_87), .Y
       (mul_34_8_n_95));
  NAND2X1 mul_34_8_g868(.A (mul_34_8_n_82), .B (mul_34_8_n_93), .Y
       (mul_34_8_n_94));
  ADDHX1 mul_34_8_g871(.A (mul_34_8_n_72), .B (mul_34_8_n_69), .CO
       (mul_34_8_n_92), .S (mul_34_8_n_93));
  NOR2BX1 mul_34_8_g875(.AN (mul_34_8_n_80), .B (mul_34_8_n_81), .Y
       (mul_34_8_n_91));
  NOR2BX1 mul_34_8_g876(.AN (mul_34_8_n_78), .B (mul_34_8_n_77), .Y
       (mul_34_8_n_90));
  NOR2BXL mul_34_8_g877(.AN (mul_34_8_n_83), .B (mul_34_8_n_79), .Y
       (out1[1]));
  XNOR2X1 mul_34_8_g878(.A (mul_34_8_n_66), .B (mul_34_8_n_76), .Y
       (mul_34_8_n_88));
  CLKXOR2X1 mul_34_8_g880(.A (mul_34_8_n_64), .B (mul_34_8_n_73), .Y
       (mul_34_8_n_87));
  XOR2XL mul_34_8_g881(.A (mul_34_8_n_63), .B (mul_34_8_n_71), .Y
       (mul_34_8_n_86));
  CLKXOR2X1 mul_34_8_g882(.A (mul_34_8_n_65), .B (mul_34_8_n_75), .Y
       (mul_34_8_n_85));
  NOR2BX1 mul_34_8_g883(.AN (mul_34_8_n_65), .B (mul_34_8_n_75), .Y
       (mul_34_8_n_84));
  NAND2X1 mul_34_8_g886(.A (mul_34_8_n_46), .B (mul_34_8_n_68), .Y
       (mul_34_8_n_83));
  NOR2X1 mul_34_8_g887(.A (mul_34_8_n_71), .B (mul_34_8_n_63), .Y
       (mul_34_8_n_82));
  NOR2X1 mul_34_8_g888(.A (mul_34_8_n_70), .B (mul_34_8_n_62), .Y
       (mul_34_8_n_81));
  NAND2X1 mul_34_8_g890(.A (mul_34_8_n_70), .B (mul_34_8_n_62), .Y
       (mul_34_8_n_80));
  NOR2X2 mul_34_8_g891(.A (mul_34_8_n_46), .B (mul_34_8_n_68), .Y
       (mul_34_8_n_79));
  NAND2X1 mul_34_8_g892(.A (mul_34_8_n_56), .B (mul_34_8_n_61), .Y
       (mul_34_8_n_78));
  NOR2X1 mul_34_8_g893(.A (mul_34_8_n_56), .B (mul_34_8_n_61), .Y
       (mul_34_8_n_77));
  AOI22X1 mul_34_8_g894(.A0 (in2[6]), .A1 (mul_34_8_n_59), .B0
       (in2[7]), .B1 (n_144), .Y (mul_34_8_n_76));
  AOI22X1 mul_34_8_g895(.A0 (in2[3]), .A1 (mul_34_8_n_59), .B0
       (in2[4]), .B1 (n_145), .Y (mul_34_8_n_75));
  OAI2BB1X1 mul_34_8_g897(.A0N (in2[1]), .A1N (mul_34_8_n_59), .B0
       (mul_34_8_n_58), .Y (mul_34_8_n_74));
  AOI22X1 mul_34_8_g898(.A0 (in2[2]), .A1 (mul_34_8_n_59), .B0
       (in2[3]), .B1 (n_145), .Y (mul_34_8_n_73));
  OAI2BB1X1 mul_34_8_g899(.A0N (in2[5]), .A1N (mul_34_8_n_59), .B0
       (mul_34_8_n_57), .Y (mul_34_8_n_72));
  AOI22X1 mul_34_8_g900(.A0 (in2[4]), .A1 (mul_34_8_n_59), .B0
       (in2[5]), .B1 (n_145), .Y (mul_34_8_n_71));
  NOR2X1 mul_34_8_g901(.A (mul_34_8_n_2), .B (mul_34_8_n_60), .Y
       (mul_34_8_n_70));
  OAI22X1 mul_34_8_g902(.A0 (mul_34_8_n_37), .A1 (n_203), .B0 (n_170),
       .B1 (mul_34_8_n_43), .Y (mul_34_8_n_69));
  AOI21X2 mul_34_8_g903(.A0 (mul_34_8_n_45), .A1 (n_140), .B0
       (mul_34_8_n_53), .Y (mul_34_8_n_68));
  AOI21X1 mul_34_8_g905(.A0 (mul_34_8_n_36), .A1 (n_204), .B0
       (mul_34_8_n_55), .Y (mul_34_8_n_67));
  OA22X1 mul_34_8_g906(.A0 (mul_34_8_n_43), .A1 (n_203), .B0 (n_170),
       .B1 (mul_34_8_n_42), .Y (mul_34_8_n_66));
  OAI21X1 mul_34_8_g907(.A0 (mul_34_8_n_32), .A1 (n_205), .B0
       (mul_34_8_n_51), .Y (mul_34_8_n_65));
  OAI21X2 mul_34_8_g909(.A0 (mul_34_8_n_41), .A1 (n_207), .B0
       (mul_34_8_n_52), .Y (mul_34_8_n_64));
  AOI21X1 mul_34_8_g910(.A0 (n_136), .A1 (n_140), .B0 (mul_34_8_n_47),
       .Y (mul_34_8_n_63));
  AOI21X1 mul_34_8_g911(.A0 (mul_34_8_n_34), .A1 (n_204), .B0
       (mul_34_8_n_48), .Y (mul_34_8_n_62));
  AOI21X1 mul_34_8_g912(.A0 (mul_34_8_n_40), .A1 (n_140), .B0
       (mul_34_8_n_54), .Y (mul_34_8_n_61));
  AND2X1 mul_34_8_g913(.A (in2[0]), .B (mul_34_8_n_59), .Y
       (mul_34_8_n_60));
  NOR2X2 mul_34_8_g914(.A (mul_34_8_n_18), .B (n_148), .Y
       (mul_34_8_n_59));
  NAND2X1 mul_34_8_g915(.A (in2[2]), .B (n_145), .Y (mul_34_8_n_58));
  NAND2X1 mul_34_8_g917(.A (in2[6]), .B (n_144), .Y (mul_34_8_n_57));
  NAND2X1 mul_34_8_g918(.A (in2[0]), .B (n_145), .Y (mul_34_8_n_56));
  NOR2X1 mul_34_8_g919(.A (n_171), .B (mul_34_8_n_41), .Y
       (mul_34_8_n_55));
  NOR2X1 mul_34_8_g920(.A (n_174), .B (n_137), .Y (mul_34_8_n_54));
  NOR2X1 mul_34_8_g921(.A (n_174), .B (mul_34_8_n_39), .Y
       (mul_34_8_n_53));
  OR2XL mul_34_8_g922(.A (n_168), .B (mul_34_8_n_32), .Y
       (mul_34_8_n_52));
  NAND2X1 mul_34_8_g923(.A (n_169), .B (n_136), .Y (mul_34_8_n_51));
  NOR2X6 mul_34_8_g925(.A (n_169), .B (mul_34_8_n_31), .Y (n_140));
  NOR2X1 mul_34_8_g926(.A (n_170), .B (mul_34_8_n_35), .Y
       (mul_34_8_n_48));
  NOR2X1 mul_34_8_g927(.A (n_173), .B (mul_34_8_n_37), .Y
       (mul_34_8_n_47));
  NAND2X1 mul_34_8_g928(.A (n_161), .B (mul_34_8_n_27), .Y
       (mul_34_8_n_46));
  MXI2XL mul_34_8_g929(.A (n_156), .B (in1[1]), .S0 (in2[0]), .Y
       (mul_34_8_n_45));
  MXI2XL mul_34_8_g931(.A (n_161), .B (n_160), .S0 (in2[8]), .Y
       (mul_34_8_n_43));
  MXI2XL mul_34_8_g932(.A (n_159), .B (n_158), .S0 (in2[9]), .Y
       (mul_34_8_n_42));
  MXI2XL mul_34_8_g933(.A (in1[1]), .B (n_165), .S0 (in2[4]), .Y
       (mul_34_8_n_41));
  INVX1 mul_34_8_g934(.A (mul_34_8_n_39), .Y (mul_34_8_n_40));
  NOR2X1 mul_34_8_g935(.A (mul_34_8_n_30), .B (mul_34_8_n_26), .Y
       (mul_34_8_n_39));
  NAND2X8 mul_34_8_g937(.A (mul_34_8_n_24), .B (mul_34_8_n_29), .Y
       (n_148));
  MXI2XL mul_34_8_g938(.A (in1[1]), .B (n_165), .S0 (in2[7]), .Y
       (mul_34_8_n_37));
  INVX1 mul_34_8_g939(.A (mul_34_8_n_35), .Y (mul_34_8_n_36));
  MXI2XL mul_34_8_g940(.A (in1[1]), .B (n_156), .S0 (in2[3]), .Y
       (mul_34_8_n_35));
  INVX1 mul_34_8_g941(.A (n_137), .Y (mul_34_8_n_34));
  MXI2XL mul_34_8_g943(.A (in1[1]), .B (n_153), .S0 (in2[5]), .Y
       (mul_34_8_n_32));
  NOR2X2 mul_34_8_g944(.A (mul_34_8_n_21), .B (mul_34_8_n_22), .Y
       (mul_34_8_n_31));
  NOR2X1 mul_34_8_g945(.A (n_156), .B (in2[1]), .Y (mul_34_8_n_30));
  NAND2X6 mul_34_8_g946(.A (in1[1]), .B (mul_34_8_n_18), .Y
       (mul_34_8_n_29));
  INVX1 mul_34_8_g947(.A (mul_34_8_n_27), .Y (out1[0]));
  NAND2X1 mul_34_8_g948(.A (in2[0]), .B (n_169), .Y (mul_34_8_n_27));
  NOR2X1 mul_34_8_g951(.A (mul_34_8_n_17), .B (n_162), .Y
       (mul_34_8_n_26));
  NAND2X4 mul_34_8_g953(.A (in1[2]), .B (n_149), .Y (mul_34_8_n_24));
  NOR2X2 mul_34_8_g955(.A (in1[0]), .B (n_154), .Y (mul_34_8_n_22));
  NOR2X4 mul_34_8_g956(.A (in1[1]), .B (n_167), .Y (mul_34_8_n_21));
  INVX3 mul_34_8_g959(.A (in1[2]), .Y (mul_34_8_n_18));
  INVX1 mul_34_8_g961(.A (in2[1]), .Y (mul_34_8_n_17));
  XNOR2X1 mul_34_8_g2(.A (mul_34_8_n_91), .B (mul_34_8_n_103), .Y
       (out1[3]));
  NOR2BX1 mul_34_8_g963(.AN (mul_34_8_n_110), .B (mul_34_8_n_115), .Y
       (mul_34_8_n_15));
  XNOR2XL mul_34_8_g964(.A (mul_34_8_n_109), .B (mul_34_8_n_119), .Y
       (out1[8]));
  CLKXOR2X1 mul_34_8_g965(.A (mul_34_8_n_108), .B (mul_34_8_n_120), .Y
       (out1[7]));
  XNOR2X1 mul_34_8_g966(.A (mul_34_8_n_107), .B (mul_34_8_n_118), .Y
       (out1[6]));
  CLKXOR2X1 mul_34_8_g967(.A (mul_34_8_n_106), .B (mul_34_8_n_117), .Y
       (out1[5]));
  NOR2BX1 mul_34_8_g968(.AN (mul_34_8_n_3), .B (mul_34_8_n_85), .Y
       (mul_34_8_n_10));
  NOR2BX2 mul_34_8_g969(.AN (mul_34_8_n_85), .B (mul_34_8_n_3), .Y
       (n_139));
  XNOR2X1 mul_34_8_g970(.A (mul_34_8_n_5), .B (mul_34_8_n_116), .Y
       (out1[4]));
  CLKXOR2X1 mul_34_8_g971(.A (mul_34_8_n_79), .B (mul_34_8_n_90), .Y
       (out1[2]));
  NOR2BX1 mul_34_8_g972(.AN (mul_34_8_n_80), .B (mul_34_8_n_103), .Y
       (mul_34_8_n_6));
  CLKXOR2X1 mul_34_8_g973(.A (mul_34_8_n_67), .B (mul_34_8_n_74), .Y
       (mul_34_8_n_5));
  NAND2BX1 mul_34_8_g974(.AN (mul_34_8_n_67), .B (mul_34_8_n_74), .Y
       (mul_34_8_n_4));
  NOR2BX1 mul_34_8_g975(.AN (mul_34_8_n_64), .B (mul_34_8_n_73), .Y
       (mul_34_8_n_3));
  NOR2BX1 mul_34_8_g976(.AN (n_145), .B (mul_34_8_n_17), .Y
       (mul_34_8_n_2));
  MX2XL g2(.A (in1[1]), .B (n_152), .S0 (in2[6]), .Y (n_136));
  MX2XL g979(.A (n_163), .B (in1[1]), .S0 (in2[2]), .Y (n_137));
  BUFX3 fopt(.A (n_139), .Y (n_138));
  BUFX3 fopt983(.A (n_145), .Y (n_144));
  BUFX3 fopt984(.A (n_148), .Y (n_145));
  CLKINVX4 fopt985(.A (in1[1]), .Y (n_149));
  CLKINVX6 fopt986(.A (in1[1]), .Y (n_152));
  CLKINVX2 fopt987(.A (in1[1]), .Y (n_153));
  CLKINVX4 fopt988(.A (in1[1]), .Y (n_154));
  CLKINVX1 fopt989(.A (in1[1]), .Y (n_156));
  CLKINVX1 fopt990(.A (n_159), .Y (n_158));
  CLKINVX1 fopt991(.A (n_160), .Y (n_159));
  CLKINVX1 fopt992(.A (n_161), .Y (n_160));
  CLKINVX1 fopt993(.A (n_163), .Y (n_161));
  CLKINVX1 fopt994(.A (n_163), .Y (n_162));
  CLKINVX2 fopt995(.A (in1[1]), .Y (n_163));
  CLKINVX1 fopt996(.A (in1[1]), .Y (n_165));
  CLKINVX8 fopt997(.A (in1[0]), .Y (n_167));
  CLKINVX3 fopt998(.A (n_169), .Y (n_168));
  CLKINVX1 fopt999(.A (n_172), .Y (n_170));
  CLKINVX1 fopt1000(.A (n_172), .Y (n_171));
  CLKINVX1 fopt1001(.A (n_173), .Y (n_172));
  CLKINVX1 fopt1002(.A (n_169), .Y (n_173));
  CLKINVX1 fopt1003(.A (n_169), .Y (n_174));
  BUFX3 fopt1004(.A (in1[0]), .Y (n_169));
  CLKINVX1 fopt1023(.A (n_204), .Y (n_203));
  BUFX3 fopt1024(.A (n_140), .Y (n_204));
  CLKINVX3 fopt1025(.A (n_140), .Y (n_205));
  CLKINVX2 fopt1026(.A (n_140), .Y (n_207));
endmodule


