# Implement Digitrec in SystemC using the ROCC interface

This directory is a derivative of the Digit Recongnition Project imlemented in stratus `<WORKING_DIR>/craft-xcel/digit_recognition/stratus`. This project is written in SystemC, and using Stratus HLS as the HLS tool to synthesizes SystemC into C++-style RTL and then converts the C++ RTL into Verilog RTL. Different with the former one, this project is based on te ROCC interface in order to connect the digitrec module with the rocket chip. In this project we designed the interface such as control, register and memory mode signals in the digitrec module in order to pass the 'custom' cmd from the rochet chip to the digitrec module.

To see the basic introduction of the Stratus HLS and the digit recognition project,please go through the README.md file in the repository `<WORKING_DIR>/craft-xcel/digit_recognition/stratus` . It clearly shows the overview of the Stratus HLS tool and how it uses the knn algotithm to implement the digitrec design. In this document, I just introduce the main difference part between these two projects and how I implement the ROCC interface.

## Basically about the design 

The digit recognition design takes in a binary string representing a handwritten digit (i.e. the testing instance) and classify it to a particular digit (0-9) by computing which digit's training set contains the binary string (i.e. the training instance) that is closest to the testing instance. The training set with the training instance that is closest in distance to the testing instance determines the digit that is most likely represented by the testing instance. In our implementation, we define the distance between two instances as the number of corresponding bits that are different in the two binary strings. For example, 0b1011 and 0b0111 differ in the two most signicant bits and therefore have a distance of 2. 0b1011 and 0b1010 differ only in the least significant bit and have a distance of 1. As a result, 0b1011 is closer to 0b1010 than to 0b0111.

## About modification according to the normal design

There are two versions to implement the digitrec design based on ROCC interface. First is just implement the control and register mode signals without memory interfaces. Second is using the ROCC memory interface to read the parameters for the training from an outside cache. 

### Without memory interface

In order to implement the ROCC interface, we have to adjust in 3 files: `system.h` `digitrec.h` `digitrec.cc` `tb.h` and `tb.cc`.

#### Modification in the `system.h`

Add signals to control the digitrec module. Here are some interface port I added in the system module: 

    sc_signal <bool> cc_busy_chan;             

    sc_signal <bool> core_cmd_ready_chan;
    sc_signal <bool> core_cmd_valid_chan;
    sc_signal <sc_uint<7> > core_cmd_inst_funct_chan;
    sc_signal <sc_uint<5> > core_cmd_inst_rs1_chan;
    sc_signal <sc_uint<5> > core_cmd_inst_rs2_chan;

    sc_signal <bool> core_cmd_inst_xd_chan;     //set if destination reg exist
    sc_signal <bool> core_cmd_inst_xs1_chan;    //set if resource rs1 reg exist
    sc_signal <bool> core_cmd_inst_xs2_chan;    //set if resource rs2 reg exist
    sc_signal <sc_uint<5> >   core_cmd_inst_rd_chan;
    sc_signal <sc_uint<7> >  core_cmd_inst_opcode_chan;     //custom instruction opcode may be used for several accerlerations
    sc_signal <sc_uint<64> >  core_cmd_rs1_chan;
    sc_signal <sc_uint<64> >  core_cmd_rs2_chan;

    sc_signal <bool> core_resp_ready_chan;
    sc_signal <bool> core_resp_valid_chan;
    sc_signal <sc_uint<5> >   core_resp_rd_chan;
    sc_signal <sc_uint<64> >  core_resp_data_chan;

    //memory mode
    //for reqest
    sc_signal <bool> mem_req_ready_chan;
    sc_signal <bool> mem_req_valid_chan;
    sc_signal <sc_uint<40> > mem_req_addr_chan;
    sc_signal <sc_uint<10> >  mem_req_tag_chan;
    sc_signal <sc_uint<5> >   mem_req_cmd_chan; //0x000 store 0x001 load
    sc_signal <sc_uint<3> >   mem_req_typ_chan; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
    sc_signal <bool> mem_req_phys_chan;
    sc_signal <sc_uint<64> >  mem_req_data_chan; //store data

    //for response  can be read from the memory at any time

    sc_signal <bool> mem_resp_valid_chan;
    sc_signal <sc_uint<40> >  mem_resp_addr_chan;
    sc_signal <sc_uint<10> >   mem_resp_tag_chan;
    sc_signal <sc_uint<5> >  mem_resp_cmd_chan; //0x000 store 0x001 load
    sc_signal <sc_uint<3> >   mem_resp_typ_chan; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
    sc_signal <sc_uint<64> >  mem_resp_data_chan; //the data loaded from the em


#### Modification in the `digitrec.cc`

As same as the normal project, we divided the implementation into three parts. The first part is inside the main loop of `digitrec::DigitrecThread()`. The nested for loop repeated executes the `update_knn` function to compare the testing instance with all the training data to find the minimum distance to each of the 10 training sets. The `knn_vote` function looks at the minimum distances from the 10 training sets and determine the smallest among these minimum distances. This smallest distance corresponds to the digit that is recognized and outputted. 

Since we are using the ROCC interface, we don't change anything in the `update_knn` and `knn_vote` function. We just rewrite the main loop in the ``digitrec::DigitrecThread()`. Instead of using the `cynw_p2p` interface `din` and `dout` to read and write 49 bits digit value, this design use the self-defined `HLS_DEFINE_PROTOCOL` `Read from Rocket_chip` to get a cmd from the rocket chip, the cmd include the input 49 bits valued in a register and pass both the data value and the register ID to the digitrec module. Whenever the digitrec module received a cmd from the Rochet chip, it set the `cc_busy_o` signal to 1, representing the accelerator is busy working now, and tell the rocket chip do not sent the other cmd for now. 

After successfully reading the cmd from the rocket chip, we read the input value and store it in a digit varriable `sample` and pass it to the mainly working algorithm part to calculate the output value `result` using the training parameters and `update_knn` and `knn_vote` functions. Then we use another `HLS_DEFINE_PROTOCOL` `Write to the Rocket_chip`to pass the destination register ID and result data back to the rocket chip. Also, set `cc_busy_o` signal to 0 to let the rocket chip to pass the next cmd to the accelerator.

#### Modification in the `tb.cc`

W

