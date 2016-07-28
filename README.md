## Implement Digitrec in SystemC using the ROCC interface

This directory is a derivative of the Digit Recongnition Project imlemented in stratus `<WORKING_DIR>/craft-xcel/digit_recognition/stratus`. This project is written in SystemC, and using Stratus HLS as the HLS tool to synthesizes SystemC into C++-style RTL and then converts the C++ RTL into Verilog RTL. Different with the former one, this project is based on te ROCC interface in order to connect the digitrec module with the rocket chip. In this project we designed the interface such as control, register and memory mode signals in the digitrec module in order to pass the 'custom' cmd from the rochet chip to the digitrec module.

To see the basic introduction of the Stratus HLS and the digit recognition project,please go through the README.md file in the repository `<WORKING_DIR>/craft-xcel/digit_recognition/stratus` . It clearly shows the overview of the Stratus HLS tool and how it uses the knn algotithm to implement the digitrec design. In this document, I just introduce the main difference part between these two projects and how I implement the ROCC interface.

### Basically about the design 

The digit recognition design takes in a binary string representing a handwritten digit (i.e. the testing instance) and classify it to a particular digit (0-9) by computing which digit's training set contains the binary string (i.e. the training instance) that is closest to the testing instance. The training set with the training instance that is closest in distance to the testing instance determines the digit that is most likely represented by the testing instance. In our implementation, we define the distance between two instances as the number of corresponding bits that are different in the two binary strings. For example, 0b1011 and 0b0111 differ in the two most signicant bits and therefore have a distance of 2. 0b1011 and 0b1010 differ only in the least significant bit and have a distance of 1. As a result, 0b1011 is closer to 0b1010 than to 0b0111.

### About modification according to the normal design

There are two versions to implement the digitrec design based on ROCC interface. First is just implement the control and register mode signals without memory interfaces. Second is using the ROCC memory interface to read the parameters for the training from an outside cache. 



In order to implement the ROCC interface, we have to adjust in 3 files: `system.cc` `digitrec.cc` and `tb.cc`.


* `Modification in the digitrec.cc`:
As same as the normal project, we divided the implementation into three parts. The first part is inside the main loop of `digitrec::DigitrecThread()`. The nested for loop repeated executes the `update_knn` function to compare the testing instance with all the training data to find the minimum distance to each of the 10 training sets. The `knn_vote` function looks at the minimum distances from the 10 training sets and determine the smallest among these minimum distances. This smallest distance corresponds to the digit that is recognized and outputted. 

Since we are using the ROCC interface, we don't change anything in the `update_knn` and `knn_vote` function. We just rewrite the main loop in the ``digitrec::DigitrecThread()`. Instead of using the `cynw_p2p` interface `din` and `dout` to read and write 49 bits digit value, this design use the self-defined `HLS_DEFINE_PROTOCOL` `Read from Rocket_chip` to get a cmd from the rocket chip, the cmd include the input 49 bits valued in a register and pass both the data value and the register ID to the digitrec module. Whenever the digitrec module received a cmd from the Rochet chip, it set the `cc_busy_o` signal to 1, representing the accelerator is busy working now, and tell the rocket chip do not sent the other cmd for now. 

After successfully reading the cmd from the rocket chip, we read the input value and store it in a digit varriable `sample` and pass it to the mainly working algorithm part to calculate the output value `result` using the training parameters and `update_knn` and `knn_vote` functions. Then we use another `HLS_DEFINE_PROTOCOL` `Write to the Rocket_chip`to pass the destination register ID and result data back to the rocket chip. Also, set `cc_busy_o` signal to 0 to let the rocket chip to pass the next cmd to the accelerator.

*`Modification in the tb.cc`:
W



### Overview

The basic Stratus HLS design flow is as follows:

1. A SystemC behavioral hardware model is transformed from an existing high-level behavioral model or developed from scratch. It contains a testbench module and one or more design modules.
2. The SystemC behavioral hardware model is placed into the Stratus HLS environment.
3. Constraints and directives are specified for each desired RTL micro-architecture. This enables you to explore performance and area tradeoffs.
4. A technology library is input to Stratus HLS along with the behavioral hardware model. 
5. The existing RTL-GDSII flow is used.

Our Stratus project for Digit Recognition is made up of files that define the synthesizable design, simulation testbench, supporting system files, and other project files. These files include:

* `digitrec.cc`: This is the main source file containing the top-level digit recognition function to be synthesized.
* `digitrec.h`: This header file contains definitions of various SystemC functions and variables for the digit recognition design.
* `tb.cc`: This file contains the testbench module that writes data to the design and reads data from the design. It contains a SystemC function that is called at the end of all stimulus and response in the testbench and stops the simulation.
* `tb.h`: This testbench header file contains definitions of various SystemC functions for your testbench.
* `stimulus.dat`: This file contains the stimulus inputs to the testbench for simulation.
* `golden.dat`: This file contains the golden output expected from the design in simulation.
* `main.cc`: This file holds functionality that starts simulation, initializes signals and objects in simulation, creates a new instance of the system for the SystemC simulator, and deletes the system from memory when a simulation run is complete.
* `system.cc`: This file defines the top-level module that instantiates the design and testbench modules and the signals and connections between them. It also contains the clock and reset definitions for the design.
* `system.h`: This header file contains the declarations of the system, design, and testbench classes. In turn, the system class defines the system I/O signals available to the simulator.
* `systemc.h`: This SystemC system library provides the definition of the esc_* functions necessary for SystemC or mixed SystemC/Verilog cosimulation.
* `project.tcl`: The project file contains integration settings, library definitions, behavioral synthesis and simulation configurations, and various other options for your project.
* `Makefile`: This top-level Makefile holds persistent Makefile information, such as variables that
affect the Stratus HLS-generated Makefile.prj, which is #included from this file.

### Preparing the Design

The digit recognition design takes in a binary string representing a handwritten digit (i.e. the testing instance) and classify it to a particular digit (0-9) by computing which digit's training set contains the binary string (i.e. the training instance) that is closest to the testing instance. The training set with the training instance that is closest in distance to the testing instance determines the digit that is most likely represented by the testing instance. In our implementation, we define the distance between two instances as the number of corresponding bits that are different in the two binary strings. For example, 0b1011 and 0b0111 differ in the two most signicant bits and therefore have a distance of 2. 0b1011 and 0b1010 differ only in the least significant bit and have a distance of 1. As a result, 0b1011 is closer to 0b1010 than to 0b0111.

Our implementation is divided into three parts. The first part is inside the main loop of `digitrec::DigitrecThread()`. The nested for loop repeated executes the `update_knn` function to compare the testing instance with all the training data to find the minimum distance to each of the 10 training sets. The `knn_vote` function looks at the minimum distances from the 10 training sets and determine the smallest among these minimum distances. This smallest distance corresponds to the digit that is recognized and outputted.

To synthesize an RTL implementation of a design , it must be described as one or more `SC_MODULE`s. Here we have an `SC_MODULE(digitrec)` declared in `digitrec.h` and defined in `digitrec.cc`. The structure of an SC_MODULE must follow these conventions:
* The module must have a clock port of type `sc_in<bool>`.
* The module have a reset port of type `sc_in<bool>`.
* The module may have additional I/O ports as needed for the algorithm.
* The module must have at least one process method declared as an `SC_CTHREAD`. Additional process methods, each declared as `SC_CTHREADs`, may be specified.
* A process method must be sensitive to the clock port.
* The process method must be structured with reset behavior, multi-cycle initialization behavior, and main loop. These are labeled within the comment in `digitrec::DigitrecThread()`.
* A `reset_signal_is()` statement should be used to establish sensitivity to the reset port.
* No initialization behavior may be present in the constructor.
* Initialization behavior must be implemented within the process method.
* Built-in C++ data types such as long and unsigned char may be used for module data members, or bit-accurate SystemC data types such as `sc_uint<W>` may be used.

Any code that needs to be scheduled should be part of or called within the main loop. Contents outside the main loop are cycle-accurate to start with.

### Setting Up the Project

All global configurations for the particular project should be specified in `project.tcl`, which is used by the master makefile `Makefile` to automatically generate a project-specific makefile `Makefile.prj`. The minimum set of information that must be specified in `project.tcl` include:
* `use_tech_lib <path_to_library>`: Our path is pointed to the appropriate library.
* `set_attr hls_options "clock_period=<period>"`: We set the clock period to 10ns.
* `define_system_module <system_file_1>`: This points to `system.cc`.
* `define_system_module <system_file_2>`: This points to `main.cc`.
* `define_system_module <testbench_file>`: Our testbench file is `tb.cc`.
* `define_hls_module <hls_module_name> <algorithm_src_file(s)>`: Our top-level module is `digitrec` in `digitrec.cc`.
* `define_hls_config <hls_module_name> <hls_config_name option(s)>`: We use the `ASIC` configuration to synthesize `digitrec`. This is part of the make target for synthesizing the design.
* `define_sim_config <sim_name> { <module_name> BEH }`: We use the `B` configuration for behavioral simulation. This is part of the make target for simulating the design using SystemC behavioral simulation.
* `define_sim_config <sim_name> { <module_name> RTL_V <hls_config_name> }`: We use the `ASIC` configuration for RTL simulation. This will be part of the make target for simulating the design using RTL and SystemC co-simulation.

A useful global configuration is `set_attr dpopt_auto <option>` where the `<option>` can be `all`, `off`, `array`, `op`, or `expr`. This option enbales different levels of datapath optimization discussed before and would have a significant impact on the quality of results. `all` turns on all datapath optimizations, while `off` does not perform any datapath optimization and would result in bad quality of results. `array`, `op`, or `expr` optimizes only array, only operators, or only expressions, respectively.

`set_attr message_detail <0,1,2 or 3>` controls the amount of messages printed to the screen.

`use_verilog_simulator <simulator>` defines the RTL simulator for RTL simulation. Simulator can be `vcs`, `vcsi`, `mti`, and `incisive`. We use `enable_waveform_logging -vcd` to enable simulation dump. 

### Running the Design

With all the required files set up for the synthesizable design, simulation testbench, supporting system, and project configuration, we can now try out our design.

First, we want to do a behavioral simulation to make sure that our SystemC code is correct. Remember that the `B` configuration corresponds to behavioral simulation. Therefore, to run the behavioral simulation, we simply type `make sim_B`. You will see the simulation summary at the end of the run, which should indicate that the simulation passed. If simulation fails, we would need to debug our SystemC design. We must make sure that our design passes SystemC simulation before proceeding with synthesis. If SystemC simulation fails, there is no way that the synthesized design would be correct.

Next, we perform HLS on our design from SystemC to Verilog RTL. Remeber that we have defined the `ASIC` configuration for synthesis. Therefore, to perform HLS of our design, we type `make hls_ASIC`. The terminal will print out the process Stratus goes through to synthesize and optimize the design. Stratus may display how and what functional units that are characterized using RTL synthesis on-the-fly and what optimizations (e.g. unrolling, partitioning, pipelining) are applied. The synthesis result is kept in the `bdw_work` directory.

After the design has been synthesized, we perform RTL simulation on the generated Verilog RTL using the SystemC testbench to make sure that the synthesized design still passes simulation. To do so, we type `make sim_ASIC_V`.

### Optimizing the Design

Having the baseline design running, we should now think about how to better optimize the design. While we can turn on datapath optimization to have Stratus automatically optimize the design, we also need to use pragmas to specify our desired architecture.

We have the following optimization pragmas in our design in `digitrec.cc`:
* `HLS_SEPARATE_ARRAY`: We apply this pragma on both `training_data` and `knn_set` to partition these array by their first dimension to enable simultaneous access across this dimension. For example, this pragama allows one instance from all the digits to be accessed in parallel from `training_data`.
* `HLS_PIPELINE_LOOP`: We pipeline the outer loop to an initiation interval of 1 cycle so that one instance from all the digits can be compared every cycle.
* `HLS_UNROLL_LOOP`: Unrolling a loop allows all iterations to be executed in parallel. We perform unrolling for the inner loop of the nested loop because unrolling of the inner loop is required due to the pipelining of the outer loop. We unroll the loops in `update_knn` function so that all bits in `diff` and `min_distances` can be accessed in parallel.
* `HLS_MAP_TO_REGISTER_BANK`: To access `min_distances` in parallel, `min_distances` must be mapped to registers instead of memory with limited number of ports. We use this pragma to force each element of `min_distances` array to be mapped to an individual register so that all elements can be accessed in parallel.

Now with the new optimizations in place, we can re-simulate and re-synthesize our design using the previous procedures. Note that our RTL simulation reports the latency for our design. You should see a reduction in latency after our set of performance-oriented optimizations enforced by the previously described pragmas. Please refer to `tb.cc` for details on how the simulation is implemented.
