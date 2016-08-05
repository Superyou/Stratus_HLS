/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/
/****************************************************************************
*
* Verilog Verification wrapper module for the vv_add module.
*
* This module contains the followng items:
*	- A foreign module definition for use in instantiatin the type_wrapper module
*      which contains the BEH module instance.
*	- An instance of the type_wrapper foreign module.
*   - alwyas blocks each type_wrapper output.
*
****************************************************************************/

`timescale 1 ps / 1 ps

module vv_add_vlwrapper(
      `ifdef ioConfig_PIN
      
      clk,
       rst,
       cc_busy_o,
       cc_interrupt_o,
       cc_status_i,
       cc_exception_i,
       cc_host_id_i,
       core_cmd_ready_o,
       core_cmd_valid_i,
       core_cmd_inst_funct_i,
       core_cmd_inst_rs1_i,
       core_cmd_inst_rs2_i,
       core_cmd_inst_xd_i,
       core_cmd_inst_xs1_i,
       core_cmd_inst_xs2_i,
       core_cmd_inst_rd_i,
       core_cmd_inst_opcode_i,
       core_cmd_rs1_i,
       core_cmd_rs2_i,
       core_resp_ready_i,
       core_resp_valid_o,
       core_resp_rd_o,
       core_resp_data_o,
       mem_req_ready_i,
       mem_req_valid_o,
       mem_req_addr_o,
       mem_req_tag_o,
       mem_req_cmd_o,
       mem_req_typ_o,
       mem_req_phys_o,
       mem_req_data_o,
       mem_resp_valid_i,
       mem_resp_addr_i,
       mem_resp_tag_i,
       mem_resp_cmd_i,
       mem_resp_typ_i,
       mem_resp_data_i,
       mem_resp_has_data_i,
       mem_resp_data_word_bypass_i,
       mem_resp_store_data_i,
       mem_resp_nack_i,
       mem_resp_replay_i
      `endif

    );

	`ifdef ioConfig_PIN
	
	input clk;
	input rst;
	output cc_busy_o;
	reg cc_busy_o;
	wire m_cc_busy_o;
	output cc_interrupt_o;
	reg cc_interrupt_o;
	wire m_cc_interrupt_o;
	input cc_status_i;
	input cc_exception_i;
	input cc_host_id_i;
	output core_cmd_ready_o;
	reg core_cmd_ready_o;
	wire m_core_cmd_ready_o;
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
	output core_resp_valid_o;
	reg core_resp_valid_o;
	wire m_core_resp_valid_o;
	output [4:0] core_resp_rd_o;
	reg[4:0] core_resp_rd_o;
	wire [4:0] m_core_resp_rd_o;
	output [63:0] core_resp_data_o;
	reg[63:0] core_resp_data_o;
	wire [63:0] m_core_resp_data_o;
	input mem_req_ready_i;
	output mem_req_valid_o;
	reg mem_req_valid_o;
	wire m_mem_req_valid_o;
	output [39:0] mem_req_addr_o;
	reg[39:0] mem_req_addr_o;
	wire [39:0] m_mem_req_addr_o;
	output [9:0] mem_req_tag_o;
	reg[9:0] mem_req_tag_o;
	wire [9:0] m_mem_req_tag_o;
	output [4:0] mem_req_cmd_o;
	reg[4:0] mem_req_cmd_o;
	wire [4:0] m_mem_req_cmd_o;
	output [2:0] mem_req_typ_o;
	reg[2:0] mem_req_typ_o;
	wire [2:0] m_mem_req_typ_o;
	output mem_req_phys_o;
	reg mem_req_phys_o;
	wire m_mem_req_phys_o;
	output [63:0] mem_req_data_o;
	reg[63:0] mem_req_data_o;
	wire [63:0] m_mem_req_data_o;
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
	
	`endif


    // Instantiate the Verilog module that instantiates the SystemC module
    vv_add_type_wrapper vv_add_sc(
        `ifdef ioConfig_PIN
        
        .clk(clk),
         .rst(rst),
         .cc_busy_o(m_cc_busy_o),
         .cc_interrupt_o(m_cc_interrupt_o),
         .cc_status_i(cc_status_i),
         .cc_exception_i(cc_exception_i),
         .cc_host_id_i(cc_host_id_i),
         .core_cmd_ready_o(m_core_cmd_ready_o),
         .core_cmd_valid_i(core_cmd_valid_i),
         .core_cmd_inst_funct_i(core_cmd_inst_funct_i),
         .core_cmd_inst_rs1_i(core_cmd_inst_rs1_i),
         .core_cmd_inst_rs2_i(core_cmd_inst_rs2_i),
         .core_cmd_inst_xd_i(core_cmd_inst_xd_i),
         .core_cmd_inst_xs1_i(core_cmd_inst_xs1_i),
         .core_cmd_inst_xs2_i(core_cmd_inst_xs2_i),
         .core_cmd_inst_rd_i(core_cmd_inst_rd_i),
         .core_cmd_inst_opcode_i(core_cmd_inst_opcode_i),
         .core_cmd_rs1_i(core_cmd_rs1_i),
         .core_cmd_rs2_i(core_cmd_rs2_i),
         .core_resp_ready_i(core_resp_ready_i),
         .core_resp_valid_o(m_core_resp_valid_o),
         .core_resp_rd_o(m_core_resp_rd_o),
         .core_resp_data_o(m_core_resp_data_o),
         .mem_req_ready_i(mem_req_ready_i),
         .mem_req_valid_o(m_mem_req_valid_o),
         .mem_req_addr_o(m_mem_req_addr_o),
         .mem_req_tag_o(m_mem_req_tag_o),
         .mem_req_cmd_o(m_mem_req_cmd_o),
         .mem_req_typ_o(m_mem_req_typ_o),
         .mem_req_phys_o(m_mem_req_phys_o),
         .mem_req_data_o(m_mem_req_data_o),
         .mem_resp_valid_i(mem_resp_valid_i),
         .mem_resp_addr_i(mem_resp_addr_i),
         .mem_resp_tag_i(mem_resp_tag_i),
         .mem_resp_cmd_i(mem_resp_cmd_i),
         .mem_resp_typ_i(mem_resp_typ_i),
         .mem_resp_data_i(mem_resp_data_i),
         .mem_resp_has_data_i(mem_resp_has_data_i),
         .mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i),
         .mem_resp_store_data_i(mem_resp_store_data_i),
         .mem_resp_nack_i(mem_resp_nack_i),
         .mem_resp_replay_i(mem_resp_replay_i)
        `endif

    );

    // Always blocks for non-blocking assignments of type_wrapper outputs to
    // Verilog Verificatoin wrapper outputs.

    `ifdef ioConfig_PIN
    
    always @(m_cc_busy_o)
     begin
      cc_busy_o <= m_cc_busy_o;
     end
    always @(m_cc_interrupt_o)
     begin
      cc_interrupt_o <= m_cc_interrupt_o;
     end
    always @(m_core_cmd_ready_o)
     begin
      core_cmd_ready_o <= m_core_cmd_ready_o;
     end
    always @(m_core_resp_valid_o)
     begin
      core_resp_valid_o <= m_core_resp_valid_o;
     end
    always @(m_core_resp_rd_o)
     begin
      core_resp_rd_o <= m_core_resp_rd_o;
     end
    always @(m_core_resp_data_o)
     begin
      core_resp_data_o <= m_core_resp_data_o;
     end
    always @(m_mem_req_valid_o)
     begin
      mem_req_valid_o <= m_mem_req_valid_o;
     end
    always @(m_mem_req_addr_o)
     begin
      mem_req_addr_o <= m_mem_req_addr_o;
     end
    always @(m_mem_req_tag_o)
     begin
      mem_req_tag_o <= m_mem_req_tag_o;
     end
    always @(m_mem_req_cmd_o)
     begin
      mem_req_cmd_o <= m_mem_req_cmd_o;
     end
    always @(m_mem_req_typ_o)
     begin
      mem_req_typ_o <= m_mem_req_typ_o;
     end
    always @(m_mem_req_phys_o)
     begin
      mem_req_phys_o <= m_mem_req_phys_o;
     end
    always @(m_mem_req_data_o)
     begin
      mem_req_data_o <= m_mem_req_data_o;
     end
    
    `endif


endmodule

// This is an internal module that instantiates the user's SystemC input module
// using the Incisive foreign module instantiation feature.
// The name of the module and the names of the inputs and outputs must match
// with those defined in the SystemC type_wrapper module
module vv_add_type_wrapper(
      `ifdef ioConfig_PIN
      
      clk,
       rst,
       cc_busy_o,
       cc_interrupt_o,
       cc_status_i,
       cc_exception_i,
       cc_host_id_i,
       core_cmd_ready_o,
       core_cmd_valid_i,
       core_cmd_inst_funct_i,
       core_cmd_inst_rs1_i,
       core_cmd_inst_rs2_i,
       core_cmd_inst_xd_i,
       core_cmd_inst_xs1_i,
       core_cmd_inst_xs2_i,
       core_cmd_inst_rd_i,
       core_cmd_inst_opcode_i,
       core_cmd_rs1_i,
       core_cmd_rs2_i,
       core_resp_ready_i,
       core_resp_valid_o,
       core_resp_rd_o,
       core_resp_data_o,
       mem_req_ready_i,
       mem_req_valid_o,
       mem_req_addr_o,
       mem_req_tag_o,
       mem_req_cmd_o,
       mem_req_typ_o,
       mem_req_phys_o,
       mem_req_data_o,
       mem_resp_valid_i,
       mem_resp_addr_i,
       mem_resp_tag_i,
       mem_resp_cmd_i,
       mem_resp_typ_i,
       mem_resp_data_i,
       mem_resp_has_data_i,
       mem_resp_data_word_bypass_i,
       mem_resp_store_data_i,
       mem_resp_nack_i,
       mem_resp_replay_i
      `endif

    ) (* integer foreign = "SystemC";
    *);

	`ifdef ioConfig_PIN
	
	input clk;
	input rst;
	output cc_busy_o;
	output cc_interrupt_o;
	input cc_status_i;
	input cc_exception_i;
	input cc_host_id_i;
	output core_cmd_ready_o;
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
	output core_resp_valid_o;
	output [4:0] core_resp_rd_o;
	output [63:0] core_resp_data_o;
	input mem_req_ready_i;
	output mem_req_valid_o;
	output [39:0] mem_req_addr_o;
	output [9:0] mem_req_tag_o;
	output [4:0] mem_req_cmd_o;
	output [2:0] mem_req_typ_o;
	output mem_req_phys_o;
	output [63:0] mem_req_data_o;
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
	
	`endif


endmodule
