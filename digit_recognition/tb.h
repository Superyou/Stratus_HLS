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
#include "defines.h"            // The type definitions for the input and output

SC_MODULE(tb)
{
public:
  // Declare clock and reset ports
  sc_in_clk clk;
  sc_out < bool > rst_out;    // The source thread drives rst_out.
  sc_in < bool > rst_in;      // For sink thread. Connected to rst_out.



  //control mode
  sc_in < bool > cc_busy_o;             //
  sc_in< bool > cc_interrupt_o;

  sc_out< bool > cc_status_i;
  sc_out< bool > cc_exception_i;
  sc_out< bool > cc_host_id_i;

  //Register mode
  sc_in< bool > core_cmd_ready_o;
  sc_out< bool > core_cmd_valid_i;
  sc_out < sc_uint<7> > core_cmd_inst_funct_i;
  sc_out < sc_uint<5> > core_cmd_inst_rs1_i;
  sc_out < sc_uint<5> > core_cmd_inst_rs2_i;

  sc_out<bool> core_cmd_inst_xd_i;     //set if destination reg exist
  sc_out<bool> core_cmd_inst_xs1_i;    //set if resource rs1 reg exist
  sc_out<bool> core_cmd_inst_xs2_i;    //set if resource rs2 reg exist
  sc_out <sc_uint<5> >  core_cmd_inst_rd_i;
  sc_out <sc_uint<7> > core_cmd_inst_opcode_i;     //custom instruction opcode may be used for several accerlerations
  sc_out <sc_uint<64> > core_cmd_rs1_i;
  sc_out <sc_uint<64> > core_cmd_rs2_i;

  sc_out<bool> core_resp_ready_i;
  sc_in <bool> core_resp_valid_o;
  sc_in  <sc_uint<5> >  core_resp_rd_o;
  sc_in  <sc_uint<64> > core_resp_data_o;

  //memory mode
  //for reqest
  sc_out<bool> mem_req_ready_i;
  sc_in <bool> mem_req_valid_o;
  sc_in  <sc_uint<40> > mem_req_addr_o;
  sc_in  <sc_uint<10> > mem_req_tag_o;
  sc_in  <sc_uint<5> >  mem_req_cmd_o; //0x000 store 0x001 load
  sc_in  <sc_uint<3> >  mem_req_typ_o; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
  sc_in <bool> mem_req_phys_o;
  sc_in  <sc_uint<64> > mem_req_data_o; //store data

  //for response  can be read from the memory at any time

  sc_out <bool> mem_resp_valid_i;
  sc_out <sc_uint<40> >  mem_resp_addr_i;
  sc_out <sc_uint<10> >  mem_resp_tag_i;
  sc_out <sc_uint<5> >  mem_resp_cmd_i; //0x000 store 0x001 load
  sc_out <sc_uint<3> >  mem_resp_typ_i; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits

  sc_out <sc_uint<64> > mem_resp_data_i; //the data loaded from the em
  sc_out <bool> mem_resp_has_data_i;        //Set if the data field is valid in response
  sc_out <sc_uint<64> > mem_resp_data_word_bypass_i;   //bypassed to a read???
  sc_out <sc_uint<64> > mem_resp_store_data_i;         //return the data stored

  sc_out <bool> mem_resp_nack_i;  //unknow
  sc_out <bool> mem_resp_replay_i; //unknow

  sc_in <bool> io_autl_acquire_valid_o;
  sc_in <bool> io_in_1_acquire_ready_o;





  // Declare modular interface ports
  // The cynw_p2p ::base_in and ::base_out port classess are used in
  // the testbench. These are simpler versions of the ::in and ::out
  // classes used in the DUT.
  //cynw_p2p < input_t >::base_out dout;    // data going in to the design
  //cynw_p2p < output_t >::base_in din; // data going out of the design

  SC_CTOR(tb):clk("clk"), rst_out("rst_out"), rst_in("rst_in")
      ,cc_exception_i("cc_exception_i")
      ,cc_busy_o("cc_busy_o")
      ,cc_interrupt_o("cc_interrupt_o")
, cc_status_i("cc_status_i")
, cc_host_id_i("cc_host_id_i")

, core_cmd_ready_o("core_cmd_ready_o")
, core_cmd_valid_i("core_cmd_valid_i")
, core_cmd_inst_funct_i("core_cmd_inst_funct_i")
, core_cmd_inst_rs1_i("core_cmd_inst_rs1_i")
, core_cmd_inst_rs2_i("core_cmd_inst_rs2_i")

, core_cmd_inst_xd_i("core_cmd_inst_xd_i")
, core_cmd_inst_xs1_i("core_cmd_inst_xs1_i")
, core_cmd_inst_xs2_i("core_cmd_inst_xs2_i")
, core_cmd_inst_rd_i("core_cmd_inst_rd_i")
, core_cmd_inst_opcode_i("core_cmd_inst_opcode_i")
, core_cmd_rs1_i("core_cmd_rs1_i")
, core_cmd_rs2_i("core_cmd_rs2_i")

, core_resp_ready_i("core_resp_ready_i")
, core_resp_valid_o("core_resp_valid_o")
, core_resp_rd_o("core_resp_rd_o")
, core_resp_data_o("core_resp_data_o")

, mem_req_ready_i("mem_req_ready_i")
, mem_req_valid_o("mem_req_valid_o")
, mem_req_addr_o("mem_req_addr_o")
, mem_req_tag_o("mem_req_tag_o")
, mem_req_cmd_o("mem_req_cmd_o") //0x000 store 0x001 load
, mem_req_typ_o("mem_req_typ_o") //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
, mem_req_phys_o("mem_req_phys_o")
, mem_req_data_o("mem_req_data_o") //store data

//for response  can be read from the memory at any time
, mem_resp_valid_i("mem_resp_valid_i")
, mem_resp_addr_i("mem_resp_addr_i")
, mem_resp_tag_i("mem_resp_tag_i")
, mem_resp_cmd_i("mem_resp_cmd_i") //0x000 store 0x001 load
, mem_resp_typ_i("mem_resp_typ_i") //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
, mem_resp_data_i("mem_resp_data_i") //the data loaded from the em
, mem_resp_has_data_i("mem_resp_has_data_i")       //Set if the data field is valid in response
, mem_resp_data_word_bypass_i("mem_resp_data_word_bypass_i")   //bypassed to a read???
, mem_resp_store_data_i("mem_resp_store_data_i")        //return the data stored

, mem_resp_nack_i("mem_resp_nack_i")  //unknow
, mem_resp_replay_i("mem_resp_replay_i") //unknow
    , io_autl_acquire_valid_o("io_autl_acquire_valid_o")
    ,io_in_1_acquire_ready_o("io_in_1_acquire_ready_o")
  {
    // Declare the source thread. Since it drives the reset signal,
    // no reset_signal_is() is needed for the source thread
    SC_CTHREAD(source, clk.pos());
    SC_CTHREAD(mem, clk.pos());
    // Declare the sink thread
    SC_CTHREAD(sink, clk.pos());
    reset_signal_is(rst_in, 1); // active low

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

  ifstream stim_file;         // File stream for reading the stimulus
  ofstream resp_file;         // File stream for writing the responses

  // Utility functions for managing the stimulus file
  void open_stimulus_file(const char *_name = NULL);
  sc_uint<64> read_stimulus_value(bool & eof);
  void close_stimulus_file();

  // Utility functions for managing the response file
  void open_response_file(const char *_name = NULL);
  void write_response_value(sc_uint<64>);
  void close_response_file();

  // Utility function for managing the golden file
  int count_golden_file(const char *_name = NULL);

  // Utility to convert a time in simulation time units to clock cycles
  //int clock_cycle(sc_time time);
  double clock_cycle(sc_time time);
};

#endif // _TB_H_
