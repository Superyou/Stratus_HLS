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
* This file contains the vv_add_type_wrapper module
* for use in the verilog verification wrapper vv_add_vlwrapper.v
* It creats an instance of the vv_add module and has threads
* for converting the BEH ports to RTL level ports on the wrapper.
*
****************************************************************************/

#include "vv_add_type_wrapper.h"

SC_MODULE_EXPORT(vv_add_type_wrapper)

// The following threads are used to connect RTL ports to the actual
// structured ports

void vv_add_type_wrapper::InitInstances()
{
    vv_add0 = new vv_add( "vv_add" );

    vv_add0->clk(clk);
    vv_add0->rst(rst);
    vv_add0->cc_busy_o(cc_busy_o);
    vv_add0->cc_interrupt_o(cc_interrupt_o);
    vv_add0->cc_status_i(cc_status_i);
    vv_add0->cc_exception_i(cc_exception_i);
    vv_add0->cc_host_id_i(cc_host_id_i);
    vv_add0->core_cmd_ready_o(core_cmd_ready_o);
    vv_add0->core_cmd_valid_i(core_cmd_valid_i);
    vv_add0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
    vv_add0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
    vv_add0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
    vv_add0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
    vv_add0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
    vv_add0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
    vv_add0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
    vv_add0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
    vv_add0->core_cmd_rs1_i(core_cmd_rs1_i);
    vv_add0->core_cmd_rs2_i(core_cmd_rs2_i);
    vv_add0->core_resp_ready_i(core_resp_ready_i);
    vv_add0->core_resp_valid_o(core_resp_valid_o);
    vv_add0->core_resp_rd_o(core_resp_rd_o);
    vv_add0->core_resp_data_o(core_resp_data_o);
    vv_add0->mem_req_ready_i(mem_req_ready_i);
    vv_add0->mem_req_valid_o(mem_req_valid_o);
    vv_add0->mem_req_addr_o(mem_req_addr_o);
    vv_add0->mem_req_tag_o(mem_req_tag_o);
    vv_add0->mem_req_cmd_o(mem_req_cmd_o);
    vv_add0->mem_req_typ_o(mem_req_typ_o);
    vv_add0->mem_req_phys_o(mem_req_phys_o);
    vv_add0->mem_req_data_o(mem_req_data_o);
    vv_add0->mem_resp_valid_i(mem_resp_valid_i);
    vv_add0->mem_resp_addr_i(mem_resp_addr_i);
    vv_add0->mem_resp_tag_i(mem_resp_tag_i);
    vv_add0->mem_resp_cmd_i(mem_resp_cmd_i);
    vv_add0->mem_resp_typ_i(mem_resp_typ_i);
    vv_add0->mem_resp_data_i(mem_resp_data_i);
    vv_add0->mem_resp_has_data_i(mem_resp_has_data_i);
    vv_add0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
    vv_add0->mem_resp_store_data_i(mem_resp_store_data_i);
    vv_add0->mem_resp_nack_i(mem_resp_nack_i);
    vv_add0->mem_resp_replay_i(mem_resp_replay_i);

}

void vv_add_type_wrapper::InitThreads()
{
    
}

void vv_add_type_wrapper::DeleteInstances()
{
        delete vv_add0;
        vv_add0 = 0;
}

