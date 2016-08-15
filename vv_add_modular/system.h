//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#ifndef _SYSTEM_H_
#define _SYSTEM_H_

#include <systemc.h>
#include "tb.h"

#include "vv_add_wrap.h"           // use the generated wrapper for all hls_modules
#include "defines.h"               // The definitions for the ROCC interface classes

SC_MODULE(System)
{
public:

    // clock and reset signal <bool>s
    sc_clock clk_sig;
    sc_signal <bool>  rst_sig;

    // Declear the rocc interface classes as sc_signals
    sc_signal <SOURCE_TO_ACCEL> source_in_sig;
    sc_signal <SINK_TO_ACCEL> sink_in_sig;
    sc_signal <ACCEL_TO_ROCC> rocc_out_sig;
    sc_signal <MEM_TO_ACCEL> mem_resp_sig;
    sc_signal <ACCEL_TO_MEM> mem_req_sig;

    // The testbench and vv_add modules
    vv_add_wrapper *m_vv_add;         // use the generated wrapper for all hls_modules
    tb *m_tb;



    SC_CTOR(System) :
      clk_sig("clk_sig", CLOCK_PERIOD, SC_NS, 0.5, 0, SC_NS, true),
      rst_sig("rst_sig"),
      source_in_sig("rocc_in_sig"),
      sink_in_sig("sink_out_sig"),
      rocc_out_sig("rocc_out_sig"),
      mem_resp_sig("mem_resp_sig"),
      mem_req_sig("mem_req_sig")

    {

        // Connect the vv_add module
        m_vv_add = new vv_add_wrapper("vv_add_wrapper");
        // bind the signal channels with the member classes in the vv_add module
        m_vv_add->clk.bind(clk_sig);
        m_vv_add->rst(rst_sig);
        m_vv_add->rocc_in(source_in_sig);
        m_vv_add->sink_in(sink_in_sig);
        m_vv_add->rocc_out(rocc_out_sig);
        m_vv_add->mem_req(mem_req_sig);
        m_vv_add->mem_resp(mem_resp_sig);

        // Connect the testbench
        m_tb = new tb("tb");
        // bind the signal channels with the member classes in the tb module
        m_tb->clk.bind(clk_sig);
        m_tb->rst_out.bind(rst_sig);
        m_tb->rocc_in.bind(source_in_sig);
        m_tb->sink_in.bind(sink_in_sig);
        m_tb->rocc_out.bind(rocc_out_sig);
        m_tb->mem_req.bind(mem_req_sig);
        m_tb->mem_resp.bind(mem_resp_sig);

    }

    ~System()
    {
        delete m_tb;
        delete m_vv_add;
    }
};

#endif // _SYSTEM_H_
