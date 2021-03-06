//beginning from here is for reset_signal_is (rst,1)

// Generated by stratus_vlg 15.21-p100  (11111646)
// Sat Aug  6 12:47:02 2016
// from bdw_work/wrappers/vv_add_wrap.cc

`timescale 1ps / 1ps

      
// Generated by stratus_hls 15.21-p100  (11111647)
// Sat Aug  6 12:46:56 2016
// from vv_add.cc
/* Include declarations of instantiated parts. */
/* Declaration of the synthesized module. */

module vv_add(clk, rst, cc_busy_o, cc_interrupt_o, cc_status_i, cc_exception_i, cc_host_id_i, core_cmd_ready_o, core_cmd_valid_i, core_cmd_inst_funct_i, core_cmd_inst_rs1_i, core_cmd_inst_rs2_i, core_cmd_inst_xd_i, core_cmd_inst_xs1_i, core_cmd_inst_xs2_i, core_cmd_inst_rd_i, core_cmd_inst_opcode_i, core_cmd_rs1_i, core_cmd_rs2_i, core_resp_ready_i, core_resp_valid_o, core_resp_rd_o, core_resp_data_o, mem_req_ready_i
          , mem_req_valid_o, mem_req_addr_o, mem_req_tag_o, mem_req_cmd_o, mem_req_typ_o, mem_req_phys_o, mem_req_data_o, mem_resp_valid_i, mem_resp_addr_i, mem_resp_tag_i, mem_resp_cmd_i, mem_resp_typ_i, mem_resp_data_i, mem_resp_has_data_i, mem_resp_data_word_bypass_i, mem_resp_store_data_i, mem_resp_nack_i, mem_resp_replay_i);

      input clk;
      input rst;
      input cc_status_i;
      input cc_exception_i;
      input cc_host_id_i;
      input core_cmd_valid_i;
      input [6:0] core_cmd_inst_funct_i;
      input [4:0] core_cmd_inst_rs1_i;
      input [4:0] core_cmd_inst_rs2_i;
      input core_cmd_inst_xd_i;
      input core_cmd_inst_xs1_i;
      input core_cmd_inst_xs2_i;
      input [4:0] core_cmd_inst_rd_i;
      input [6:0] core_cmd_inst_opcode_i;
      input [63:0] core_cmd_rs1_i;
      input [63:0] core_cmd_rs2_i;
      input core_resp_ready_i;
      input mem_req_ready_i;
      input mem_resp_valid_i;
      input [39:0] mem_resp_addr_i;
      input [9:0] mem_resp_tag_i;
      input [4:0] mem_resp_cmd_i;
      input [2:0] mem_resp_typ_i;
      input [63:0] mem_resp_data_i;
      input mem_resp_has_data_i;
      input [63:0] mem_resp_data_word_bypass_i;
      input [63:0] mem_resp_store_data_i;
      input mem_resp_nack_i;
      input mem_resp_replay_i;
      output cc_busy_o;
      output cc_interrupt_o;
      output core_cmd_ready_o;
      reg core_cmd_ready_o;
      output core_resp_valid_o;
      reg core_resp_valid_o;
      output [4:0] core_resp_rd_o;
      reg [4:0] core_resp_rd_o;
      output [63:0] core_resp_data_o;
      reg [63:0] core_resp_data_o;
      output mem_req_valid_o;
      output [39:0] mem_req_addr_o;
      output [9:0] mem_req_tag_o;
      output [4:0] mem_req_cmd_o;
      output [2:0] mem_req_typ_o;
      output mem_req_phys_o;
      output [63:0] mem_req_data_o;
      wire[63:0] vv_add_Add_64U_2_4_2_out1;
      wire vv_add_Eqi1u7_4_1_out1;
      reg[2:0] global_state_next;
      reg[63:0] vv_add_N_Mux_64_2_0_4_3_in3;
      reg[1:0] gs_ctrl0;
      reg[63:0] vv_add_N_Mux_64_2_0_4_3_out1;
      reg[63:0] s_reg_5;
      reg[4:0] s_reg_7;
      reg[63:0] s_reg_8;
      reg s_reg_6;
      reg[2:0] global_state;

         // Generated by stratus_hls 15.21-p100  (11111647)
         // Sat Aug  6 12:46:56 2016
         // from vv_add.cc
         assign mem_req_valid_o = cc_interrupt_o;

         // resource: regr_64b
         always @(posedge clk)
          begin :drive_core_resp_data_o
            if (rst == 1'b1) begin
               core_resp_data_o <= 64'd00000000000000000000;
            end
            else begin
               case (global_state) 

                  3'd2: begin
                     if (s_reg_6) begin
                        core_resp_data_o <= s_reg_8;
                     end
                  end
                  
               endcase

            end
         end

         // resource: regr_5b
         always @(posedge clk)
          begin :drive_core_resp_rd_o
            if (rst == 1'b1) begin
               core_resp_rd_o <= core_cmd_inst_rd_i;
            end
            else begin
               case (global_state) 

                  3'd2: begin
                     if (s_reg_6) begin
                        core_resp_rd_o <= s_reg_7;
                     end
                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i
         // resource: regr_1b
         always @(posedge clk)
          begin :drive_core_resp_valid_o
            if (rst == 1'b1) begin
               core_resp_valid_o <= 1'd0;
            end
            else begin
               case (global_state) 

                  3'd2: begin
                     if (s_reg_6) begin
                        core_resp_valid_o <= 1'd1;
                     end
                     else begin
                        core_resp_valid_o <= 1'd0;
                     end
                  end
                  
                  3'd3: begin
                     if (core_resp_ready_i) begin
                        core_resp_valid_o <= 1'd0;
                     end
                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i
         // resource: regr_1b
         always @(posedge clk)
          begin :drive_core_cmd_ready_o
            if (rst == 1'b1) begin
               core_cmd_ready_o <= 1'd0;
            end
            else begin
               case (global_state) 

                  3'd0, 3'd5: begin
                     core_cmd_ready_o <= 1'd1;
                  end
                  
                  3'd2: begin
                     core_cmd_ready_o <= 1'd0;
                  end
                  
               endcase

            end
         end

         assign cc_interrupt_o = 1'd0;

         // resource: mux_64bx2i
         // resource: regr_64b
         always @(posedge clk)
          begin :drive_s_reg_5
            case (global_state) 

               3'd0: begin
                  s_reg_5 <= 64'd00000000000000000000;
               end
               
               3'd5: begin
                  s_reg_5 <= s_reg_8;
               end
               
            endcase

         end

         // resource: regr_1b
         always @(posedge clk)
          begin :drive_s_reg_6
            case (global_state) 

               3'd0, 3'd1, 3'd5: begin
                  s_reg_6 <= core_cmd_inst_xd_i;
               end
               
            endcase

         end

         // resource: regr_5b
         always @(posedge clk)
          begin :drive_s_reg_7
            case (global_state) 

               3'd0, 3'd1, 3'd5: begin
                  s_reg_7 <= core_cmd_inst_rd_i;
               end
               
            endcase

         end

         // resource: regr_64b
         always @(posedge clk)
          begin :drive_s_reg_8
            case (global_state) 

               3'd0, 3'd1, 3'd5: begin
                  s_reg_8 <= vv_add_N_Mux_64_2_0_4_3_out1;
               end
               
            endcase

         end

         // resource: funct  instance: vv_add_Eqi1u7_4_1
         assign vv_add_Eqi1u7_4_1_out1 = core_cmd_inst_funct_i == 7'd001;

         // resource: vv_add_Add_64U_2_4  instance: vv_add_Add_64U_2_4_2
         assign vv_add_Add_64U_2_4_2_out1 = core_cmd_rs1_i + core_cmd_rs2_i;

         // resource: mux_64bx3i
         always @(gs_ctrl0 or s_reg_5 or s_reg_8)
          begin :drive_vv_add_N_Mux_64_2_0_4_3_in3
            case (gs_ctrl0) 

               2'd1: begin
                  vv_add_N_Mux_64_2_0_4_3_in3 = s_reg_5;
               end
               
               2'd2: begin
                  vv_add_N_Mux_64_2_0_4_3_in3 = s_reg_8;
               end
               
               default: begin
                  vv_add_N_Mux_64_2_0_4_3_in3 = 64'd00000000000000000000;
               end
               
            endcase

         end

         // resource: vv_add_N_Mux_64_2_0_4
         always @(vv_add_Eqi1u7_4_1_out1 or vv_add_Add_64U_2_4_2_out1 or vv_add_N_Mux_64_2_0_4_3_in3)
          begin :vv_add_N_Mux_64_2_0_4_3
            if (vv_add_Eqi1u7_4_1_out1) begin
               vv_add_N_Mux_64_2_0_4_3_out1 = vv_add_Add_64U_2_4_2_out1;
            end
            else begin
               vv_add_N_Mux_64_2_0_4_3_out1 = vv_add_N_Mux_64_2_0_4_3_in3;
            end
         end

         // resource: regr_3b
         always @(posedge clk)
          begin :drive_global_state
            if (rst == 1'b1) begin
               global_state <= 3'd0;
            end
            else begin
               global_state <= global_state_next;
            end
         end

         // resource: mux_3bx5i
         always @(global_state or core_cmd_valid_i or s_reg_6 or core_resp_ready_i)
          begin :drive_global_state_next
            case (global_state) 

               3'd0, 3'd1, 3'd5: begin
                  if (core_cmd_valid_i) begin
                     global_state_next = 3'd2;
                  end
                  else begin
                     global_state_next = 3'd1;
                  end
               end
               
               3'd2: begin
                  if (s_reg_6) begin
                     global_state_next = global_state + 3'd1;
                  end
                  else begin
                     global_state_next = 3'd4;
                  end
               end
               
               3'd3: begin
                  if (core_resp_ready_i) begin
                     global_state_next = global_state + 3'd1;
                  end
                  else begin
                     global_state_next = 3'd3;
                  end
               end
               
               default: begin
                  global_state_next = global_state + 3'd1;
               end
               
            endcase

         end

         // resource: mux_2bx3i
         // resource: regr_2b
         always @(posedge clk)
          begin :drive_gs_ctrl0
            if (rst == 1'b1) begin
               gs_ctrl0 <= 2'd0;
            end
            else begin
               case (global_state_next) 

                  3'd1: begin
                     gs_ctrl0 <= 2'd1;
                  end
                  
                  3'd5: begin
                     gs_ctrl0 <= 2'd2;
                  end
                  
                  default: begin
                     gs_ctrl0 <= 2'd0;
                  end
                  
               endcase

            end
         end

         assign cc_busy_o = 1'd0;

         assign mem_req_addr_o = 40'd0000000000000;

         assign mem_req_tag_o = 10'd0000;

         assign mem_req_cmd_o = 5'd00;

         assign mem_req_typ_o = 3'd0;

         assign mem_req_phys_o = 1'd1;

         assign mem_req_data_o = 64'd00000000000000000000;


endmodule
