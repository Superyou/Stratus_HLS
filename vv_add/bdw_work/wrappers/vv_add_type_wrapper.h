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


#ifndef _VV_ADD_TYPE_WRAP_INCLUDED_
#define _VV_ADD_TYPE_WRAP_INCLUDED_

#if !defined(ioConfig_PIN)
#if defined(_p_ioConfig_PIN)
#define ioConfig_PIN 1
#endif
#endif


#include <systemc.h>
#include "vv_add.h"

// Declaration of wrapper with RTL level ports

SC_MODULE(vv_add_type_wrapper)
{
public:

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

    
    // These signals are used to connect structured ports or ports that need
    // type conversion to the RTL ports.
    
    

	// create the netlist
    void InitInstances();
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    

	SC_HAS_PROCESS(vv_add_type_wrapper);

	vv_add_type_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("vv_add")) )
		: sc_module(name)
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
		  	

		  ,vv_add0(0)
		

    {
        InitInstances();
        InitThreads();
		end_module();
    }


    // destructor
    ~vv_add_type_wrapper()
    {
        DeleteInstances();
    }


protected:
	vv_add* vv_add0;
};

#endif /*  */
