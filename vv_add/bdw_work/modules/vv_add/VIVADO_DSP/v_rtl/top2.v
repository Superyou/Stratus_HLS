module top2 (
inst_0_in_in1,
inst_1_in_in1,
inst_2_in_in1,
inst_3_in_in2,
inst_3_in_in1,
inst_4_in_in2,
inst_4_in_in1,
inst_5_in_in2,
inst_5_in_in1,
inst_0_in_out1,
inst_1_in_out1,
inst_2_in_out1,
inst_3_in_out1,
inst_4_in_out1,
inst_5_in_out1
);

input [6:0] inst_0_in_in1;
input [3:0] inst_1_in_in1;
input  inst_2_in_in1;
input [3:0] inst_3_in_in2;
input [3:0] inst_3_in_in1;
input [6:0] inst_4_in_in2;
input [6:0] inst_4_in_in1;
input  inst_5_in_in2;
input  inst_5_in_in1;
output [127:0] inst_0_in_out1;
output [15:0] inst_1_in_out1;
output  inst_2_in_out1;
output [3:0] inst_3_in_out1;
output  inst_4_in_out1;
output  inst_5_in_out1;

vv_add_DECODE_128U_9_4 inst_0 (inst_0_in_in1, inst_0_in_out1);
vv_add_DECODE_16U_8_4 inst_1 (inst_1_in_in1, inst_1_in_out1);
vv_add_NotBit_1U_7_4 inst_2 (inst_2_in_in1, inst_2_in_out1);
vv_add_Add_4U_6_4 inst_3 (inst_3_in_in2, inst_3_in_in1, inst_3_in_out1);
vv_add_Equal_1U_5_4 inst_4 (inst_4_in_in2, inst_4_in_in1, inst_4_in_out1);
vv_add_Or_1U_4_4 inst_5 (inst_5_in_in2, inst_5_in_in1, inst_5_in_out1);

endmodule
