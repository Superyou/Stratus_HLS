//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#ifndef _SYSTEM_H_
#define _SYSTEM_H_

#include <systemc.h>
#include <cynw_p2p.h>
#include "defines.h"
#include "tb.h"

#include "digitrec_wrap.h"           // use the generated wrapper for all hls_modules

SC_MODULE(System)
{
public:
    // clock and reset signal <bool>s
    sc_clock clk_sig;
    sc_signal <bool>  rst_sig;

    //modified for ROCC interface

    //control mode
    sc_signal <bool> cc_busy_chan;             //
    sc_signal <bool>  cc_interrupt_chan;

    sc_signal <bool> cc_status_chan;
    sc_signal <bool> cc_exception_chan;
    sc_signal <bool> cc_host_id_chan;

    //Register mode
    sc_signal <bool> core_cmd_ready_chan;
    sc_signal <bool> core_cmd_valid_chan;
    sc_signal <sc_uint<7> > core_cmd_inst_funct_chan;
    sc_signal <sc_uint<5> > core_cmd_inst_rs1_chan;
    sc_signal <sc_uint<5> > core_cmd_inst_rs2_chan;

    sc_signal <bool> core_cmd_inst_xd_chan;     //set if destination reg exist
    sc_signal <bool> core_cmd_inst_xs1_chan;    //set if resource rs1 reg exist
    sc_signal <bool> core_cmd_inst_xs2_chan;    //set if resource rs2 reg exist
    sc_signal <sc_uint<5> >   core_cmd_inst_rd_chan;
    sc_signal <sc_uint<7> >  core_cmd_inst_opcode_chan;     //custom instruction opcode may be used for several accerlerations
    sc_signal <sc_uint<64> >  core_cmd_rs1_chan;
    sc_signal <sc_uint<64> >  core_cmd_rs2_chan;

    sc_signal <bool> core_resp_ready_chan;
    sc_signal <bool> core_resp_valid_chan;
    sc_signal <sc_uint<5> >   core_resp_rd_chan;
    sc_signal <sc_uint<64> >  core_resp_data_chan;
    sc_signal <bool> io_autl_acquire_valid_chan;
    sc_signal <bool> io_in_1_acquire_ready_chan;

    //memory mode
    //for reqest
    sc_signal <bool> mem_req_ready_chan;
    sc_signal <bool> mem_req_valid_chan;
    sc_signal <sc_uint<40> > mem_req_addr_chan;
    sc_signal <sc_uint<10> >  mem_req_tag_chan;
    sc_signal <sc_uint<5> >   mem_req_cmd_chan; //0x000 store 0x001 load
    sc_signal <sc_uint<3> >   mem_req_typ_chan; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
    sc_signal <bool> mem_req_phys_chan;
    sc_signal <sc_uint<64> >  mem_req_data_chan; //store data

    //for response  can be read from the memory at any time

    sc_signal <bool> mem_resp_valid_chan;
    sc_signal <sc_uint<40> >  mem_resp_addr_chan;
    sc_signal <sc_uint<10> >   mem_resp_tag_chan;
    sc_signal <sc_uint<5> >  mem_resp_cmd_chan; //0x000 store 0x001 load
    sc_signal <sc_uint<3> >   mem_resp_typ_chan; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
    sc_signal <sc_uint<64> >  mem_resp_data_chan; //the data loaded from the em
    sc_signal <bool> mem_resp_has_data_chan;        //Set if the data field is valid in response
    sc_signal <sc_uint<64> >  mem_resp_data_word_bypass_chan;   //bypassed to a read???
    sc_signal <sc_uint<64> > mem_resp_store_data_chan;         //return the data stored

    sc_signal <bool> mem_resp_nack_chan;  //unknow
    sc_signal <bool> mem_resp_replay_chan; //unknow


    // cynw_p2p channels
    //cynw_p2p < input_t, ioConfig >::chan chan1;
    //cynw_p2p < output_t, ioConfig >::chan chan2;

    // The stable coefficients
    //sc_signal <bool> < CoeffTable > coeffs_sig;

    // The testbench and fir modules
    digitrec_wrapper *m_digitrec;         // use the generated wrapper for all hls_modules
    tb *m_tb;

  SC_CTOR(System):
        clk_sig("clk_sig", CLOCK_PERIOD, SC_NS, 0.5, 0, SC_NS, true),
        rst_sig("rst_sig")

        ,cc_exception_chan("cc_exception_chan")
        ,cc_busy_chan("cc_busy_chan")
        ,cc_interrupt_chan("cc_interrupt_chan")
, cc_status_chan("cc_status_chan")
, cc_host_id_chan("cc_host_id_chan")

, core_cmd_ready_chan("core_cmd_ready_chan")
, core_cmd_valid_chan("core_cmd_valid_chan")
, core_cmd_inst_funct_chan("core_cmd_inst_funct_chan")
, core_cmd_inst_rs1_chan("core_cmd_inst_rs1_chan")
, core_cmd_inst_rs2_chan("core_cmd_inst_rs2_chan")

, core_cmd_inst_xd_chan("core_cmd_inst_xd_chan")
, core_cmd_inst_xs1_chan("core_cmd_inst_xs1_chan")
, core_cmd_inst_xs2_chan("core_cmd_inst_xs2_chan")
, core_cmd_inst_rd_chan("core_cmd_inst_rd_chan")
, core_cmd_inst_opcode_chan("core_cmd_inst_opcode_chan")
, core_cmd_rs1_chan("core_cmd_rs1_chan")
, core_cmd_rs2_chan("core_cmd_rs2_chan")

, core_resp_ready_chan("core_resp_ready_chan")
, core_resp_valid_chan("core_resp_valid_chan")
, core_resp_rd_chan("core_resp_rd_chan")
, core_resp_data_chan("core_resp_data_chan")

, mem_req_ready_chan("mem_req_ready_chan")
, mem_req_valid_chan("mem_req_valid_chan")
, mem_req_addr_chan("mem_req_addr_chan")
, mem_req_tag_chan("mem_req_tag_chan")
, mem_req_cmd_chan("mem_req_cmd_chan") //0x000 store 0x001 load
, mem_req_typ_chan("mem_req_typ_chan") //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
, mem_req_phys_chan("mem_req_phys_chan")
, mem_req_data_chan("mem_req_data_chan") //store data

//for response  can be read from the memory at any time
, mem_resp_valid_chan("mem_resp_valid_chan")
, mem_resp_addr_chan("mem_resp_addr_chan")
, mem_resp_tag_chan("mem_resp_tag_chan")
, mem_resp_cmd_chan("mem_resp_cmd_chan") //0x000 store 0x001 load
, mem_resp_typ_chan("mem_resp_typ_chan") //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits

, mem_resp_data_chan("mem_resp_data_chan") //the data loaded from the em
, mem_resp_has_data_chan("mem_resp_has_data_chan")       //Set if the data field is valid in response
, mem_resp_data_word_bypass_chan("mem_resp_data_word_bypass_chan")   //bypassed to a read???
, mem_resp_store_data_chan("mem_resp_store_data_chan")        //return the data stored

, mem_resp_nack_chan("mem_resp_nack_chan")  //unknow
, mem_resp_replay_chan("mem_resp_replay_chan") //unknow
      , io_autl_acquire_valid_chan("io_autl_acquire_valid_chan")
      ,io_in_1_acquire_ready_chan("io_in_1_acquire_ready_chan")

    {
        m_digitrec = new digitrec_wrapper("digitrec_wrapper");

        // Connect the design module
        m_digitrec->clk.bind(clk_sig);
        m_digitrec->rst.bind(rst_sig);

        m_digitrec->cc_exception_i(cc_exception_chan);
        m_digitrec->cc_busy_o(cc_busy_chan);
        m_digitrec->cc_interrupt_o(cc_interrupt_chan);
m_digitrec-> cc_status_i(cc_status_chan);
m_digitrec-> cc_host_id_i(cc_host_id_chan);

m_digitrec-> core_cmd_ready_o(core_cmd_ready_chan);
m_digitrec-> core_cmd_valid_i(core_cmd_valid_chan);
m_digitrec-> core_cmd_inst_funct_i(core_cmd_inst_funct_chan);
m_digitrec-> core_cmd_inst_rs1_i(core_cmd_inst_rs1_chan);
m_digitrec-> core_cmd_inst_rs2_i(core_cmd_inst_rs2_chan);

m_digitrec-> core_cmd_inst_xd_i(core_cmd_inst_xd_chan);
m_digitrec-> core_cmd_inst_xs1_i(core_cmd_inst_xs1_chan);
m_digitrec-> core_cmd_inst_xs2_i(core_cmd_inst_xs2_chan);
m_digitrec-> core_cmd_inst_rd_i(core_cmd_inst_rd_chan);
m_digitrec-> core_cmd_inst_opcode_i(core_cmd_inst_opcode_chan);
m_digitrec-> core_cmd_rs1_i(core_cmd_rs1_chan);
m_digitrec-> core_cmd_rs2_i(core_cmd_rs2_chan);

m_digitrec-> core_resp_ready_i(core_resp_ready_chan);
m_digitrec-> core_resp_valid_o(core_resp_valid_chan);
m_digitrec-> core_resp_rd_o(core_resp_rd_chan);
m_digitrec-> core_resp_data_o(core_resp_data_chan);

m_digitrec-> mem_req_ready_i(mem_req_ready_chan);
m_digitrec-> mem_req_valid_o(mem_req_valid_chan);
m_digitrec-> mem_req_addr_o(mem_req_addr_chan);
m_digitrec-> mem_req_tag_o(mem_req_tag_chan);
m_digitrec-> mem_req_cmd_o(mem_req_cmd_chan); //0x000 store 0x001 load
m_digitrec-> mem_req_typ_o(mem_req_typ_chan); //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
m_digitrec-> mem_req_phys_o(mem_req_phys_chan);
m_digitrec-> mem_req_data_o(mem_req_data_chan); //store data

//for response  can be read from the memory at any time
m_digitrec-> mem_resp_valid_i(mem_resp_valid_chan);
m_digitrec-> mem_resp_addr_i(mem_resp_addr_chan);
m_digitrec-> mem_resp_tag_i(mem_resp_tag_chan);
m_digitrec-> mem_resp_cmd_i(mem_resp_cmd_chan); //0x000 store 0x001 load
m_digitrec-> mem_resp_typ_i(mem_resp_typ_chan); //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits

m_digitrec-> mem_resp_data_i(mem_resp_data_chan); //the data loaded from the em
m_digitrec-> mem_resp_has_data_i(mem_resp_has_data_chan);       //Set if the data field is valid in response
m_digitrec-> mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_chan);   //bypassed to a read???
m_digitrec-> mem_resp_store_data_i(mem_resp_store_data_chan);        //return the data stored

m_digitrec-> mem_resp_nack_i(mem_resp_nack_chan);  //unknow
m_digitrec-> mem_resp_replay_i(mem_resp_replay_chan); //unknow

m_digitrec->io_autl_acquire_valid_o(io_autl_acquire_valid_chan);
m_digitrec->io_in_1_acquire_ready_o(io_in_1_acquire_ready_chan);


        // Connect the testbench
        m_tb = new tb("tb");
        m_tb->clk.bind(clk_sig);
        m_tb->rst_out.bind(rst_sig);
        //m_tb->coeffs.bind(coeffs_sig);


        m_tb->cc_exception_i(cc_exception_chan);
        m_tb->cc_busy_o(cc_busy_chan);
        m_tb->cc_interrupt_o(cc_interrupt_chan);
        m_tb-> cc_status_i(cc_status_chan);
        m_tb-> cc_host_id_i(cc_host_id_chan);

        m_tb-> core_cmd_ready_o(core_cmd_ready_chan);
        m_tb-> core_cmd_valid_i(core_cmd_valid_chan);
        m_tb-> core_cmd_inst_funct_i(core_cmd_inst_funct_chan);
        m_tb-> core_cmd_inst_rs1_i(core_cmd_inst_rs1_chan);
        m_tb-> core_cmd_inst_rs2_i(core_cmd_inst_rs2_chan);

        m_tb-> core_cmd_inst_xd_i(core_cmd_inst_xd_chan);
        m_tb-> core_cmd_inst_xs1_i(core_cmd_inst_xs1_chan);
        m_tb-> core_cmd_inst_xs2_i(core_cmd_inst_xs2_chan);
        m_tb-> core_cmd_inst_rd_i(core_cmd_inst_rd_chan);
        m_tb-> core_cmd_inst_opcode_i(core_cmd_inst_opcode_chan);
        m_tb-> core_cmd_rs1_i(core_cmd_rs1_chan);
        m_tb-> core_cmd_rs2_i(core_cmd_rs2_chan);

        m_tb-> core_resp_ready_i(core_resp_ready_chan);
        m_tb-> core_resp_valid_o(core_resp_valid_chan);
        m_tb-> core_resp_rd_o(core_resp_rd_chan);
        m_tb-> core_resp_data_o(core_resp_data_chan);

        m_tb-> mem_req_ready_i(mem_req_ready_chan);
        m_tb-> mem_req_valid_o(mem_req_valid_chan);
        m_tb-> mem_req_addr_o(mem_req_addr_chan);
        m_tb-> mem_req_tag_o(mem_req_tag_chan);
        m_tb-> mem_req_cmd_o(mem_req_cmd_chan); //0x000 store 0x001 load
        m_tb-> mem_req_typ_o(mem_req_typ_chan); //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
        m_tb-> mem_req_phys_o(mem_req_phys_chan);
        m_tb-> mem_req_data_o(mem_req_data_chan); //store data

        //for response  can be read from the memory at any time
        m_tb-> mem_resp_valid_i(mem_resp_valid_chan);
        m_tb-> mem_resp_addr_i(mem_resp_addr_chan);
        m_tb-> mem_resp_tag_i(mem_resp_tag_chan);
        m_tb-> mem_resp_cmd_i(mem_resp_cmd_chan); //0x000 store 0x001 load
        m_tb-> mem_resp_typ_i(mem_resp_typ_chan); //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits

        m_tb-> mem_resp_data_i(mem_resp_data_chan); //the data loaded from the em
        m_tb-> mem_resp_has_data_i(mem_resp_has_data_chan);       //Set if the data field is valid in response
        m_tb-> mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_chan);   //bypassed to a read???
        m_tb-> mem_resp_store_data_i(mem_resp_store_data_chan);        //return the data stored

        m_tb-> mem_resp_nack_i(mem_resp_nack_chan);  //unknow
        m_tb-> mem_resp_replay_i(mem_resp_replay_chan); //unknow
        m_tb->io_autl_acquire_valid_o(io_autl_acquire_valid_chan);
        m_tb->io_in_1_acquire_ready_o(io_in_1_acquire_ready_chan);
    }

    ~System()
    {
        delete m_tb;
        delete m_digitrec;
    }
};

#endif // _SYSTEM_H_
