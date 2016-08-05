/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/


#ifndef _VV_ADD_WRAP_INCLUDED_
#define _VV_ADD_WRAP_INCLUDED_

#if !defined(ioConfig_PIN)
#if defined(_p_ioConfig_PIN)
#define ioConfig_PIN 1
#endif
#endif


/* Save ioConfig define values for parent module and define those for this module's ioConfigs. */
#if defined(ioConfig_PIN)
#if defined(ioConfig) && defined(_wrap_ioConfig) && !defined(_local_ioConfig)
#undef ioConfig
#define ioConfig _local_ioConfig
#define _local_ioConfig PIN
#endif
#endif


#if defined(CYNTHVLG) 

#include <systemc.h>

#define vv_add_wrapper vv_add

/* This is the section that is seen during processing by cynthVLG of a module
 * that instantiates the module defined by this wrapper.
 */
SC_MODULE(vv_add)
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

	SC_CTOR(vv_add);
};

#elif defined(CYNTHHL) || defined(BDW_EXTRACT)

/* This is the section seen during processing by cynthHL or bdw_extract of a module 
 * that instantiates the module defined by this wrapper.
 */
#include <systemc.h>


#define vv_add_wrapper vv_add

/* Only port declarations are required for nested modules.
 */
SC_MODULE(vv_add)
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


	SC_HAS_PROCESS(vv_add);
	vv_add_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("vv_add")) );
};

#else

#include <esc.h>


/* This is the section seen during processing by gcc either when the module
 * itself is compiled, or when a module that instantiates it is compiled.
 */

struct vv_add;
struct vv_add_cosim;
struct vv_add_cycsim;
struct vv_add_rtl;

#ifdef BDW_COWARE
#include	"vv_add_coware.h"
#endif


// Declaration of wrapper with BEH level ports

SC_MODULE(vv_add_wrapper)
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
    
    
	enum Representation { BDWRep_None, BDWRep_Behavioral, BDWRep_RTL_C, BDWRep_RTL_HDL, BDWRep_Gates, BDWRep_CYC_HDL };
	static const char * simConfigName();
	static Representation lookupRepresentation( const char* instName );
	// create the netlist
    void InitInstances();
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

	void CloseTrace();
	void start_of_simulation();
	void end_of_simulation();


    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    

	SC_HAS_PROCESS(vv_add_wrapper);

	vv_add_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("vv_add")) )
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
		  	

		  ,vv_add0(0), vv_add_cosim0(0), vv_add_rtl0(0), vv_add_cycsim0(0)
		

    {
        InitInstances();
		InitThreads();
    }


    // destructor
    ~vv_add_wrapper()
    {
        DeleteInstances();

		CloseTrace();
    }

    bool isBEH() { return ( vv_add_wrapper::lookupRepresentation( name() ) == BDWRep_Behavioral ); }
    bool isRTL_C() { return ( vv_add_wrapper::lookupRepresentation( name() ) == BDWRep_RTL_C ); }
    bool isRTL_V() { return ( vv_add_wrapper::lookupRepresentation( name() ) == BDWRep_RTL_HDL ); }
    bool isGATES_V() { return ( vv_add_wrapper::lookupRepresentation( name() ) == BDWRep_Gates ); }
	bool isCosim() { return ( isRTL_V() || isGATES_V() ); }
    bool isCycsim() { return ( vv_add_wrapper::lookupRepresentation( name() ) == BDWRep_CYC_HDL ); }

	vv_add* behModule() { return vv_add0; }
	vv_add_cosim* cosimModule() { return vv_add_cosim0; }
	vv_add_cycsim* cycsimModule() { return vv_add_cycsim0; }
	vv_add_rtl* rtlModule() { return vv_add_rtl0; }

	vv_add* vv_add0;
	vv_add_cosim* vv_add_cosim0;
	vv_add_rtl* vv_add_rtl0;
	vv_add_cycsim* vv_add_cycsim0;
};

// Declaration of wrapper with RTL level ports

SC_MODULE(vv_add_wrapper_r)
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
    
    
	enum Representation { BDWRep_None, BDWRep_Behavioral, BDWRep_RTL_C, BDWRep_RTL_HDL, BDWRep_Gates, BDWRep_CYC_HDL };

	static const char * simConfigName();
	static Representation lookupRepresentation( const char* instName );
	// create the netlist
    void InitInstances();
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

	void CloseTrace();
	void start_of_simulation();
	void end_of_simulation();


    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    

	SC_HAS_PROCESS(vv_add_wrapper_r);

	vv_add_wrapper_r( sc_module_name name = sc_module_name( sc_gen_unique_name("vv_add")) )
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
		  	

		  ,vv_add0(0), vv_add_cosim0(0), vv_add_rtl0(0), vv_add_cycsim0(0)
		

    {
        InitInstances();
        InitThreads();
		end_module();
    }


    // destructor
    ~vv_add_wrapper_r()
    {
        DeleteInstances();

		CloseTrace();
    }

    bool isBEH() { return ( vv_add_wrapper_r::lookupRepresentation( name() ) == BDWRep_Behavioral ); }
    bool isRTL_C() { return ( vv_add_wrapper_r::lookupRepresentation( name() ) == BDWRep_RTL_C ); }
    bool isRTL_V() { return ( vv_add_wrapper_r::lookupRepresentation( name() ) == BDWRep_RTL_HDL ); }
    bool isGATES_V() { return ( vv_add_wrapper_r::lookupRepresentation( name() ) == BDWRep_Gates ); }
	bool isCosim() { return ( isRTL_V() || isGATES_V() ); }
    bool isCycsim() { return ( vv_add_wrapper_r::lookupRepresentation( name() ) == BDWRep_CYC_HDL ); }

	vv_add* behModule() { return vv_add0; }
	vv_add_cosim* cosimModule() { return vv_add_cosim0; }
	vv_add_cycsim* cycsimModule() { return vv_add_cycsim0; }
	vv_add_rtl* rtlModule() { return vv_add_rtl0; }

protected:
	vv_add* vv_add0;
	vv_add_cosim* vv_add_cosim0;
	vv_add_rtl* vv_add_rtl0;
	vv_add_cycsim* vv_add_cycsim0;
};

#endif

/* Restore ioConfig define values for parent module. */
#if defined(ioConfig_PIN)
#if defined(ioConfig) && defined(_wrap_ioConfig) && defined(_local_ioConfig)
#undef _local_ioConfig
#undef ioConfig
#define ioConfig _wrap_ioConfig
#endif
#endif

#endif /*  */
