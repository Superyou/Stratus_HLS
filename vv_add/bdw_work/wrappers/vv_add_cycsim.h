/****************************************************************************
 *
 *  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
 *
 *  This file contains confidential information that may not be
 *  distributed under any circumstances without the written permision
 *  of Cadence Design Systems.
 *
 ***************************************************************************/

#ifndef _VV_ADD_CYCSIM_INCLUDED_
#define _VV_ADD_CYCSIM_INCLUDED_

#include "systemc.h"
#include "cynthhl.h"

SC_MODULE(vv_add_cycsim)
{

	// Port declarations.
	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_out< bool > cc_busy_o;
	sc_out< bool > cc_interrupt_o;
	sc_in< bool > cc_status_i;
	sc_in< bool > cc_exception_i;
	sc_in< bool > cc_host_id_i;
	sc_out< bool > core_cmd_ready_o;
	sc_in< bool > core_cmd_valid_i;
	sc_in< sc_uint< 7 > > core_cmd_inst_funct_i;
	sc_in< sc_uint< 5 > > core_cmd_inst_rs1_i;
	sc_in< sc_uint< 5 > > core_cmd_inst_rs2_i;
	sc_in< bool > core_cmd_inst_xd_i;
	sc_in< bool > core_cmd_inst_xs1_i;
	sc_in< bool > core_cmd_inst_xs2_i;
	sc_in< sc_uint< 5 > > core_cmd_inst_rd_i;
	sc_in< sc_uint< 7 > > core_cmd_inst_opcode_i;
	sc_in< sc_uint< 64 > > core_cmd_rs1_i;
	sc_in< sc_uint< 64 > > core_cmd_rs2_i;
	sc_in< bool > core_resp_ready_i;
	sc_out< bool > core_resp_valid_o;
	sc_out< sc_uint< 5 > > core_resp_rd_o;
	sc_out< sc_uint< 64 > > core_resp_data_o;
	sc_in< bool > mem_req_ready_i;
	sc_out< bool > mem_req_valid_o;
	sc_out< sc_uint< 40 > > mem_req_addr_o;
	sc_out< sc_uint< 10 > > mem_req_tag_o;
	sc_out< sc_uint< 5 > > mem_req_cmd_o;
	sc_out< sc_uint< 3 > > mem_req_typ_o;
	sc_out< bool > mem_req_phys_o;
	sc_out< sc_uint< 64 > > mem_req_data_o;
	sc_in< bool > mem_resp_valid_i;
	sc_in< sc_uint< 40 > > mem_resp_addr_i;
	sc_in< sc_uint< 10 > > mem_resp_tag_i;
	sc_in< sc_uint< 5 > > mem_resp_cmd_i;
	sc_in< sc_uint< 3 > > mem_resp_typ_i;
	sc_in< sc_uint< 64 > > mem_resp_data_i;
	sc_in< bool > mem_resp_has_data_i;
	sc_in< sc_uint< 64 > > mem_resp_data_word_bypass_i;
	sc_in< sc_uint< 64 > > mem_resp_store_data_i;
	sc_in< bool > mem_resp_nack_i;
	sc_in< bool > mem_resp_replay_i;


	vv_add_cycsim( sc_module_name in_name=sc_module_name(sc_gen_unique_name(" vv_add") ) )
		: sc_module(in_name)
		  ,clk("clk")
		  	,rst("rst")
		  	,cc_busy_o("cc_busy_o")
		  	,cc_interrupt_o("cc_interrupt_o")
		  	,cc_status_i("cc_status_i")
		  	,cc_exception_i("cc_exception_i")
		  	,cc_host_id_i("cc_host_id_i")
		  	,core_cmd_ready_o("core_cmd_ready_o")
		  	,core_cmd_valid_i("core_cmd_valid_i")
		  	,core_cmd_inst_funct_i("core_cmd_inst_funct_i")
		  	,core_cmd_inst_rs1_i("core_cmd_inst_rs1_i")
		  	,core_cmd_inst_rs2_i("core_cmd_inst_rs2_i")
		  	,core_cmd_inst_xd_i("core_cmd_inst_xd_i")
		  	,core_cmd_inst_xs1_i("core_cmd_inst_xs1_i")
		  	,core_cmd_inst_xs2_i("core_cmd_inst_xs2_i")
		  	,core_cmd_inst_rd_i("core_cmd_inst_rd_i")
		  	,core_cmd_inst_opcode_i("core_cmd_inst_opcode_i")
		  	,core_cmd_rs1_i("core_cmd_rs1_i")
		  	,core_cmd_rs2_i("core_cmd_rs2_i")
		  	,core_resp_ready_i("core_resp_ready_i")
		  	,core_resp_valid_o("core_resp_valid_o")
		  	,core_resp_rd_o("core_resp_rd_o")
		  	,core_resp_data_o("core_resp_data_o")
		  	,mem_req_ready_i("mem_req_ready_i")
		  	,mem_req_valid_o("mem_req_valid_o")
		  	,mem_req_addr_o("mem_req_addr_o")
		  	,mem_req_tag_o("mem_req_tag_o")
		  	,mem_req_cmd_o("mem_req_cmd_o")
		  	,mem_req_typ_o("mem_req_typ_o")
		  	,mem_req_phys_o("mem_req_phys_o")
		  	,mem_req_data_o("mem_req_data_o")
		  	,mem_resp_valid_i("mem_resp_valid_i")
		  	,mem_resp_addr_i("mem_resp_addr_i")
		  	,mem_resp_tag_i("mem_resp_tag_i")
		  	,mem_resp_cmd_i("mem_resp_cmd_i")
		  	,mem_resp_typ_i("mem_resp_typ_i")
		  	,mem_resp_data_i("mem_resp_data_i")
		  	,mem_resp_has_data_i("mem_resp_has_data_i")
		  	,mem_resp_data_word_bypass_i("mem_resp_data_word_bypass_i")
		  	,mem_resp_store_data_i("mem_resp_store_data_i")
		  	,mem_resp_nack_i("mem_resp_nack_i")
		  	,mem_resp_replay_i("mem_resp_replay_i")
		  	

    {
    };
};

#endif
