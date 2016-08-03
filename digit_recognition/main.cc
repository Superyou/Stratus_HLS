//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#include <systemc.h>            // SystemC definitions. */

#include "system.h"             // System module definition. */
// The pointer that holds the top-level System module instance.
static System *m_system = NULL;

// This function is required by Stratus HLS to support
// SystemC-Verilog co-simulation. This is where an instance of the
// top-level module should be created.
void esc_elaborate()
{
    m_system = new System("System");
}

// This function is called at the end of simulation by the
// Stratus HLS co-simulation hub. It should delete the top-level
// module instance.
void esc_cleanup()
{
    delete m_system;
}

// This function is called by the SystemC kernel for pure SystemC
// simulations.
int sc_main(int argc, char **argv)
{
    // First, we call the esc_initialize function, passing in
    // the simulation command-line arguments. This function initializes
    // the Stratus HLS simulation environment (such as opening report
    // files for later logging and analysis).
    esc_initialize(argc, argv);

    // Next, we call the esc_elaborate function (defined above)
    // which creates the top-level module instance. In a SystemC-Verilog
    // co-simulation, the esc_elaborate function is called by the
    // simulator during initialization of the co_simulation rather
    // than from sc_main.
    esc_elaborate();

    // Start the simulation. When this function returns, the simulation
    // is finished. A simulation is finished when some module (e.g. the
    // testbench) calls the esc_stop() function.
    sc_start();

    // The esc_cleanup function defined above will be automatically
    // called before sc_start returns. It should delete the top-level
    // module and perform any other cleanup as needed.

    return 0;                   // return status of the simulation.
}
