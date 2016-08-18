//===========================================================================
// vv_add.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef vv_add_H
#define vv_add_H
#include <cynw_p2p.h>
#include "defines.h"

SC_MODULE (vv_add)
{
public:
    //rocc_in vv_add_rocc;

    // Declare the clock and reset ports
    sc_in_clk clk;
    sc_in < bool > rst;
    sc_in <SOURCE_TO_ACCEL> rocc_in;
    sc_in <SINK_TO_ACCEL> sink_in;
    sc_out <ACCEL_TO_ROCC> rocc_out;
    sc_in <MEM_TO_ACCEL> mem_resp;
    sc_out <ACCEL_TO_MEM> mem_req;

    SC_CTOR(vv_add): clk("clk"), rst("rst")
    ,rocc_in("rocc_in")
      ,sink_in("sink_in")
      ,rocc_out("rocc_out")
      ,mem_req("mem_req")
      ,mem_resp("mem_resp")
  {

      SC_CTHREAD(vv_addThread, clk.pos());
      reset_signal_is(rst, 1);

      // Connect the clk and rst signals to the modular interface ports
  }

protected:
  void vv_addThread();           // the thread function

  // Write Helper : the temporary instance of the rocc class for the write operation
  ACCEL_TO_ROCC tmp_write;
  ACCEL_TO_MEM mem_write;
};


#endif
