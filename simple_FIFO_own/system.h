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
    //cynw_p2p<sc_uint<32>,ioConfig>::chan din_chan;
    //cynw_p2p<sc_uint<32>,ioConfig >::chan dout_chan;
    sc_signal < sc_uint<32> > din_data;
    sc_signal < bool >din_empty;
    sc_signal < bool > din_read;
    sc_signal < sc_uint<32> > dout_data;
    sc_signal < bool > dout_full;
    sc_signal < bool > dout_write;

    // The testbench and simple_FIFO modules
    simple_FIFO_wrapper *m_simple_FIFO;         // use the generated wrapper for all hls_modules
    tb *m_tb;



    SC_CTOR(System) :
      clk_sig("clk_sig", CLOCK_PERIOD, SC_NS, 0.5, 0, SC_NS, true),
      rst_sig("rst_sig")
      ,din_data("din_data")
      ,din_empty("din_empty")
      ,din_read("din_read")
      ,dout_data("dout_data")
      ,dout_full("dout_full")
      ,dout_write("dout_write")

    {

        // Connect the simple_FIFO module
        m_simple_FIFO = new simple_FIFO_wrapper("simple_FIFO_wrapper");
        // bind the signal channels with the member classes in the simple_FIFO module
        m_simple_FIFO->clk.bind(clk_sig);
        m_simple_FIFO->rst(rst_sig);
        m_simple_FIFO->din_data(din_data);
        m_simple_FIFO->din_empty(din_empty);
        m_simple_FIFO->din_read(din_read);
        m_simple_FIFO->dout_full(dout_full);
        m_simple_FIFO->dout_data(dout_data);
        m_simple_FIFO->dout_write(dout_write);



        // Connect the testbench
        m_tb = new tb("tb");
        // bind the signal channels with the member classes in the tb module
        m_tb->clk.bind(clk_sig);
        m_tb->rst_out.bind(rst_sig);
        //m_tb->din.bind(din_chan);
        m_tb->din_data(din_data);
        m_tb->din_empty(din_empty);
        m_tb->din_read(din_read);
        m_tb->dout_data(dout_data);
        m_tb->dout_full(dout_full);
        m_tb->dout_write(dout_write);


    }

    ~System()
    {
        delete m_tb;
        delete m_simple_FIFO;
    }
};

#endif // _SYSTEM_H_
