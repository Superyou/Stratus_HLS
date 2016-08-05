// Generated by stratus_vlg 15.21-p100  (11111646)
// Fri Aug  5 13:15:26 2016
// from bdw_work/wrappers/vv_add_wrap.cc

`timescale 1ps / 1ps

      
// Generated by stratus_hls 15.21-p100  (11111647)
// Fri Aug  5 13:15:21 2016
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
      reg cc_busy_o;
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
      reg mem_req_valid_o;
      output [39:0] mem_req_addr_o;
      reg [39:0] mem_req_addr_o;
      output [9:0] mem_req_tag_o;
      output [4:0] mem_req_cmd_o;
      output [2:0] mem_req_typ_o;
      output mem_req_phys_o;
      output [63:0] mem_req_data_o;
      reg [63:0] mem_req_data_o;
      wire vv_add_And_1U_0_4_5_out1;
      wire vv_add_Eqi3u10_4_4_out1;
      wire vv_add_And_1U_0_4_3_out1;
      wire vv_add_Eqi2u10_4_2_out1;
      wire[63:0] vv_add_Add_64U_3_4_1_out1;
      reg[3:0] global_state_next;
      reg[63:0] s_reg_18;
      reg[4:0] s_reg_17;
      reg[63:0] s_reg_12;
      reg s_reg_14;
      reg[63:0] s_reg_16;
      reg[1:0] mem_req_tag_o_slice;
      reg mem_req_cmd_o_slice;
      reg mem_req_typ_o_slice;
      reg[63:0] s_reg_15;
      reg[6:0] s_reg_13;
      reg[3:0] global_state;

         // Generated by stratus_hls 15.21-p100  (11111647)
         // Fri Aug  5 13:15:21 2016
         // from vv_add.cc
         // resource: regr_64b
         always @(posedge clk)
          begin :drive_mem_req_data_o
            if (rst == 1'b0) begin
               mem_req_data_o <= 64'd00000000000000000000;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     if (7'd002 == s_reg_13) begin
                        mem_req_data_o <= s_reg_15;
                     end
                  end
                  
               endcase

            end
         end

         // resource: regr_1b
         always @(posedge clk)
          begin :drive_mem_req_typ_o
            if (rst == 1'b0) begin
               mem_req_typ_o_slice <= 1'b0;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     case (s_reg_13) 

                        7'd002, 7'd003: begin
                           mem_req_typ_o_slice <= 1'b1;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i
         // resource: regr_1b
         always @(posedge clk)
          begin :drive_mem_req_cmd_o
            if (rst == 1'b0) begin
               mem_req_cmd_o_slice <= 1'b0;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     case (s_reg_13) 

                        7'd002: begin
                           mem_req_cmd_o_slice <= 1'b1;
                        end
                        
                        7'd003: begin
                           mem_req_cmd_o_slice <= 1'b0;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_2bx2i
         // resource: regr_2b
         always @(posedge clk)
          begin :drive_mem_req_tag_o
            if (rst == 1'b0) begin
               mem_req_tag_o_slice <= 2'd0;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     case (s_reg_13) 

                        7'd002: begin
                           mem_req_tag_o_slice <= 2'd2;
                        end
                        
                        7'd003: begin
                           mem_req_tag_o_slice <= 2'd3;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: regr_40b
         always @(posedge clk)
          begin :drive_mem_req_addr_o
            if (rst == 1'b0) begin
               mem_req_addr_o <= 40'd0000000000000;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     case (s_reg_13) 

                        7'd002, 7'd003: begin
                           mem_req_addr_o <= s_reg_16[39:0];
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i
         // resource: regr_1b
         always @(posedge clk)
          begin :drive_mem_req_valid_o
            if (rst == 1'b0) begin
               mem_req_valid_o <= 1'd0;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     case (s_reg_13) 

                        7'd002, 7'd003: begin
                           mem_req_valid_o <= 1'd1;
                        end
                        
                     endcase

                  end
                  
                  4'd03, 4'd06: begin
                     if (mem_req_ready_i) begin
                        mem_req_valid_o <= 1'd0;
                     end
                  end
                  
               endcase

            end
         end

         // resource: mux_64bx2i
         // resource: regr_64b
         always @(posedge clk)
          begin :drive_core_resp_data_o
            if (rst == 1'b0) begin
               core_resp_data_o <= 64'd00000000000000000000;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     case (s_reg_13) 

                        7'd001: begin
                           if (s_reg_14) begin
                              core_resp_data_o <= vv_add_Add_64U_3_4_1_out1;
                           end
                        end
                        
                        7'd002, 7'd003: begin
                        end
                        
                        default: begin
                           if (s_reg_14) begin
                              core_resp_data_o <= s_reg_12;
                           end
                        end
                        
                     endcase

                  end
                  
                  4'd05, 4'd08: begin
                     if (s_reg_14) begin
                        core_resp_data_o <= s_reg_12;
                     end
                  end
                  
               endcase

            end
         end

         // resource: regr_5b
         always @(posedge clk)
          begin :drive_core_resp_rd_o
            if (rst == 1'b0) begin
               core_resp_rd_o <= core_cmd_inst_rd_i;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     case (s_reg_13) 

                        7'd002, 7'd003: begin
                        end
                        
                        default: begin
                           if (s_reg_14) begin
                              core_resp_rd_o <= s_reg_17;
                           end
                        end
                        
                     endcase

                  end
                  
                  4'd05, 4'd08: begin
                     if (s_reg_14) begin
                        core_resp_rd_o <= s_reg_17;
                     end
                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i
         // resource: regr_1b
         always @(posedge clk)
          begin :drive_core_resp_valid_o
            if (rst == 1'b0) begin
               core_resp_valid_o <= 1'd0;
            end
            else begin
               case (global_state) 

                  4'd02: begin
                     case (s_reg_13) 

                        7'd002, 7'd003: begin
                        end
                        
                        default: begin
                           if (s_reg_14) begin
                              core_resp_valid_o <= 1'd1;
                           end
                           else begin
                              core_resp_valid_o <= 1'd0;
                           end
                        end
                        
                     endcase

                  end
                  
                  4'd05, 4'd08: begin
                     if (s_reg_14) begin
                        core_resp_valid_o <= 1'd1;
                     end
                     else begin
                        core_resp_valid_o <= 1'd0;
                     end
                  end
                  
                  4'd09: begin
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
            if (rst == 1'b0) begin
               core_cmd_ready_o <= 1'd0;
            end
            else begin
               case (global_state) 

                  4'd00, 4'd11: begin
                     core_cmd_ready_o <= 1'd1;
                  end
                  
                  4'd02: begin
                     core_cmd_ready_o <= 1'd0;
                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i
         // resource: regr_1b
         always @(posedge clk)
          begin :drive_cc_busy_o
            if (rst == 1'b0) begin
               cc_busy_o <= 1'd0;
            end
            else begin
               case (global_state) 

                  4'd00, 4'd01, 4'd11: begin
                     if (core_cmd_valid_i) begin
                        cc_busy_o <= 1'd1;
                     end
                  end
                  
                  4'd02: begin
                     case (s_reg_13) 

                        7'd002, 7'd003: begin
                        end
                        
                        default: begin
                           if (s_reg_14) begin
                           end
                           else begin
                              cc_busy_o <= 1'd0;
                           end
                        end
                        
                     endcase

                  end
                  
                  4'd05, 4'd08: begin
                     if (s_reg_14) begin
                     end
                     else begin
                        cc_busy_o <= 1'd0;
                     end
                  end
                  
                  4'd09: begin
                     if (core_resp_ready_i) begin
                        cc_busy_o <= 1'd0;
                     end
                  end
                  
               endcase

            end
         end

         // resource: mux_64bx4i
         // resource: regr_64b
         always @(posedge clk)
          begin :drive_s_reg_12
            case (global_state) 

               4'd00: begin
                  s_reg_12 <= 64'd00000000000000000000;
               end
               
               4'd03, 4'd04: begin
                  s_reg_12 <= mem_resp_store_data_i;
               end
               
               4'd06, 4'd07: begin
                  s_reg_12 <= mem_resp_data_i;
               end
               
               4'd11: begin
                  s_reg_12 <= s_reg_18;
               end
               
            endcase

         end

         // resource: regr_7b
         always @(posedge clk)
          begin :drive_s_reg_13
            case (global_state) 

               4'd00, 4'd01, 4'd11: begin
                  s_reg_13 <= core_cmd_inst_funct_i;
               end
               
            endcase

         end

         // resource: regr_1b
         always @(posedge clk)
          begin :drive_s_reg_14
            case (global_state) 

               4'd00, 4'd01, 4'd11: begin
                  s_reg_14 <= core_cmd_inst_xd_i;
               end
               
            endcase

         end

         // resource: regr_64b
         always @(posedge clk)
          begin :drive_s_reg_15
            case (global_state) 

               4'd00, 4'd01, 4'd11: begin
                  s_reg_15 <= core_cmd_rs1_i;
               end
               
            endcase

         end

         // resource: regr_64b
         always @(posedge clk)
          begin :drive_s_reg_16
            case (global_state) 

               4'd00, 4'd01, 4'd11: begin
                  s_reg_16 <= core_cmd_rs2_i;
               end
               
            endcase

         end

         // resource: regr_5b
         always @(posedge clk)
          begin :drive_s_reg_17
            case (global_state) 

               4'd00, 4'd01, 4'd11: begin
                  s_reg_17 <= core_cmd_inst_rd_i;
               end
               
            endcase

         end

         // resource: mux_64bx2i
         // resource: regr_64b
         always @(posedge clk)
          begin :drive_s_reg_18
            case (global_state) 

               4'd02: begin
                  case (s_reg_13) 

                     7'd001: begin
                        s_reg_18 <= vv_add_Add_64U_3_4_1_out1;
                     end
                     
                     7'd002, 7'd003: begin
                     end
                     
                     default: begin
                        s_reg_18 <= s_reg_12;
                     end
                     
                  endcase

               end
               
               4'd05, 4'd08: begin
                  s_reg_18 <= s_reg_12;
               end
               
            endcase

         end

         // resource: vv_add_Add_64U_3_4  instance: vv_add_Add_64U_3_4_1
         assign vv_add_Add_64U_3_4_1_out1 = s_reg_15 + s_reg_16;

         // resource: vv_add_Eqi2u10_4  instance: vv_add_Eqi2u10_4_2
         assign vv_add_Eqi2u10_4_2_out1 = mem_resp_tag_i == 10'd0002;

         // resource: vv_add_And_1U_0_4  instance: vv_add_And_1U_0_4_3
         assign vv_add_And_1U_0_4_3_out1 = vv_add_Eqi2u10_4_2_out1 & mem_resp_valid_i;

         // resource: vv_add_Eqi3u10_4  instance: vv_add_Eqi3u10_4_4
         assign vv_add_Eqi3u10_4_4_out1 = mem_resp_tag_i == 10'd0003;

         // resource: vv_add_And_1U_0_4  instance: vv_add_And_1U_0_4_5
         assign vv_add_And_1U_0_4_5_out1 = vv_add_Eqi3u10_4_4_out1 & mem_resp_valid_i;

         // resource: regr_4b
         always @(posedge clk)
          begin :drive_global_state
            if (rst == 1'b0) begin
               global_state <= 4'd00;
            end
            else begin
               global_state <= global_state_next;
            end
         end

         // resource: mux_4bx11i
         always @(global_state or core_cmd_valid_i or s_reg_13 or s_reg_14 or mem_req_ready_i or vv_add_And_1U_0_4_3_out1 or vv_add_And_1U_0_4_5_out1 or core_resp_ready_i)
          begin :drive_global_state_next
            case (global_state) 

               4'd00, 4'd01, 4'd11: begin
                  if (core_cmd_valid_i) begin
                     global_state_next = 4'd02;
                  end
                  else begin
                     global_state_next = 4'd01;
                  end
               end
               
               4'd02: begin
                  case (s_reg_13) 

                     7'd002: begin
                        global_state_next = global_state + 4'd01;
                     end
                     
                     7'd003: begin
                        global_state_next = 4'd06;
                     end
                     
                     default: begin
                        if (s_reg_14) begin
                           global_state_next = 4'd09;
                        end
                        else begin
                           global_state_next = 4'd10;
                        end
                     end
                     
                  endcase

               end
               
               4'd03: begin
                  if (mem_req_ready_i) begin
                     if (vv_add_And_1U_0_4_3_out1) begin
                        global_state_next = 4'd05;
                     end
                     else begin
                        global_state_next = global_state + 4'd01;
                     end
                  end
                  else begin
                     global_state_next = 4'd03;
                  end
               end
               
               4'd04: begin
                  if (vv_add_And_1U_0_4_3_out1) begin
                     global_state_next = global_state + 4'd01;
                  end
                  else begin
                     global_state_next = 4'd04;
                  end
               end
               
               4'd05, 4'd08: begin
                  if (s_reg_14) begin
                     global_state_next = 4'd09;
                  end
                  else begin
                     global_state_next = 4'd10;
                  end
               end
               
               4'd06: begin
                  if (mem_req_ready_i) begin
                     if (vv_add_And_1U_0_4_5_out1) begin
                        global_state_next = 4'd08;
                     end
                     else begin
                        global_state_next = global_state + 4'd01;
                     end
                  end
                  else begin
                     global_state_next = 4'd06;
                  end
               end
               
               4'd07: begin
                  if (vv_add_And_1U_0_4_5_out1) begin
                     global_state_next = global_state + 4'd01;
                  end
                  else begin
                     global_state_next = 4'd07;
                  end
               end
               
               4'd09: begin
                  if (core_resp_ready_i) begin
                     global_state_next = global_state + 4'd01;
                  end
                  else begin
                     global_state_next = 4'd09;
                  end
               end
               
               default: begin
                  global_state_next = global_state + 4'd01;
               end
               
            endcase

         end

         assign mem_req_typ_o = {2'b00, mem_req_typ_o_slice};

         assign mem_req_phys_o = 1'd1;

         assign cc_interrupt_o = 1'd0;

         assign mem_req_tag_o = {8'b00000000, mem_req_tag_o_slice};

         assign mem_req_cmd_o = {4'b0000, mem_req_cmd_o_slice};


endmodule

