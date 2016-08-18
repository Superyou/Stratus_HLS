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
#include "defines.h"            // The definitions for the ROCC interface classes


SC_MODULE(tb)
{
public:
  // Declare clock and reset ports

    sc_in_clk clk;
    sc_out < bool > rst_out;
    sc_in <bool> rst_in;
  // Declare the sc_in and sc_out for each rocc class
  // Note that these declearations are opposite to the declearations in the vv_add module
    sc_out <SOURCE_TO_ACCEL> rocc_in;
    sc_out <SINK_TO_ACCEL>   sink_in;
    sc_in  <ACCEL_TO_ROCC>   rocc_out;
    sc_in  <ACCEL_TO_MEM>    mem_req;
    sc_out <MEM_TO_ACCEL>    mem_resp;

    SC_CTOR(tb) :
      clk("clk"), rst_out("rst_out"), rst_in("rst_in")
    ,rocc_in("rocc_in")
    ,rocc_out("rocc_out")
    ,sink_in("sink_in")
    ,mem_req("mem_req")
    ,mem_resp("mem_resp")

  {
    // Declare the source thread. Since it drives the reset signal,
    // no reset_signal_is() is needed for the source thread
    SC_CTHREAD(source, clk.pos());
    // Declare the mem thread
    SC_CTHREAD(mem, clk.pos());
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
  void mem();

  SOURCE_TO_ACCEL tmp_write;
  SINK_TO_ACCEL sink_write;
  MEM_TO_ACCEL mem_write;

  sc_uint<64> memory[5000];

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
