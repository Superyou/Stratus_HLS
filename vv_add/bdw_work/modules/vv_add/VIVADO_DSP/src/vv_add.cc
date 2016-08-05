//==========================================================================
//vv_add.cpp
//==========================================================================
// @brief: A k-nearest-neighbor implementation for digit recognition

#include "vv_add.h"

#ifndef UNROLL_FACTOR
#define UNROLL_FACTOR 10
#endif

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the recognized digit (0~9)

void vv_add::vv_addThread(){

  //variable for storing the address of training_data[0][0], assuming that the array are saved continuously in the cache
  sc_uint <64> din1_64; //the data read from the rocket chip
  sc_uint <64> din2_64; //the data read from the rocket chip

  sc_uint <40> Addr;
  sc_uint <5> ds;
  sc_uint <7>  opcode;

  sc_uint <64> result_64; // the response gonna to send back to cocket chip
  bool xd; //set 1 if the destination reg exist


  // reset logic
  { HLS_DEFINE_PROTOCOL("Reset");
    // single-cycle reset behavior
    cc_busy_o.write(0);
    cc_interrupt_o.write(0);

    core_cmd_ready_o.write(0);

    core_resp_valid_o.write(0);
    core_resp_rd_o.write(core_cmd_inst_rd_i); // reset the response ID into cmd_inst_rd_i
    core_resp_data_o.write(0); // reset the response data into 0


    mem_req_valid_o.write(0);
    mem_req_addr_o.write(0);
    mem_req_tag_o.write(0);
    mem_req_cmd_o.write(0);
    mem_req_typ_o.write(0);
    mem_req_phys_o.write(1);
    mem_req_data_o.write(0);

    wait();
  }

  // multi-cycle initialization behavior here
  
  // main loop
  while(1){


    //HLS_DEFINE_PROTOCOL for each interface
    {
          HLS_DEFINE_PROTOCOL("Read from Rocket_chip");
          core_cmd_ready_o.write(1);

          while (!core_cmd_valid_i)
          {
              wait();
          }
          //assert(core_cmd_inst_rs1_i == 1);
          //assert(core_cmd_inst_rs2_i == 1);
          //assert(core_cmd_inst_rd_i == 1);
          //assert(core_cmd_inst_opcode_i == 0x1);
          //assert(core_cmd_inst_funct_i==0x1);  //to be defined

          // store the num of the opcode
          opcode = core_cmd_inst_opcode_i.read();
          //read the input data from the register rs1 rs2
          din1_64 = core_cmd_rs1_i.read();
          din2_64 = core_cmd_rs2_i.read();
          // store the destination register id if exist
          ds = core_cmd_inst_rd_i.read();
          // store whether destination teg exist
          xd = core_cmd_inst_xd_i.read();
          // set cc_busy to 1 to prevent sending other cmd from rocket chip
          cc_busy_o.write(1);

          wait();

          core_cmd_ready_o.write(0);

    }


    sc_uint<10> op_10 = (sc_uint<10> )opcode;

    switch (opcode)
    {
        // to do the knn training using training_set

    case 1: { //for add option

        result_64 = din1_64 + din2_64;
        cout<<"din1 ="<<din1_64<< " +  din2 = "<<din2_64<<"  =  result = "<<result_64<<endl;
        break;
    }

    case 2: { //For store option

        HLS_DEFINE_PROTOCOL("Send request to store data to the Cache");
        {
            //read param from the memory using mem interface
            mem_req_addr_o.write(din2_64); // addr = din2_64
            mem_req_valid_o.write(1);
            mem_req_cmd_o.write(0x0001); //for store
            mem_req_typ_o.write(0x011);
            mem_req_tag_o.write(op_10);
            mem_req_data_o.write(din1_64); //write din1_64 to mem
            do {
                wait();
            }while(!mem_req_ready_i);

            mem_req_valid_o.write(0);

            // check whether the tag is correct
            while((!mem_resp_valid_i || !(mem_resp_tag_i == op_10) ))
            {
                wait();
            }

            result_64 = mem_resp_store_data_i.read();
            wait();

        }
        break;
    }


    case 3: { //For load option

        HLS_DEFINE_PROTOCOL("Send request & Load data from the Cache");
        {
            //read param from the memory using mem interface
            mem_req_addr_o.write(din2_64);
            mem_req_valid_o.write(1);
            mem_req_cmd_o.write(0x0000);
            mem_req_typ_o.write(0x011);
            mem_req_tag_o.write(op_10);

            do {
                wait();
            }while(!mem_req_ready_i);

            mem_req_valid_o.write(0);

            // check whether the tag is correct
            while((!mem_resp_valid_i || !(mem_resp_tag_i == op_10) ))
            {
                wait();
            }

            result_64 = mem_resp_data_i.read();

            wait();
            //cout << "training_set["<<j<<"]["<<i<<"] = "<<instance<<endl;

        }
        break;
    }
    }


    cout<<"for xd ="<<xd<<endl;

    {
          HLS_DEFINE_PROTOCOL("Write to the Rocket_chip");
          if (xd) {
              // send resp_valid to 1
              core_resp_valid_o = 1;
              // send result back to the destination reg
              core_resp_rd_o.write(ds);
              core_resp_data_o.write(result_64);
              cout<< "we pass result ="<<result_64<<" to the rocket chip!"<<endl;
              do {
                  wait();
              }while(!core_resp_ready_i);
          }
          // set cc_busy to 0 to start the next cmd
          cc_busy_o.write(0);
          core_resp_valid_o = 0;
          wait(2);

    }


  }
}
