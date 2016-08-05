/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/

#ifdef NCSC
#include <string>
typedef std::string sc_string;
#define SYSTEMC_VERSION 20070314
#endif

#include "vv_add_cycsim.h"
#include "esc_catrace.h"
#include "verilated.h"
#include "Vvv_add_rtl.h"


class Vvv_add_rtl;

class vv_add_cycsimV : public vv_add_cycsim
{
    // Port declarations inherited from parent class

    // These signals are used to connect ports that need type conversion to the RTL ports
    sc_signal< uint32_t > core_cmd_inst_funct_i_I;
    sc_signal< uint32_t > core_cmd_inst_rs1_i_I;
    sc_signal< uint32_t > core_cmd_inst_rs2_i_I;
    sc_signal< uint32_t > core_cmd_inst_rd_i_I;
    sc_signal< uint32_t > core_cmd_inst_opcode_i_I;
    sc_signal< uint64_t > core_cmd_rs1_i_I;
    sc_signal< uint64_t > core_cmd_rs2_i_I;
    sc_signal< uint32_t > core_resp_rd_o_O;
    sc_signal< uint64_t > core_resp_data_o_O;
    sc_signal< uint64_t > mem_req_addr_o_O;
    sc_signal< uint32_t > mem_req_tag_o_O;
    sc_signal< uint32_t > mem_req_cmd_o_O;
    sc_signal< uint32_t > mem_req_typ_o_O;
    sc_signal< uint64_t > mem_req_data_o_O;
    sc_signal< uint64_t > mem_resp_addr_i_I;
    sc_signal< uint32_t > mem_resp_tag_i_I;
    sc_signal< uint32_t > mem_resp_cmd_i_I;
    sc_signal< uint32_t > mem_resp_typ_i_I;
    sc_signal< uint64_t > mem_resp_data_i_I;
    sc_signal< uint64_t > mem_resp_data_word_bypass_i_I;
    sc_signal< uint64_t > mem_resp_store_data_i_I;


    // The following threads are used to do the type conversion.
    inline void thread_core_cmd_inst_funct_i_I() {
        core_cmd_inst_funct_i_I = (sc_uint<7>)core_cmd_inst_funct_i.read();
    };
    inline void thread_core_cmd_inst_rs1_i_I() {
        core_cmd_inst_rs1_i_I = (sc_uint<5>)core_cmd_inst_rs1_i.read();
    };
    inline void thread_core_cmd_inst_rs2_i_I() {
        core_cmd_inst_rs2_i_I = (sc_uint<5>)core_cmd_inst_rs2_i.read();
    };
    inline void thread_core_cmd_inst_rd_i_I() {
        core_cmd_inst_rd_i_I = (sc_uint<5>)core_cmd_inst_rd_i.read();
    };
    inline void thread_core_cmd_inst_opcode_i_I() {
        core_cmd_inst_opcode_i_I = (sc_uint<7>)core_cmd_inst_opcode_i.read();
    };
    inline void thread_core_cmd_rs1_i_I() {
        core_cmd_rs1_i_I = (sc_uint<64>)core_cmd_rs1_i.read();
    };
    inline void thread_core_cmd_rs2_i_I() {
        core_cmd_rs2_i_I = (sc_uint<64>)core_cmd_rs2_i.read();
    };
    inline void thread_core_resp_rd_o_O() {
        core_resp_rd_o = core_resp_rd_o_O.read();
    };
    inline void thread_core_resp_data_o_O() {
        core_resp_data_o = core_resp_data_o_O.read();
    };
    inline void thread_mem_req_addr_o_O() {
        mem_req_addr_o = mem_req_addr_o_O.read();
    };
    inline void thread_mem_req_tag_o_O() {
        mem_req_tag_o = mem_req_tag_o_O.read();
    };
    inline void thread_mem_req_cmd_o_O() {
        mem_req_cmd_o = mem_req_cmd_o_O.read();
    };
    inline void thread_mem_req_typ_o_O() {
        mem_req_typ_o = mem_req_typ_o_O.read();
    };
    inline void thread_mem_req_data_o_O() {
        mem_req_data_o = mem_req_data_o_O.read();
    };
    inline void thread_mem_resp_addr_i_I() {
        mem_resp_addr_i_I = (sc_uint<40>)mem_resp_addr_i.read();
    };
    inline void thread_mem_resp_tag_i_I() {
        mem_resp_tag_i_I = (sc_uint<10>)mem_resp_tag_i.read();
    };
    inline void thread_mem_resp_cmd_i_I() {
        mem_resp_cmd_i_I = (sc_uint<5>)mem_resp_cmd_i.read();
    };
    inline void thread_mem_resp_typ_i_I() {
        mem_resp_typ_i_I = (sc_uint<3>)mem_resp_typ_i.read();
    };
    inline void thread_mem_resp_data_i_I() {
        mem_resp_data_i_I = (sc_uint<64>)mem_resp_data_i.read();
    };
    inline void thread_mem_resp_data_word_bypass_i_I() {
        mem_resp_data_word_bypass_i_I = (sc_uint<64>)mem_resp_data_word_bypass_i.read();
    };
    inline void thread_mem_resp_store_data_i_I() {
        mem_resp_store_data_i_I = (sc_uint<64>)mem_resp_store_data_i.read();
    };


    SC_HAS_PROCESS(vv_add_cycsimV);

public:

    vv_add_cycsimV( sc_module_name in_name=sc_module_name(sc_gen_unique_name(" vv_add") ) )
        : vv_add_cycsim(in_name)
    {
        // instantiate the verilated module
        vv_add_cyc0 = new Vvv_add_rtl( "Vvv_add" );
        // generate port connections
        vv_add_cyc0->clk(clk);
        vv_add_cyc0->rst(rst);
        vv_add_cyc0->cc_busy_o(cc_busy_o);
        vv_add_cyc0->cc_interrupt_o(cc_interrupt_o);
        vv_add_cyc0->cc_status_i(cc_status_i);
        vv_add_cyc0->cc_exception_i(cc_exception_i);
        vv_add_cyc0->cc_host_id_i(cc_host_id_i);
        vv_add_cyc0->core_cmd_ready_o(core_cmd_ready_o);
        vv_add_cyc0->core_cmd_valid_i(core_cmd_valid_i);
        vv_add_cyc0->core_cmd_inst_funct_i(core_cmd_inst_funct_i_I);
        vv_add_cyc0->core_cmd_inst_rs1_i(core_cmd_inst_rs1_i_I);
        vv_add_cyc0->core_cmd_inst_rs2_i(core_cmd_inst_rs2_i_I);
        vv_add_cyc0->core_cmd_inst_xd_i(core_cmd_inst_xd_i);
        vv_add_cyc0->core_cmd_inst_xs1_i(core_cmd_inst_xs1_i);
        vv_add_cyc0->core_cmd_inst_xs2_i(core_cmd_inst_xs2_i);
        vv_add_cyc0->core_cmd_inst_rd_i(core_cmd_inst_rd_i_I);
        vv_add_cyc0->core_cmd_inst_opcode_i(core_cmd_inst_opcode_i_I);
        vv_add_cyc0->core_cmd_rs1_i(core_cmd_rs1_i_I);
        vv_add_cyc0->core_cmd_rs2_i(core_cmd_rs2_i_I);
        vv_add_cyc0->core_resp_ready_i(core_resp_ready_i);
        vv_add_cyc0->core_resp_valid_o(core_resp_valid_o);
        vv_add_cyc0->core_resp_rd_o(core_resp_rd_o_O);
        vv_add_cyc0->core_resp_data_o(core_resp_data_o_O);
        vv_add_cyc0->mem_req_ready_i(mem_req_ready_i);
        vv_add_cyc0->mem_req_valid_o(mem_req_valid_o);
        vv_add_cyc0->mem_req_addr_o(mem_req_addr_o_O);
        vv_add_cyc0->mem_req_tag_o(mem_req_tag_o_O);
        vv_add_cyc0->mem_req_cmd_o(mem_req_cmd_o_O);
        vv_add_cyc0->mem_req_typ_o(mem_req_typ_o_O);
        vv_add_cyc0->mem_req_phys_o(mem_req_phys_o);
        vv_add_cyc0->mem_req_data_o(mem_req_data_o_O);
        vv_add_cyc0->mem_resp_valid_i(mem_resp_valid_i);
        vv_add_cyc0->mem_resp_addr_i(mem_resp_addr_i_I);
        vv_add_cyc0->mem_resp_tag_i(mem_resp_tag_i_I);
        vv_add_cyc0->mem_resp_cmd_i(mem_resp_cmd_i_I);
        vv_add_cyc0->mem_resp_typ_i(mem_resp_typ_i_I);
        vv_add_cyc0->mem_resp_data_i(mem_resp_data_i_I);
        vv_add_cyc0->mem_resp_has_data_i(mem_resp_has_data_i);
        vv_add_cyc0->mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i_I);
        vv_add_cyc0->mem_resp_store_data_i(mem_resp_store_data_i_I);
        vv_add_cyc0->mem_resp_nack_i(mem_resp_nack_i);
        vv_add_cyc0->mem_resp_replay_i(mem_resp_replay_i);


        // setup the type conversion threads
        SC_METHOD( thread_core_cmd_inst_funct_i_I);
            sensitive << core_cmd_inst_funct_i;
        SC_METHOD( thread_core_cmd_inst_rs1_i_I);
            sensitive << core_cmd_inst_rs1_i;
        SC_METHOD( thread_core_cmd_inst_rs2_i_I);
            sensitive << core_cmd_inst_rs2_i;
        SC_METHOD( thread_core_cmd_inst_rd_i_I);
            sensitive << core_cmd_inst_rd_i;
        SC_METHOD( thread_core_cmd_inst_opcode_i_I);
            sensitive << core_cmd_inst_opcode_i;
        SC_METHOD( thread_core_cmd_rs1_i_I);
            sensitive << core_cmd_rs1_i;
        SC_METHOD( thread_core_cmd_rs2_i_I);
            sensitive << core_cmd_rs2_i;
        SC_METHOD( thread_core_resp_rd_o_O);
            sensitive << core_resp_rd_o_O;
        SC_METHOD( thread_core_resp_data_o_O);
            sensitive << core_resp_data_o_O;
        SC_METHOD( thread_mem_req_addr_o_O);
            sensitive << mem_req_addr_o_O;
        SC_METHOD( thread_mem_req_tag_o_O);
            sensitive << mem_req_tag_o_O;
        SC_METHOD( thread_mem_req_cmd_o_O);
            sensitive << mem_req_cmd_o_O;
        SC_METHOD( thread_mem_req_typ_o_O);
            sensitive << mem_req_typ_o_O;
        SC_METHOD( thread_mem_req_data_o_O);
            sensitive << mem_req_data_o_O;
        SC_METHOD( thread_mem_resp_addr_i_I);
            sensitive << mem_resp_addr_i;
        SC_METHOD( thread_mem_resp_tag_i_I);
            sensitive << mem_resp_tag_i;
        SC_METHOD( thread_mem_resp_cmd_i_I);
            sensitive << mem_resp_cmd_i;
        SC_METHOD( thread_mem_resp_typ_i_I);
            sensitive << mem_resp_typ_i;
        SC_METHOD( thread_mem_resp_data_i_I);
            sensitive << mem_resp_data_i;
        SC_METHOD( thread_mem_resp_data_word_bypass_i_I);
            sensitive << mem_resp_data_word_bypass_i;
        SC_METHOD( thread_mem_resp_store_data_i_I);
            sensitive << mem_resp_store_data_i;


        TraceFileType* tfp = esc_get_ca_trace_file();
        if ( tfp )
        {
            vv_add_cyc0->trace(tfp,99);
        }
    };

    ~vv_add_cycsimV()
    {
        delete vv_add_cyc0;
    }

    void end_of_elaboration()
    {
        esc_open_ca_trace_file();
    }

    void end_of_simulation()
    {
        esc_close_ca_trace_file();
    }

protected:
    Vvv_add_rtl* vv_add_cyc0;
};

vv_add_cycsim* vv_add_cycsim_factory()
{
    return new vv_add_cycsimV("vv_add");
}

class vv_add_linkup
{
public:
    vv_add_linkup() {
        extern vv_add_cycsim* (*vv_add_cycsim_factory_p)();
        vv_add_cycsim_factory_p = &vv_add_cycsim_factory;
    }
};

// Create the one instance of the factory for this verilated model.
vv_add_linkup vv_add_cycsimV_link;


