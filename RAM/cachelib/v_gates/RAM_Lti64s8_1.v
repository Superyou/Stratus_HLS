`timescale 1ps / 1ps

// Generated by Cadence Encounter(R) RTL Compiler RC14.11 - v14.10-s012_1

module RAM_Lti64s8_1(in1, out1);
  input [7:0] in1;
  output out1;
  wire [7:0] in1;
  wire out1;
  wire gt_31_57_n_1;
  CLKINVX8 gt_31_57_g173(.A (in1[6]), .Y (gt_31_57_n_1));
  OR2X1 g2(.A (in1[7]), .B (gt_31_57_n_1), .Y (out1));
endmodule


