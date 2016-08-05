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
* This file is used to wrap the three different versions of the DUT
* block called "vv_add". By default, it will include the behavioral
* model. Otherwise, it will include the RTL C++ or the RTL Verilog
* depending on the definition of either of "RTL" or "COSIM".
*
****************************************************************************/

#if defined(CYNTHVLG)


#ifndef BDW_PORTS_ONLY
#define BDW_PORTS_ONLY 1
#endif


#include	"vv_add_rtl.cc"

#else 

#if defined(BDW_HUB)

#include "esc.h"

#if defined(BDW_RTL) || defined(COWARE_RTL_vv_add)

#define BDW_AUTO_KNOWN 1 


#ifndef BDW_PORTS_ONLY
#define BDW_PORTS_ONLY 1
#endif


#undef vv_add
#define vv_add vv_add_rtl
#	include	"vv_add_rtl.cc"
#undef vv_add


#ifdef BDW_PORTS_ONLY
#undef BDW_PORTS_ONLY
#endif



#elif defined(BDW_HOIST) 
#else

#endif
#ifdef BDW_COWARE
#include	"vv_add_coware.h"
#else
#include	"vv_add_cosim.h"
#endif

// include for cycle-accurate verilator simulation
#include    "vv_add_cycsim.h"



// Include the source for the behavioral model so it will be compiled.
#include	"vv_add.cc"


#define		vv_add_INTERNAL


#include	"vv_add_wrap.h"

// this global pointer indicates whether or not the Verilator cycsim wrapper is present
vv_add_cycsim* (*vv_add_cycsim_factory_p)() = 0;

#define MAX_SIMCONFIG_LENGTH 128

#if BDW_WRITEFSDB == 1

#if defined(NC_SYSTEMC) && defined(BDW_NCSC_VER) && BDW_NCSC_VER > 102
#include "fsdb_nc_mix.h"
#else
#include "fsdb_trace_file.h"
#endif 
#if BDW_USE_SCV
#include "scv.h"
#include "scv_tr_fsdb.h"
#endif

#endif /* BDW_WRITEFSDB */

inline void esc_open_fsdb_trace( const char *file_name = "systemc" );
inline void esc_close_fsdb_trace();
inline void esc_close_fsdb_scv_trace();

// The following threads are used to connect structured ports to the actual
// RTL ports

const char * vv_add_wrapper::simConfigName()
{
	static char defineBuf[MAX_SIMCONFIG_LENGTH];
	const char *simConfig = NULL;
	if ( qbhGetDefine( "BDW_SIM_CONFIG", defineBuf, MAX_SIMCONFIG_LENGTH ) == qbhOK )
	{
		simConfig = defineBuf;
	}
	else
	{
		simConfig = getenv( "BDW_SIM_CONFIG" );
	}

	if ( simConfig == NULL )
	{
		esc_report_error( esc_fatal, "BDW_SIM_CONFIG needs to be set" );
	}

	return simConfig;
}

enum vv_add_wrapper::Representation vv_add_wrapper::lookupRepresentation( const char* instName )
{
	const char *simConfig = simConfigName();

	if ( simConfig == NULL )
		return BDWRep_None;

	Representation result;

	qbhProjectHandle hProj;
	qbhError err = qbhGetCurrentProject( &hProj );
	if ( err == qbhErrorNoProject )
	{
		err = qbhOpenProject( "project.tcl", &hProj );

		if ( err != qbhOK )
		{
			esc_report_error( esc_fatal, "could not open project file %s",
							  "project.tcl" );
			return BDWRep_None;
		}
	}

	int iresult = 0;
	err = qbhGetRepresentation(hProj, "vv_add", simConfig, instName, &iresult );
	result = (Representation)iresult;

	if ( err == qbhOK )
		return result;

	// If this module isn't mentioned in the simConfig, assume it's behavioral.
	if ( err == qbhErrorNotFound ) {
		return BDWRep_Behavioral;
	} else if ( err == qbhErrorBadInstName ) {
		if (instName && *instName) {
			const char* leaf = strrchr( instName, '.' ) + 1;
			esc_report_error( esc_warning, "Instance names were specified for module '%s' in simConfig '%s', but they did not "
			                    "match the actal instance names in the RTL.  Try '%s' or '%s'. Simulating '%s' as BEH.\n",
								 "vv_add", simConfig, instName, leaf,  "vv_add" );
		}
		return BDWRep_Behavioral;
	}

    // If we couldn't get a license, then just exit.
    if ( err == qbhErrorNoLicense )
        exit(1);

	return BDWRep_None;
}

void vv_add_wrapper::InitInstances()
{
    enum vv_add_wrapper::Representation rep =
		vv_add_wrapper::lookupRepresentation( name() );

	esc_log_wrapper_inst( "vv_add" );
	esc_log_representation( "vv_add", name(), rep );

	

	switch ( rep )
	{
		case BDWRep_Gates:
		    vv_add_cosim0 = new vv_add_cosim( "vv_add" );

		    vv_add_cosim0->clk(clk);
		    vv_add_cosim0->rst(rst);
		    vv_add_cosim0->cc_busy_o(cc_busy_o);
		    vv_add_cosim0->cc_interrupt_o(cc_interrupt_o);
		    vv_add_cosim0->cc_status_i(cc_status_i);
		    vv_add_cosim0->cc_exception_i(cc_exception_i);
		    vv_add_cosim0->cc_host_id_i(cc_host_id_i);
		    vv_add_cosim0->core_cmd_ready_o(core_cmd_ready_o);
		    vv_add_cosim0->core_cmd_valid_i(core_cmd_valid_i);
		    vv_add_cosim0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
		    vv_add_cosim0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
		    vv_add_cosim0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
		    vv_add_cosim0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
		    vv_add_cosim0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
		    vv_add_cosim0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
		    vv_add_cosim0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
		    vv_add_cosim0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
		    vv_add_cosim0->core_cmd_rs1_i(core_cmd_rs1_i);
		    vv_add_cosim0->core_cmd_rs2_i(core_cmd_rs2_i);
		    vv_add_cosim0->core_resp_ready_i(core_resp_ready_i);
		    vv_add_cosim0->core_resp_valid_o(core_resp_valid_o);
		    vv_add_cosim0->core_resp_rd_o(core_resp_rd_o);
		    vv_add_cosim0->core_resp_data_o(core_resp_data_o);
		    vv_add_cosim0->mem_req_ready_i(mem_req_ready_i);
		    vv_add_cosim0->mem_req_valid_o(mem_req_valid_o);
		    vv_add_cosim0->mem_req_addr_o(mem_req_addr_o);
		    vv_add_cosim0->mem_req_tag_o(mem_req_tag_o);
		    vv_add_cosim0->mem_req_cmd_o(mem_req_cmd_o);
		    vv_add_cosim0->mem_req_typ_o(mem_req_typ_o);
		    vv_add_cosim0->mem_req_phys_o(mem_req_phys_o);
		    vv_add_cosim0->mem_req_data_o(mem_req_data_o);
		    vv_add_cosim0->mem_resp_valid_i(mem_resp_valid_i);
		    vv_add_cosim0->mem_resp_addr_i(mem_resp_addr_i);
		    vv_add_cosim0->mem_resp_tag_i(mem_resp_tag_i);
		    vv_add_cosim0->mem_resp_cmd_i(mem_resp_cmd_i);
		    vv_add_cosim0->mem_resp_typ_i(mem_resp_typ_i);
		    vv_add_cosim0->mem_resp_data_i(mem_resp_data_i);
		    vv_add_cosim0->mem_resp_has_data_i(mem_resp_has_data_i);
		    vv_add_cosim0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
		    vv_add_cosim0->mem_resp_store_data_i(mem_resp_store_data_i);
		    vv_add_cosim0->mem_resp_nack_i(mem_resp_nack_i);
		    vv_add_cosim0->mem_resp_replay_i(mem_resp_replay_i);

			break;
		case BDWRep_RTL_HDL:
		    vv_add_cosim0 = new vv_add_cosim( "vv_add" );

		    vv_add_cosim0->clk(clk);
		    vv_add_cosim0->rst(rst);
		    vv_add_cosim0->cc_busy_o(cc_busy_o);
		    vv_add_cosim0->cc_interrupt_o(cc_interrupt_o);
		    vv_add_cosim0->cc_status_i(cc_status_i);
		    vv_add_cosim0->cc_exception_i(cc_exception_i);
		    vv_add_cosim0->cc_host_id_i(cc_host_id_i);
		    vv_add_cosim0->core_cmd_ready_o(core_cmd_ready_o);
		    vv_add_cosim0->core_cmd_valid_i(core_cmd_valid_i);
		    vv_add_cosim0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
		    vv_add_cosim0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
		    vv_add_cosim0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
		    vv_add_cosim0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
		    vv_add_cosim0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
		    vv_add_cosim0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
		    vv_add_cosim0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
		    vv_add_cosim0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
		    vv_add_cosim0->core_cmd_rs1_i(core_cmd_rs1_i);
		    vv_add_cosim0->core_cmd_rs2_i(core_cmd_rs2_i);
		    vv_add_cosim0->core_resp_ready_i(core_resp_ready_i);
		    vv_add_cosim0->core_resp_valid_o(core_resp_valid_o);
		    vv_add_cosim0->core_resp_rd_o(core_resp_rd_o);
		    vv_add_cosim0->core_resp_data_o(core_resp_data_o);
		    vv_add_cosim0->mem_req_ready_i(mem_req_ready_i);
		    vv_add_cosim0->mem_req_valid_o(mem_req_valid_o);
		    vv_add_cosim0->mem_req_addr_o(mem_req_addr_o);
		    vv_add_cosim0->mem_req_tag_o(mem_req_tag_o);
		    vv_add_cosim0->mem_req_cmd_o(mem_req_cmd_o);
		    vv_add_cosim0->mem_req_typ_o(mem_req_typ_o);
		    vv_add_cosim0->mem_req_phys_o(mem_req_phys_o);
		    vv_add_cosim0->mem_req_data_o(mem_req_data_o);
		    vv_add_cosim0->mem_resp_valid_i(mem_resp_valid_i);
		    vv_add_cosim0->mem_resp_addr_i(mem_resp_addr_i);
		    vv_add_cosim0->mem_resp_tag_i(mem_resp_tag_i);
		    vv_add_cosim0->mem_resp_cmd_i(mem_resp_cmd_i);
		    vv_add_cosim0->mem_resp_typ_i(mem_resp_typ_i);
		    vv_add_cosim0->mem_resp_data_i(mem_resp_data_i);
		    vv_add_cosim0->mem_resp_has_data_i(mem_resp_has_data_i);
		    vv_add_cosim0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
		    vv_add_cosim0->mem_resp_store_data_i(mem_resp_store_data_i);
		    vv_add_cosim0->mem_resp_nack_i(mem_resp_nack_i);
		    vv_add_cosim0->mem_resp_replay_i(mem_resp_replay_i);

			break;
        case BDWRep_CYC_HDL:
            if ( vv_add_cycsim_factory_p )
                vv_add_cycsim0 = vv_add_cycsim_factory_p();
            else
            {
                esc_report_error( esc_fatal, "verilator_produced files not available for module vv_add");
                return;
            }

            esc_report_error( esc_note, " using verilator model for module \"vv_add\"");

		    vv_add_cycsim0->clk(clk);
		    vv_add_cycsim0->rst(rst);
		    vv_add_cycsim0->cc_busy_o(cc_busy_o);
		    vv_add_cycsim0->cc_interrupt_o(cc_interrupt_o);
		    vv_add_cycsim0->cc_status_i(cc_status_i);
		    vv_add_cycsim0->cc_exception_i(cc_exception_i);
		    vv_add_cycsim0->cc_host_id_i(cc_host_id_i);
		    vv_add_cycsim0->core_cmd_ready_o(core_cmd_ready_o);
		    vv_add_cycsim0->core_cmd_valid_i(core_cmd_valid_i);
		    vv_add_cycsim0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
		    vv_add_cycsim0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
		    vv_add_cycsim0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
		    vv_add_cycsim0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
		    vv_add_cycsim0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
		    vv_add_cycsim0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
		    vv_add_cycsim0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
		    vv_add_cycsim0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
		    vv_add_cycsim0->core_cmd_rs1_i(core_cmd_rs1_i);
		    vv_add_cycsim0->core_cmd_rs2_i(core_cmd_rs2_i);
		    vv_add_cycsim0->core_resp_ready_i(core_resp_ready_i);
		    vv_add_cycsim0->core_resp_valid_o(core_resp_valid_o);
		    vv_add_cycsim0->core_resp_rd_o(core_resp_rd_o);
		    vv_add_cycsim0->core_resp_data_o(core_resp_data_o);
		    vv_add_cycsim0->mem_req_ready_i(mem_req_ready_i);
		    vv_add_cycsim0->mem_req_valid_o(mem_req_valid_o);
		    vv_add_cycsim0->mem_req_addr_o(mem_req_addr_o);
		    vv_add_cycsim0->mem_req_tag_o(mem_req_tag_o);
		    vv_add_cycsim0->mem_req_cmd_o(mem_req_cmd_o);
		    vv_add_cycsim0->mem_req_typ_o(mem_req_typ_o);
		    vv_add_cycsim0->mem_req_phys_o(mem_req_phys_o);
		    vv_add_cycsim0->mem_req_data_o(mem_req_data_o);
		    vv_add_cycsim0->mem_resp_valid_i(mem_resp_valid_i);
		    vv_add_cycsim0->mem_resp_addr_i(mem_resp_addr_i);
		    vv_add_cycsim0->mem_resp_tag_i(mem_resp_tag_i);
		    vv_add_cycsim0->mem_resp_cmd_i(mem_resp_cmd_i);
		    vv_add_cycsim0->mem_resp_typ_i(mem_resp_typ_i);
		    vv_add_cycsim0->mem_resp_data_i(mem_resp_data_i);
		    vv_add_cycsim0->mem_resp_has_data_i(mem_resp_has_data_i);
		    vv_add_cycsim0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
		    vv_add_cycsim0->mem_resp_store_data_i(mem_resp_store_data_i);
		    vv_add_cycsim0->mem_resp_nack_i(mem_resp_nack_i);
		    vv_add_cycsim0->mem_resp_replay_i(mem_resp_replay_i);

			break;
#if defined(BDW_RTL) || defined(COWARE_RTL_vv_add)
		case BDWRep_RTL_C:
		    vv_add_rtl0 = new vv_add_rtl( "vv_add" );

		    vv_add_rtl0->clk(clk);
		    vv_add_rtl0->rst(rst);
		    vv_add_rtl0->cc_busy_o(cc_busy_o);
		    vv_add_rtl0->cc_interrupt_o(cc_interrupt_o);
		    vv_add_rtl0->cc_status_i(cc_status_i);
		    vv_add_rtl0->cc_exception_i(cc_exception_i);
		    vv_add_rtl0->cc_host_id_i(cc_host_id_i);
		    vv_add_rtl0->core_cmd_ready_o(core_cmd_ready_o);
		    vv_add_rtl0->core_cmd_valid_i(core_cmd_valid_i);
		    vv_add_rtl0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
		    vv_add_rtl0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
		    vv_add_rtl0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
		    vv_add_rtl0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
		    vv_add_rtl0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
		    vv_add_rtl0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
		    vv_add_rtl0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
		    vv_add_rtl0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
		    vv_add_rtl0->core_cmd_rs1_i(core_cmd_rs1_i);
		    vv_add_rtl0->core_cmd_rs2_i(core_cmd_rs2_i);
		    vv_add_rtl0->core_resp_ready_i(core_resp_ready_i);
		    vv_add_rtl0->core_resp_valid_o(core_resp_valid_o);
		    vv_add_rtl0->core_resp_rd_o(core_resp_rd_o);
		    vv_add_rtl0->core_resp_data_o(core_resp_data_o);
		    vv_add_rtl0->mem_req_ready_i(mem_req_ready_i);
		    vv_add_rtl0->mem_req_valid_o(mem_req_valid_o);
		    vv_add_rtl0->mem_req_addr_o(mem_req_addr_o);
		    vv_add_rtl0->mem_req_tag_o(mem_req_tag_o);
		    vv_add_rtl0->mem_req_cmd_o(mem_req_cmd_o);
		    vv_add_rtl0->mem_req_typ_o(mem_req_typ_o);
		    vv_add_rtl0->mem_req_phys_o(mem_req_phys_o);
		    vv_add_rtl0->mem_req_data_o(mem_req_data_o);
		    vv_add_rtl0->mem_resp_valid_i(mem_resp_valid_i);
		    vv_add_rtl0->mem_resp_addr_i(mem_resp_addr_i);
		    vv_add_rtl0->mem_resp_tag_i(mem_resp_tag_i);
		    vv_add_rtl0->mem_resp_cmd_i(mem_resp_cmd_i);
		    vv_add_rtl0->mem_resp_typ_i(mem_resp_typ_i);
		    vv_add_rtl0->mem_resp_data_i(mem_resp_data_i);
		    vv_add_rtl0->mem_resp_has_data_i(mem_resp_has_data_i);
		    vv_add_rtl0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
		    vv_add_rtl0->mem_resp_store_data_i(mem_resp_store_data_i);
		    vv_add_rtl0->mem_resp_nack_i(mem_resp_nack_i);
		    vv_add_rtl0->mem_resp_replay_i(mem_resp_replay_i);


			{
			const char *simConfig = vv_add_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
#endif
		case BDWRep_Behavioral:
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


			{
			const char *simConfig = vv_add_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
		case BDWRep_None:
		default:
			esc_report_error( esc_error, "No representation could be determined for simulating instance %s. Please make sure that you used the right name string in the module constructor",
							  name() );
			break;
	}
}

void vv_add_wrapper::InitThreads()
{
	if ( !isBEH() )
	{
		
	}
}

void vv_add_wrapper::start_of_simulation()
{

#include <vv_add_trace.h>

    esc_multiple_writers_warning();
}

void vv_add_wrapper::CloseTrace()
{
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
	esc_close_vcd_trace();
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		esc_close_fsdb_trace();
		if ( esc_trace_is_enabled( esc_trace_scv ) ) {
			esc_close_fsdb_scv_trace();
		}
	}
}

void vv_add_wrapper::end_of_simulation()
{
	CloseTrace();
}



void vv_add_wrapper::DeleteInstances()
{
    if (vv_add0)
    {
        delete vv_add0;
        vv_add0 = 0;
    }
    if (vv_add_cosim0)
    {
        delete vv_add_cosim0;
        vv_add_cosim0 = 0;
    }
    if (vv_add_cycsim0)
    {
        delete vv_add_cycsim0;
        vv_add_cycsim0 = 0;
    }
#if defined(BDW_RTL) || defined(COWARE_RTL_vv_add)
    if (vv_add_rtl0)
    {
        delete vv_add_rtl0;
        vv_add_rtl0 = 0;
    }
#endif
}

// The following threads are used to connect RTL ports to the actual
// structured ports

const char * vv_add_wrapper_r::simConfigName()
{
	static char defineBuf[MAX_SIMCONFIG_LENGTH];
	const char *simConfig = NULL;
	if ( qbhGetDefine( "BDW_SIM_CONFIG", defineBuf, MAX_SIMCONFIG_LENGTH ) == qbhOK )
	{
		simConfig = defineBuf;
	}
	else
	{
		simConfig = getenv( "BDW_SIM_CONFIG" );
	}

	if ( simConfig == NULL )
	{
		esc_report_error( esc_fatal, "BDW_SIM_CONFIG needs to be set" );
	}

	return simConfig;
}

enum vv_add_wrapper_r::Representation vv_add_wrapper_r::lookupRepresentation( const char* instName )
{
	const char *simConfig = simConfigName();

	if ( simConfig == NULL )
		return BDWRep_None;

	Representation result;

	qbhProjectHandle hProj;
	qbhError err = qbhGetCurrentProject( &hProj );
	if ( err == qbhErrorNoProject )
	{
		err = qbhOpenProject( "project.tcl", &hProj );

		if ( err != qbhOK )
		{
			esc_report_error( esc_fatal, "could not open project file %s",
							  "project.tcl" );
			return BDWRep_None;
		}
	}

	int iresult = 0;
	err = qbhGetRepresentation(hProj, "vv_add", simConfig, instName, &iresult );
	result = (Representation)iresult;

	if ( err == qbhOK )
		return result;

	// If this module isn't mentioned in the simConfig, assume it's behavioral.
	if ( err == qbhErrorNotFound )
		return BDWRep_Behavioral;

    // If we couldn't get a license, then just exit.
    if ( err == qbhErrorNoLicense )
        exit(1);

	return BDWRep_None;
}

void vv_add_wrapper_r::InitInstances()
{
    enum vv_add_wrapper_r::Representation rep =
		vv_add_wrapper_r::lookupRepresentation( name() );

	esc_log_wrapper_inst( "vv_add" );
	esc_log_representation( "vv_add", name(), rep );

	switch ( rep )
	{
		case BDWRep_Gates:
		    vv_add_cosim0 = new vv_add_cosim( "vv_add" );

		    vv_add_cosim0->clk(clk);
		    vv_add_cosim0->rst(rst);
		    vv_add_cosim0->cc_busy_o(cc_busy_o);
		    vv_add_cosim0->cc_interrupt_o(cc_interrupt_o);
		    vv_add_cosim0->cc_status_i(cc_status_i);
		    vv_add_cosim0->cc_exception_i(cc_exception_i);
		    vv_add_cosim0->cc_host_id_i(cc_host_id_i);
		    vv_add_cosim0->core_cmd_ready_o(core_cmd_ready_o);
		    vv_add_cosim0->core_cmd_valid_i(core_cmd_valid_i);
		    vv_add_cosim0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
		    vv_add_cosim0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
		    vv_add_cosim0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
		    vv_add_cosim0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
		    vv_add_cosim0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
		    vv_add_cosim0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
		    vv_add_cosim0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
		    vv_add_cosim0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
		    vv_add_cosim0->core_cmd_rs1_i(core_cmd_rs1_i);
		    vv_add_cosim0->core_cmd_rs2_i(core_cmd_rs2_i);
		    vv_add_cosim0->core_resp_ready_i(core_resp_ready_i);
		    vv_add_cosim0->core_resp_valid_o(core_resp_valid_o);
		    vv_add_cosim0->core_resp_rd_o(core_resp_rd_o);
		    vv_add_cosim0->core_resp_data_o(core_resp_data_o);
		    vv_add_cosim0->mem_req_ready_i(mem_req_ready_i);
		    vv_add_cosim0->mem_req_valid_o(mem_req_valid_o);
		    vv_add_cosim0->mem_req_addr_o(mem_req_addr_o);
		    vv_add_cosim0->mem_req_tag_o(mem_req_tag_o);
		    vv_add_cosim0->mem_req_cmd_o(mem_req_cmd_o);
		    vv_add_cosim0->mem_req_typ_o(mem_req_typ_o);
		    vv_add_cosim0->mem_req_phys_o(mem_req_phys_o);
		    vv_add_cosim0->mem_req_data_o(mem_req_data_o);
		    vv_add_cosim0->mem_resp_valid_i(mem_resp_valid_i);
		    vv_add_cosim0->mem_resp_addr_i(mem_resp_addr_i);
		    vv_add_cosim0->mem_resp_tag_i(mem_resp_tag_i);
		    vv_add_cosim0->mem_resp_cmd_i(mem_resp_cmd_i);
		    vv_add_cosim0->mem_resp_typ_i(mem_resp_typ_i);
		    vv_add_cosim0->mem_resp_data_i(mem_resp_data_i);
		    vv_add_cosim0->mem_resp_has_data_i(mem_resp_has_data_i);
		    vv_add_cosim0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
		    vv_add_cosim0->mem_resp_store_data_i(mem_resp_store_data_i);
		    vv_add_cosim0->mem_resp_nack_i(mem_resp_nack_i);
		    vv_add_cosim0->mem_resp_replay_i(mem_resp_replay_i);

			break;
		case BDWRep_RTL_HDL:
		    vv_add_cosim0 = new vv_add_cosim( "vv_add" );

		    vv_add_cosim0->clk(clk);
		    vv_add_cosim0->rst(rst);
		    vv_add_cosim0->cc_busy_o(cc_busy_o);
		    vv_add_cosim0->cc_interrupt_o(cc_interrupt_o);
		    vv_add_cosim0->cc_status_i(cc_status_i);
		    vv_add_cosim0->cc_exception_i(cc_exception_i);
		    vv_add_cosim0->cc_host_id_i(cc_host_id_i);
		    vv_add_cosim0->core_cmd_ready_o(core_cmd_ready_o);
		    vv_add_cosim0->core_cmd_valid_i(core_cmd_valid_i);
		    vv_add_cosim0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
		    vv_add_cosim0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
		    vv_add_cosim0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
		    vv_add_cosim0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
		    vv_add_cosim0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
		    vv_add_cosim0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
		    vv_add_cosim0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
		    vv_add_cosim0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
		    vv_add_cosim0->core_cmd_rs1_i(core_cmd_rs1_i);
		    vv_add_cosim0->core_cmd_rs2_i(core_cmd_rs2_i);
		    vv_add_cosim0->core_resp_ready_i(core_resp_ready_i);
		    vv_add_cosim0->core_resp_valid_o(core_resp_valid_o);
		    vv_add_cosim0->core_resp_rd_o(core_resp_rd_o);
		    vv_add_cosim0->core_resp_data_o(core_resp_data_o);
		    vv_add_cosim0->mem_req_ready_i(mem_req_ready_i);
		    vv_add_cosim0->mem_req_valid_o(mem_req_valid_o);
		    vv_add_cosim0->mem_req_addr_o(mem_req_addr_o);
		    vv_add_cosim0->mem_req_tag_o(mem_req_tag_o);
		    vv_add_cosim0->mem_req_cmd_o(mem_req_cmd_o);
		    vv_add_cosim0->mem_req_typ_o(mem_req_typ_o);
		    vv_add_cosim0->mem_req_phys_o(mem_req_phys_o);
		    vv_add_cosim0->mem_req_data_o(mem_req_data_o);
		    vv_add_cosim0->mem_resp_valid_i(mem_resp_valid_i);
		    vv_add_cosim0->mem_resp_addr_i(mem_resp_addr_i);
		    vv_add_cosim0->mem_resp_tag_i(mem_resp_tag_i);
		    vv_add_cosim0->mem_resp_cmd_i(mem_resp_cmd_i);
		    vv_add_cosim0->mem_resp_typ_i(mem_resp_typ_i);
		    vv_add_cosim0->mem_resp_data_i(mem_resp_data_i);
		    vv_add_cosim0->mem_resp_has_data_i(mem_resp_has_data_i);
		    vv_add_cosim0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
		    vv_add_cosim0->mem_resp_store_data_i(mem_resp_store_data_i);
		    vv_add_cosim0->mem_resp_nack_i(mem_resp_nack_i);
		    vv_add_cosim0->mem_resp_replay_i(mem_resp_replay_i);

			break;
        case BDWRep_CYC_HDL:
            if ( vv_add_cycsim_factory_p )
                vv_add_cycsim0 = vv_add_cycsim_factory_p();
            else
            {
                esc_report_error( esc_fatal, "verilator_produced files not available for module vv_add");
                return;
            }

            esc_report_error( esc_note, " using verilator model for module \"vv_add\"");

		    vv_add_cycsim0->clk(clk);
		    vv_add_cycsim0->rst(rst);
		    vv_add_cycsim0->cc_busy_o(cc_busy_o);
		    vv_add_cycsim0->cc_interrupt_o(cc_interrupt_o);
		    vv_add_cycsim0->cc_status_i(cc_status_i);
		    vv_add_cycsim0->cc_exception_i(cc_exception_i);
		    vv_add_cycsim0->cc_host_id_i(cc_host_id_i);
		    vv_add_cycsim0->core_cmd_ready_o(core_cmd_ready_o);
		    vv_add_cycsim0->core_cmd_valid_i(core_cmd_valid_i);
		    vv_add_cycsim0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
		    vv_add_cycsim0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
		    vv_add_cycsim0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
		    vv_add_cycsim0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
		    vv_add_cycsim0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
		    vv_add_cycsim0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
		    vv_add_cycsim0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
		    vv_add_cycsim0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
		    vv_add_cycsim0->core_cmd_rs1_i(core_cmd_rs1_i);
		    vv_add_cycsim0->core_cmd_rs2_i(core_cmd_rs2_i);
		    vv_add_cycsim0->core_resp_ready_i(core_resp_ready_i);
		    vv_add_cycsim0->core_resp_valid_o(core_resp_valid_o);
		    vv_add_cycsim0->core_resp_rd_o(core_resp_rd_o);
		    vv_add_cycsim0->core_resp_data_o(core_resp_data_o);
		    vv_add_cycsim0->mem_req_ready_i(mem_req_ready_i);
		    vv_add_cycsim0->mem_req_valid_o(mem_req_valid_o);
		    vv_add_cycsim0->mem_req_addr_o(mem_req_addr_o);
		    vv_add_cycsim0->mem_req_tag_o(mem_req_tag_o);
		    vv_add_cycsim0->mem_req_cmd_o(mem_req_cmd_o);
		    vv_add_cycsim0->mem_req_typ_o(mem_req_typ_o);
		    vv_add_cycsim0->mem_req_phys_o(mem_req_phys_o);
		    vv_add_cycsim0->mem_req_data_o(mem_req_data_o);
		    vv_add_cycsim0->mem_resp_valid_i(mem_resp_valid_i);
		    vv_add_cycsim0->mem_resp_addr_i(mem_resp_addr_i);
		    vv_add_cycsim0->mem_resp_tag_i(mem_resp_tag_i);
		    vv_add_cycsim0->mem_resp_cmd_i(mem_resp_cmd_i);
		    vv_add_cycsim0->mem_resp_typ_i(mem_resp_typ_i);
		    vv_add_cycsim0->mem_resp_data_i(mem_resp_data_i);
		    vv_add_cycsim0->mem_resp_has_data_i(mem_resp_has_data_i);
		    vv_add_cycsim0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
		    vv_add_cycsim0->mem_resp_store_data_i(mem_resp_store_data_i);
		    vv_add_cycsim0->mem_resp_nack_i(mem_resp_nack_i);
		    vv_add_cycsim0->mem_resp_replay_i(mem_resp_replay_i);

			break;
#if defined(BDW_RTL) || defined(COWARE_RTL_vv_add)
		case BDWRep_RTL_C:
		    vv_add_rtl0 = new vv_add_rtl( "vv_add" );

		    vv_add_rtl0->clk(clk);
		    vv_add_rtl0->rst(rst);
		    vv_add_rtl0->cc_busy_o(cc_busy_o);
		    vv_add_rtl0->cc_interrupt_o(cc_interrupt_o);
		    vv_add_rtl0->cc_status_i(cc_status_i);
		    vv_add_rtl0->cc_exception_i(cc_exception_i);
		    vv_add_rtl0->cc_host_id_i(cc_host_id_i);
		    vv_add_rtl0->core_cmd_ready_o(core_cmd_ready_o);
		    vv_add_rtl0->core_cmd_valid_i(core_cmd_valid_i);
		    vv_add_rtl0->core_cmd_inst_funct_i(core_cmd_inst_funct_i);
		    vv_add_rtl0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i);
		    vv_add_rtl0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i);
		    vv_add_rtl0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
		    vv_add_rtl0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
		    vv_add_rtl0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
		    vv_add_rtl0->core_cmd_inst_rd_i(core_cmd_inst_rd_i);
		    vv_add_rtl0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i);
		    vv_add_rtl0->core_cmd_rs1_i(core_cmd_rs1_i);
		    vv_add_rtl0->core_cmd_rs2_i(core_cmd_rs2_i);
		    vv_add_rtl0->core_resp_ready_i(core_resp_ready_i);
		    vv_add_rtl0->core_resp_valid_o(core_resp_valid_o);
		    vv_add_rtl0->core_resp_rd_o(core_resp_rd_o);
		    vv_add_rtl0->core_resp_data_o(core_resp_data_o);
		    vv_add_rtl0->mem_req_ready_i(mem_req_ready_i);
		    vv_add_rtl0->mem_req_valid_o(mem_req_valid_o);
		    vv_add_rtl0->mem_req_addr_o(mem_req_addr_o);
		    vv_add_rtl0->mem_req_tag_o(mem_req_tag_o);
		    vv_add_rtl0->mem_req_cmd_o(mem_req_cmd_o);
		    vv_add_rtl0->mem_req_typ_o(mem_req_typ_o);
		    vv_add_rtl0->mem_req_phys_o(mem_req_phys_o);
		    vv_add_rtl0->mem_req_data_o(mem_req_data_o);
		    vv_add_rtl0->mem_resp_valid_i(mem_resp_valid_i);
		    vv_add_rtl0->mem_resp_addr_i(mem_resp_addr_i);
		    vv_add_rtl0->mem_resp_tag_i(mem_resp_tag_i);
		    vv_add_rtl0->mem_resp_cmd_i(mem_resp_cmd_i);
		    vv_add_rtl0->mem_resp_typ_i(mem_resp_typ_i);
		    vv_add_rtl0->mem_resp_data_i(mem_resp_data_i);
		    vv_add_rtl0->mem_resp_has_data_i(mem_resp_has_data_i);
		    vv_add_rtl0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i);
		    vv_add_rtl0->mem_resp_store_data_i(mem_resp_store_data_i);
		    vv_add_rtl0->mem_resp_nack_i(mem_resp_nack_i);
		    vv_add_rtl0->mem_resp_replay_i(mem_resp_replay_i);


			{
			const char *simConfig = vv_add_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
#endif
		case BDWRep_Behavioral:
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


			{
			const char *simConfig = vv_add_wrapper::simConfigName();
			
			if ( simConfig != NULL )
				{
				qbhProjectHandle hProj;
				qbhError err = qbhGetCurrentProject( &hProj );
				if ( err == qbhErrorNoProject )
				{
					err = qbhOpenProject( "project.tcl", &hProj );
			
					if ( err != qbhOK )
					{
						esc_report_error( esc_fatal, "could not open project file %s",
											  "project.tcl" );
							return;
					}
				}
			
				if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
					esc_get_vcd_trace_file();
				}
				if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
					esc_get_fsdb_trace_file();
				}
				}
			}

			break;
		case BDWRep_None:
		default:
			esc_report_error( esc_error, "No representation could be determined for simulating instance %s. Please make sure that you used the right name string in the module constructor",
							  name() );
			break;
	}
}

void vv_add_wrapper_r::InitThreads()
{
	if ( isBEH() ) 
	{
		
	}
}

void vv_add_wrapper_r::start_of_simulation()
{

#include <vv_add_trace.h>

    esc_multiple_writers_warning();
}

void vv_add_wrapper_r::CloseTrace()
{
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
	esc_close_vcd_trace();
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		esc_close_fsdb_trace();
		if ( esc_trace_is_enabled( esc_trace_scv ) ) {
			esc_close_fsdb_scv_trace();
		}
	}
}

void vv_add_wrapper_r::end_of_simulation()
{
	CloseTrace();
}



void vv_add_wrapper_r::DeleteInstances()
{
    if (vv_add0)
    {
        delete vv_add0;
        vv_add0 = 0;
    }
    if (vv_add_cosim0)
    {
        delete vv_add_cosim0;
        vv_add_cosim0 = 0;
    }
    if (vv_add_cycsim0)
    {
        delete vv_add_cycsim0;
        vv_add_cycsim0 = 0;
    }
#if defined(BDW_RTL) || defined(COWARE_RTL_vv_add)
    if (vv_add_rtl0)
    {
        delete vv_add_rtl0;
        vv_add_rtl0 = 0;
    }
#endif
}

#if BDW_WRITEFSDB == 1

inline void esc_open_fsdb_trace( const char *file_name  )
{
#if defined(NC_SYSTEMC) && defined(BDW_NCSC_VER) && BDW_NCSC_VER > 102
    fsdbDumpfile(file_name);
# else
	sc_trace_file *fsdb_file;

	// SystemC suffixes .fsdb to filenames automatically. Make sure
	// that doesn't get tacked onto a filename that already has the suffix.
	if ( strrchr( file_name, '.' ) != NULL )
	{
		char *trunc_file_name = new char[strlen(file_name)+1];
		strcpy( trunc_file_name, file_name );

		fsdb_file = new fsdb_trace_file( trunc_file_name );
		esc_set_trace_file( fsdb_file, esc_trace_fsdb );

		delete trunc_file_name;
	}
	else
	{
		fsdb_file = new fsdb_trace_file( file_name );
		esc_set_trace_file( fsdb_file, esc_trace_fsdb );
	}
#endif

//
// Novas's SystemC wrapper doesn't have a way to set the time unit as of SystemC 2.1v1.
//
//		((fsdb_trace_file*)fsdb_file)->sc_set_fsdb_time_unit( -12 );
}

inline void esc_close_fsdb_trace()
{
#if ! defined(NC_SYSTEMC) | ! defined(BDW_NCSC_VER) | BDW_NCSC_VER <= 102
	fsdb_trace_file * fsdb_file =
		(fsdb_trace_file *)esc_trace_file( esc_trace_fsdb );

	if ( fsdb_file != NULL )
	{
		fsdb_file->CloseFile();
		delete fsdb_file;
		esc_set_trace_file( NULL, esc_trace_fsdb );
	}
#endif
}

#else

inline void esc_open_fsdb_trace( const char *file_name )
{
}

inline void esc_close_fsdb_trace()
{
}

#endif

#if BDW_USE_SCV && BDW_WRITEFSDB == 1
static scv_tr_db* local_fsdb_scv_db = 0;

inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
	// Start SCV logging to FSDB if there is not already a database setup.
    if (!esc_get_scv_tr_db() && esc_trace_is_enabled(esc_trace_scv) )
	{
		scv_startup();
		scv_tr_fsdb_init();

		char* scv_file_name = new char[strlen(file_name) + 1];
		strcpy( scv_file_name, file_name );
		char* fsdb_suffix = strstr( scv_file_name, ".fsdb" );
		if (fsdb_suffix)
			*fsdb_suffix = 0;
		local_fsdb_scv_db = new scv_tr_db(scv_file_name);

		delete [] scv_file_name;
		esc_set_scv_tr_db(local_fsdb_scv_db);
		scv_tr_db::set_default_db(local_fsdb_scv_db);
		local_fsdb_scv_db->set_recording(true);
	}
}

inline void esc_close_fsdb_scv_trace()
{
    if ( local_fsdb_scv_db && (local_fsdb_scv_db == esc_get_scv_tr_db() ) ) 
	{
		delete local_fsdb_scv_db;
		local_fsdb_scv_db = 0;
		esc_set_scv_tr_db(0);
	}
}
#else 
inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
}

inline void esc_close_fsdb_scv_trace()
{
}

#endif

class vv_add_wrapper_fsdb_opener {
public:
	vv_add_wrapper_fsdb_opener() {
		esc_set_open_fsdb_trace( esc_open_fsdb_trace );
		esc_set_open_fsdb_scv_trace( esc_open_fsdb_scv_trace );
	}
};

static vv_add_wrapper_fsdb_opener
  vv_add_wrapper_fsdb_opener_inst;

#else

// Visible to uses of the wrapper outside of the BDW environment.
// Only behavioral SystemC simulation is supported.


// Include the source for the behavioral model so it will be compiled.
#include	"vv_add.cc"

#define		vv_add_INTERNAL


#include	"vv_add_wrap.h"

const char * vv_add_wrapper::simConfigName()
{
  return "";
}

enum vv_add_wrapper::Representation vv_add_wrapper::lookupRepresentation( const char* instName )
{
  return BDWRep_Behavioral;
}

void vv_add_wrapper::InitInstances()
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

void vv_add_wrapper::InitThreads()
{
}

void vv_add_wrapper::CloseTrace()
{
}

void vv_add_wrapper::DeleteInstances()
{
    if (vv_add0)
    {
        delete vv_add0;
        vv_add0 = 0;
    }
}

void vv_add_wrapper::start_of_simulation()
{
}

void vv_add_wrapper::end_of_simulation()
{
}



inline void esc_open_fsdb_trace( const char *file_name )
{
}

inline void esc_close_fsdb_trace()
{
}


inline void esc_open_fsdb_scv_trace( const char *file_name  )
{
}

inline void esc_close_fsdb_scv_trace()
{
}

class vv_add_wrapper_fsdb_opener {
public:
	vv_add_wrapper_fsdb_opener() {
	}
};

static vv_add_wrapper_fsdb_opener
  vv_add_wrapper_fsdb_opener_inst;

#endif

#endif
