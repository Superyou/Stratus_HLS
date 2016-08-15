# The ROCC Compatible vector-vector-add Design

This directory use a simple vector-vector-add design to illustrate how to make the rocc interface compatible with your own design. The ROCC interface is series of signals which connect the Rocketchip with the accelerator. The rocket core sends cmds to the accelerator and the accelerator sends back response to the rocket core when it finishes the compuration. In this project, the design is written in SystemC and use Stratus HLS as the HLS tool. In the following part, I will show you how to use the specific classes to define the rocc interface signals.  

## About the vector-vector-add design

In this design, the vv_add module has 3 functions: Add, Store and Load. 

* **Add Operation** : Read input from both the `core_cmd_rs1_i` and `core_cmd_rs2_i`. Add them and send the result back to the response.
* **Store Operation** : Read the `core_cmd_rs1_i` as the data to be stored and read the `core_cmd_rs2_i` as the memory address. The accelerator will send `mem_req` to the rocketchip and store the data in the specific address through a cache. The storage message will send back to the accelerator through the `mem_resp` signals. Finally send the storage data to the `core_response`.  
* **Load Operation** : Only read the `core_cmd_rs2_i` as the load address and load data through sending the `mem_req`. The data loading from the cache will be sent through the `mem_resp`. At last, the response sent to the rocket core will be the loading result.

## Modular ROCC interfaces

In this design, the rocc interfaces are tied up in to 4 different kinds of classes. 
* **`SOURCE_TO_ACCEL`** : A series of input signals sent from the tb's source thread to the accelerator. These signals can be written and only be rewritten in the source thread.
* **`SINK_TO_ACCEL`** : Another input signal sent form the tb's sink thread to the accelerator. The sink thread is only in charge of the `core_resp_ready_i` signal. It tells the the accelerator whether the sink rocketchip is ready to receive the respond signal or not.
* **`ACCEL_TO_ROCC`** : A series of output signals sent from the accelerator to the rocket core. 
* **`MEM_TO_ACCEL`** : A series of output signals sent from the tb's mem thread to the accelerator. The are mainly the signals which are responsible for the memory responses. 
* **`ACCEL_TO_MEM`** : A series of output signals sent from the accelerator to the cache. It mainly includes the signals for sending the memory request. These output signals are separated from the signals in class `ACCEL_TO_ROCC` because of its sepecific function.

