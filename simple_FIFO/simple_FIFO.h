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
    cynw_p2p<sc_uint<32>,ioConfig>::in din;
    cynw_p2p<sc_uint<32>,ioConfig >::out dout;

    SC_CTOR(simple_FIFO): clk("clk"), rst("rst")
      ,din("din") ,dout("dout")
  {

      SC_CTHREAD(simple_FIFOThread, clk.pos());
      reset_signal_is(rst, 1);

      // Connect the clk and rst signals to the modular interface ports

      din.clk_rst(clk, rst);
      dout.clk_rst(clk, rst);
  }

protected:
  void simple_FIFOThread();           // the thread function

  // Write Helper : the temporary instance of the rocc class for the write operation

};


#endif
