/****************************************************************************
 *
 *  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
 *
 *  This file contains confidential information that may not be
 *  distributed under any circumstances without the written permision
 *  of Cadence Design Systems.
 *
 ***************************************************************************/

#ifndef _VV_ADD_COSIM_INCLUDED_
#define _VV_ADD_COSIM_INCLUDED_

#include "systemc.h"
#include "cynthhl.h"
#include "esc.h"
#if __GNUC__ < 3
#include <ostream.h>
#else
#include <ostream>

#endif

#ifdef NC_SYSTEMC
struct vv_add_cosim : public ncsc_foreign_module
#else
SC_MODULE(vv_add_cosim)
#endif
{
	struct StringPair {
		const char* simConfigName;
		const char* instanceName;
		bool linked;
	};

	// Instance number used during elaboration-time SystemC-to-HDL signal linkage.
	static int numLinked;
	static StringPair instanceNames[];

	static int numInstanceNames( const char* simConfigName ) {
		int nin = 0;
		for ( int i = 0; instanceNames[i].simConfigName != NULL; ++i )
			if ( strcmp( instanceNames[i].simConfigName, simConfigName ) == 0 )
				++nin;
		return nin;
	}

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

    void end_of_elaboration()
    {
#if __GNUC__ < 3
		strstream s;
#else
		std::ostringstream s;
#endif


		s << "top/";

		const char* scName = getenv("BDW_SIM_CONFIG");
		if (!scName) 
			scName = "?";

		int nin = numInstanceNames(scName);
		if ( nin == 0 )
		{
			if ( numLinked > 0 ) 
			{
				esc_report_error( esc_fatal, 
					"More than one instance of module vv_add is being simulated in Verilog,\n"
					"but no instance names have been specified in simConfig %s.\n"
					"Additional instances can be specified using the following syntax:\n\n"
					"    simConfig <config_name> { <module> RTL_V <config> <inst1> <inst2> ...}\n\n"
					"where <inst1> and <inst2> are the leaf names of instances of vv_add in SystemC\n", 
					scName );
				return;
			} else {
				s << "vv_add0" << std::ends;
			}
		}
		else
		{
			StringPair *instPair = &instanceNames[ numLinked ];
			while ( instPair->instanceName != NULL )
			{
				if ( ( ! instPair->linked )
					 && ( ! strcmp( instPair->simConfigName, scName ) ) )
				{
					const char *instName = instPair->instanceName;

					// Hierarchical SystemC instance names must be escaped for Verilog.
					if ( strchr( instName, '.' ) != NULL )
						s << '\\' << instName << ' ' << std::ends;
					else
						s << instName << std::ends;

					instPair->linked = true;
					break;
				}

				++instPair;
			}

			if ( instPair->instanceName == NULL )
			{
				esc_report_error( esc_fatal, 
								  "More than %d instance(s) of module vv_add are being simulated in Verilog,\n"
								  "but only %d instance name(s) have been specified in simConfig %s.\n",
								  nin, nin, scName );
				return;
			}
		}
		numLinked++;


#if __GNUC__ < 3
		char *c = s.str();
#else
		char *c = (char *)strdup( s.str().c_str() );
#endif

        link_signals(c, "verilog");
#if __GNUC__ < 3
		delete c;
#else
		free( c );
#endif
    }

    void link_signals(const char *module_path, const char *sim_domain)
    {
#ifndef NC_SYSTEMC
        int registeredClocks = 0;

		double inputDelay = 0.0;
		const char* scName = getenv("BDW_SIM_CONFIG");
		if (!scName) scName = "?";
		if ( qbhVerilogInputDelay( qbhEmptyHandle, scName, &inputDelay ) != qbhOK )
			inputDelay = 0.0;

		// Try to register the boolean input ports as clocks.
		int clk_is_clock = esc_link_clockgen( &clk, sc_time( 0, SC_NS ), module_path, sim_domain, "clk" );
		int rst_is_clock = esc_link_clockgen( &rst, sc_time( 0, SC_NS ), module_path, sim_domain, "rst" );
		int cc_status_i_is_clock = esc_link_clockgen( &cc_status_i, sc_time( 0, SC_NS ), module_path, sim_domain, "cc_status_i" );
		int cc_exception_i_is_clock = esc_link_clockgen( &cc_exception_i, sc_time( 0, SC_NS ), module_path, sim_domain, "cc_exception_i" );
		int cc_host_id_i_is_clock = esc_link_clockgen( &cc_host_id_i, sc_time( 0, SC_NS ), module_path, sim_domain, "cc_host_id_i" );
		int core_cmd_valid_i_is_clock = esc_link_clockgen( &core_cmd_valid_i, sc_time( 0, SC_NS ), module_path, sim_domain, "core_cmd_valid_i" );
		int core_cmd_inst_xd_i_is_clock = esc_link_clockgen( &core_cmd_inst_xd_i, sc_time( 0, SC_NS ), module_path, sim_domain, "core_cmd_inst_xd_i" );
		int core_cmd_inst_xs1_i_is_clock = esc_link_clockgen( &core_cmd_inst_xs1_i, sc_time( 0, SC_NS ), module_path, sim_domain, "core_cmd_inst_xs1_i" );
		int core_cmd_inst_xs2_i_is_clock = esc_link_clockgen( &core_cmd_inst_xs2_i, sc_time( 0, SC_NS ), module_path, sim_domain, "core_cmd_inst_xs2_i" );
		int core_resp_ready_i_is_clock = esc_link_clockgen( &core_resp_ready_i, sc_time( 0, SC_NS ), module_path, sim_domain, "core_resp_ready_i" );
		int mem_req_ready_i_is_clock = esc_link_clockgen( &mem_req_ready_i, sc_time( 0, SC_NS ), module_path, sim_domain, "mem_req_ready_i" );
		int mem_resp_valid_i_is_clock = esc_link_clockgen( &mem_resp_valid_i, sc_time( 0, SC_NS ), module_path, sim_domain, "mem_resp_valid_i" );
		int mem_resp_has_data_i_is_clock = esc_link_clockgen( &mem_resp_has_data_i, sc_time( 0, SC_NS ), module_path, sim_domain, "mem_resp_has_data_i" );
		int mem_resp_nack_i_is_clock = esc_link_clockgen( &mem_resp_nack_i, sc_time( 0, SC_NS ), module_path, sim_domain, "mem_resp_nack_i" );
		int mem_resp_replay_i_is_clock = esc_link_clockgen( &mem_resp_replay_i, sc_time( 0, SC_NS ), module_path, sim_domain, "mem_resp_replay_i" );

		esc_link_signals( &rst, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &cc_busy_o, module_path, sim_domain, true );
		esc_link_signals( &cc_interrupt_o, module_path, sim_domain, true );
		esc_link_signals( &cc_status_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &cc_exception_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &cc_host_id_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_ready_o, module_path, sim_domain, true );
		esc_link_signals( &core_cmd_valid_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_inst_funct_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_inst_rs1_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_inst_rs2_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_inst_xd_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_inst_xs1_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_inst_xs2_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_inst_rd_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_inst_opcode_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_rs1_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_cmd_rs2_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_resp_ready_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &core_resp_valid_o, module_path, sim_domain, true );
		esc_link_signals( &core_resp_rd_o, module_path, sim_domain, true );
		esc_link_signals( &core_resp_data_o, module_path, sim_domain, true );
		esc_link_signals( &mem_req_ready_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_req_valid_o, module_path, sim_domain, true );
		esc_link_signals( &mem_req_addr_o, module_path, sim_domain, true );
		esc_link_signals( &mem_req_tag_o, module_path, sim_domain, true );
		esc_link_signals( &mem_req_cmd_o, module_path, sim_domain, true );
		esc_link_signals( &mem_req_typ_o, module_path, sim_domain, true );
		esc_link_signals( &mem_req_phys_o, module_path, sim_domain, true );
		esc_link_signals( &mem_req_data_o, module_path, sim_domain, true );
		esc_link_signals( &mem_resp_valid_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_addr_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_tag_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_cmd_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_typ_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_data_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_has_data_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_data_word_bypass_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_store_data_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_nack_i, module_path, sim_domain, true, inputDelay );
		esc_link_signals( &mem_resp_replay_i, module_path, sim_domain, true, inputDelay );

		if ( clk_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = clk[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, clk.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "clk", scName ) ) {
			esc_report_error( esc_error, "The port 'clk' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( rst_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = rst[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, rst.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "rst", scName ) ) {
			esc_report_error( esc_error, "The port 'rst' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( cc_status_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = cc_status_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, cc_status_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "cc_status_i", scName ) ) {
			esc_report_error( esc_error, "The port 'cc_status_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( cc_exception_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = cc_exception_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, cc_exception_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "cc_exception_i", scName ) ) {
			esc_report_error( esc_error, "The port 'cc_exception_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( cc_host_id_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = cc_host_id_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, cc_host_id_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "cc_host_id_i", scName ) ) {
			esc_report_error( esc_error, "The port 'cc_host_id_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( core_cmd_valid_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = core_cmd_valid_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, core_cmd_valid_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "core_cmd_valid_i", scName ) ) {
			esc_report_error( esc_error, "The port 'core_cmd_valid_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( core_cmd_inst_xd_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = core_cmd_inst_xd_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, core_cmd_inst_xd_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "core_cmd_inst_xd_i", scName ) ) {
			esc_report_error( esc_error, "The port 'core_cmd_inst_xd_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( core_cmd_inst_xs1_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = core_cmd_inst_xs1_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, core_cmd_inst_xs1_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "core_cmd_inst_xs1_i", scName ) ) {
			esc_report_error( esc_error, "The port 'core_cmd_inst_xs1_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( core_cmd_inst_xs2_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = core_cmd_inst_xs2_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, core_cmd_inst_xs2_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "core_cmd_inst_xs2_i", scName ) ) {
			esc_report_error( esc_error, "The port 'core_cmd_inst_xs2_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( core_resp_ready_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = core_resp_ready_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, core_resp_ready_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "core_resp_ready_i", scName ) ) {
			esc_report_error( esc_error, "The port 'core_resp_ready_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( mem_req_ready_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = mem_req_ready_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, mem_req_ready_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "mem_req_ready_i", scName ) ) {
			esc_report_error( esc_error, "The port 'mem_req_ready_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( mem_resp_valid_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = mem_resp_valid_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, mem_resp_valid_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "mem_resp_valid_i", scName ) ) {
			esc_report_error( esc_error, "The port 'mem_resp_valid_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( mem_resp_has_data_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = mem_resp_has_data_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, mem_resp_has_data_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "mem_resp_has_data_i", scName ) ) {
			esc_report_error( esc_error, "The port 'mem_resp_has_data_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( mem_resp_nack_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = mem_resp_nack_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, mem_resp_nack_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "mem_resp_nack_i", scName ) ) {
			esc_report_error( esc_error, "The port 'mem_resp_nack_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}
		if ( mem_resp_replay_i_is_clock )
		{
			sc_signal_in_if< bool > *clock_inif = mem_resp_replay_i[0];
			sc_clock *clock_module = dynamic_cast<sc_clock*>(clock_inif);
			esc_hub_register_clock( clock_module, esc_alledge, 0, module_path, sim_domain, mem_resp_replay_i.basename() );
			++registeredClocks;
		} else if ( qbhGetPortUsedAsClock( qbhEmptyHandle, "vv_add", "mem_resp_replay_i", scName ) ) {
			esc_report_error( esc_error, "The port 'mem_resp_replay_i' on module 'vv_add'\n\tis used as a clock in the design,\n\tbut is not connected to an sc_clock");
		}


        if ( registeredClocks == 0 )
		{
			esc_report_error( esc_fatal, 
				"The clock port in module vv_add must have\n"
				"an sc_clock bound to it to make cosimulation work" );
		}
#endif
    }

#ifdef NC_SYSTEMC
    const char* hdl_name() const { return "vv_add_nc_cosim"; } 
    vv_add_cosim( sc_module_name name )
        : ncsc_foreign_module(name)
#else
	vv_add_cosim( sc_module_name in_name=sc_module_name(sc_gen_unique_name(" vv_add") ) )
		: sc_module(in_name)
#endif
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

int vv_add_cosim::numLinked = 0;
vv_add_cosim::StringPair vv_add_cosim::instanceNames[] = {
	{ NULL, NULL, false } };

#endif
