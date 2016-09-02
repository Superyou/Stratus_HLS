//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************
//
// This file defines the module "tb", which is a testbench used to
// exercise the DUT. The same testbench module is used with both
// behavioral (user-defined) and RTL (Stratus HLS-generated) versions
// of the DUT. It is instantiated in the top-level module System (see
// system.h).
//
//******************************************************************************

#ifndef _TB_H_
#define _TB_H_

#include <cynw_p2p.h>           // This also includes systemc.h etc
            // The definitions for the ROCC interface classes

#include "defines.h"
SC_MODULE(tb)
{
public:
  // Declare clock and reset ports

    sc_in_clk clk;
    sc_out < bool > rst_out;
    sc_in <bool> rst_in;
  // Declare the sc_in and sc_out for each rocc class
  // Note that these declearations are opposite to the declearations in the vv_add module

    //cynw_p2p <sc_uint<32> >::base_out din;
    //cynw_p2p <sc_uint<32> >::base_in dout;
    sc_out< sc_uint<32> > din_data;
    sc_out < bool >din_empty;
    sc_in< bool > din_read;
    sc_in< sc_uint<32> > dout_data;
    sc_out< bool > dout_full;
    sc_in< bool > dout_write;

    SC_CTOR(tb) :
      clk("clk"), rst_out("rst_out"), rst_in("rst_in")
    ,din_data("din_data")
    ,din_empty("din_empty")
    ,din_read("din_read")
    ,dout_data("dout_data")
    ,dout_full("dout_full")
    ,dout_write("dout_write")

  {
    // Declare the source thread. Since it drives the reset signal,
    // no reset_signal_is() is needed for the source thread
    SC_CTHREAD(source, clk.pos());
    // Declare the sink thread
    SC_CTHREAD(sink, clk.pos());
    reset_signal_is(rst_in, 1); // active high

    // Connect the rst_in port to the rst_out port
    rst_in(rst_out);
  }
private:
  // Class data member of type sc_time, used to keep track of
  // simulation timings (e.g. latency of the DUT).
  sc_time sample_sent_time;

  void source();
  void sink();

  ifstream stim_file;         // File stream for reading the stimulus
  ofstream resp_file;         // File stream for writing the responses

  // Utility functions for managing the stimulus file
  void open_stimulus_file(const char *_name = NULL);
  input_t read_stimulus_value(bool & eof);
  void close_stimulus_file();

  // Utility functions for managing the response file
  void open_response_file(const char *_name = NULL);
  void write_response_value(output_t);
  void close_response_file();

  // Utility function for managing the golden file
  int count_golden_file(const char *_name = NULL);

  // Utility to convert a time in simulation time units to clock cycles
  //int clock_cycle(sc_time time);
  double clock_cycle(sc_time time);
};

#endif // _TB_H_
