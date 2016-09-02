//===========================================================================
// simple_FIFO.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef simple_FIFO_H
#define simple_FIFO_H
#include <cynw_p2p.h>


SC_MODULE (simple_FIFO)
{
public:
    //rocc_in simple_FIFO_rocc;

    // Declare the clock and reset ports
    sc_in_clk clk;
    sc_in < bool > rst;
    //cynw_p2p<sc_uint<32>,ioConfig>::in din;
    //cynw_p2p<sc_uint<32>,ioConfig >::out dout;
    sc_in< sc_uint<32> > din_data;
    sc_in < bool >din_empty;
    sc_out< bool > din_read;
    sc_out< sc_uint<32> > dout_data;
    sc_in< bool > dout_full;
    sc_out< bool > dout_write;

    SC_CTOR(simple_FIFO): clk("clk"), rst("rst")
      ,din_data("din_data")
      ,din_empty("din_empty")
      ,din_read("din_read")
      ,dout_data("dout_data")
      ,dout_full("dout_full")
      ,dout_write("dout_write")
  {

      SC_CTHREAD(simple_FIFOThread, clk.pos());
      reset_signal_is(rst, 1);

      // Connect the clk and rst signals to the modular interface ports

  }

protected:
  void simple_FIFOThread();           // the thread function

  // Write Helper : the temporary instance of the rocc class for the write operation

};


#endif
