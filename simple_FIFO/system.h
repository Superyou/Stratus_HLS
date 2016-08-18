//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#ifndef _SYSTEM_H_
#define _SYSTEM_H_

#include <cynw_p2p.h>
#include "tb.h"

#include "simple_FIFO_wrap.h"           // use the generated wrapper for all hls_modules
             // The definitions for the ROCC interface classes

#include "defines.h"
SC_MODULE(System)
{
public:

    // clock and reset signal <bool>s
    sc_clock clk_sig;
    sc_signal <bool>  rst_sig;

    // Declear the rocc interface classes as sc_signals
    cynw_p2p<sc_uint<32>,ioConfig>::chan din_chan;
    cynw_p2p<sc_uint<32>,ioConfig >::chan dout_chan;


    // The testbench and simple_FIFO modules
    simple_FIFO_wrapper *m_simple_FIFO;         // use the generated wrapper for all hls_modules
    tb *m_tb;



    SC_CTOR(System) :
      clk_sig("clk_sig", CLOCK_PERIOD, SC_NS, 0.5, 0, SC_NS, true),
      rst_sig("rst_sig"),
      din_chan("din_chan"),
      dout_chan("dout_chan")

    {

        // Connect the simple_FIFO module
        m_simple_FIFO = new simple_FIFO_wrapper("simple_FIFO_wrapper");
        // bind the signal channels with the member classes in the simple_FIFO module
        m_simple_FIFO->clk.bind(clk_sig);
        m_simple_FIFO->rst(rst_sig);
        m_simple_FIFO->din(din_chan);
        m_simple_FIFO->dout(dout_chan);



        // Connect the testbench
        m_tb = new tb("tb");
        // bind the signal channels with the member classes in the tb module
        m_tb->clk.bind(clk_sig);
        m_tb->rst_out.bind(rst_sig);
        m_tb->din.bind(din_chan);
        m_tb->dout.bind(dout_chan);

    }

    ~System()
    {
        delete m_tb;
        delete m_simple_FIFO;
    }
};

#endif // _SYSTEM_H_
