//==========================================================================
//simple_FIFO.cpp
//==========================================================================
// @brief: A simple vector-vector-add design

#include "simple_FIFO.h"

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// In this design, the simple_FIFO module has 3 functions: Add, Store and Load.
// Add Operation : Read input from both the core_cmd_rs1_i and core_cmd_rs2_i.
//              Add them and send the result back to the response.
// Store Operation : Read the core_cmd_rs1_i as the data to be stored and
//              read the core_cmd_rs2_i as the memory address. The accelerator will
//              send mem_req to the rocketchip and store the data in the specific
//              address through a cache. The storage message will send back to the
//              accelerator through the mem_resp signals. Finally send the storage data to the core_response.
// Load Operation : Only read the core_cmd_rs2_i as the load address and load data through sending the mem_req.
//              The data loading from the cache will be sent through the mem_resp. At last,
//              the response sent to the rocket core will be the loading result.

void simple_FIFO::simple_FIFOThread(){




  // reset logic
  { HLS_DEFINE_PROTOCOL("Reset");
    // single-cycle reset behavior
        din.reset();
        dout.reset();
    wait();
  }

  // multi-cycle initialization behavior here
  
  // main loop
  while(1){

      sc_uint<32> tmp = din.get();
      dout.put(tmp);


  }
}
