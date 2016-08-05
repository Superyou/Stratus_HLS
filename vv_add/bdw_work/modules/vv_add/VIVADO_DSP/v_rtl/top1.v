module top1 (
inst_0_in_in2,
inst_0_in_in1,
inst_1_in_in2,
inst_1_in_in1,
inst_2_in_in2,
inst_2_in_in1,
inst_3_in_in1,
inst_4_in_in1,
inst_0_in_out1,
inst_1_in_out1,
inst_2_in_out1,
inst_3_in_out1,
inst_4_in_out1
);

input [9:0] inst_0_in_in2;
input [1:0] inst_0_in_in1;
input  inst_1_in_in2;
input  inst_1_in_in1;
input [63:0] inst_2_in_in2;
input [63:0] inst_2_in_in1;
input [9:0] inst_3_in_in1;
input [9:0] inst_4_in_in1;
output  inst_0_in_out1;
output  inst_1_in_out1;
output [63:0] inst_2_in_out1;
output  inst_3_in_out1;
output  inst_4_in_out1;

vv_add_Equal_10Ux2U_1U_4 inst_0 (inst_0_in_in2, inst_0_in_in1, inst_0_in_out1);
vv_add_And_1U_0_4 inst_1 (inst_1_in_in2, inst_1_in_in1, inst_1_in_out1);
vv_add_Add_64U_3_4 inst_2 (inst_2_in_in2, inst_2_in_in1, inst_2_in_out1);
vv_add_Eqi3u10_4 inst_3 (inst_3_in_in1, inst_3_in_out1);
vv_add_Eqi2u10_4 inst_4 (inst_4_in_in1, inst_4_in_out1);

endmodule
