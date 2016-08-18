//==========================================================================
//vv_add.cpp
//==========================================================================
// @brief: A simple vector-vector-add design

#include "vv_add.h"

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// In this design, the vv_add module has 3 functions: Add, Store and Load.
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

void vv_add::vv_addThread(){

  //variable for storing the address of training_data[0][0], assuming that the array are saved continuously in the cache
  sc_uint <64> din1_64; //the data read from the rocket chip
  sc_uint <64> din2_64; //the data read from the rocket chip
  sc_uint <64> tmp[1000]; // a temporary array to check whether the accelerator can load continuously from the cache
  sc_uint <40 > Addr;
  sc_uint <5> ds;
  sc_uint <7>  funct;

  sc_uint <64> result_64; // the response gonna to send back to cocket chip
  bool xd; //set 1 if the destination reg exist


  // reset logic
  { HLS_DEFINE_PROTOCOL("Reset");
    // single-cycle reset behavior
    tmp_write.cc_busy_o=0;
    tmp_write.cc_interrupt_o = 0;
    tmp_write.core_cmd_ready_o = 0;
    tmp_write.core_resp_valid_o = 0;
    tmp_write.core_resp_rd_o = rocc_in.read().core_cmd_inst_rd_i;
    tmp_write.core_resp_data_o = 0;

    mem_write.mem_req_valid_o = 0;

    mem_write.mem_req_addr_o= 0;
    mem_write.mem_req_tag_o = 0;
    mem_write.mem_req_cmd_o = 0;
    mem_write.mem_req_typ_o = 0;
    mem_write.mem_req_phys_o =1;
    mem_write.mem_req_data_o =0;
    tmp_write.io_autl_acquire_valid_o =0;
    tmp_write.io_in_1_acquire_ready_o =0;


    rocc_out.write(tmp_write);
    mem_req.write(mem_write);
    wait();
  }

  // multi-cycle initialization behavior here
  
  // main loop
  while(1){


    //HLS_DEFINE_PROTOCOL for each interface
    {
          HLS_DEFINE_PROTOCOL("Read from Rocket_chip");
          tmp_write.core_cmd_ready_o = 1;
          rocc_out.write(tmp_write);
          //cout<<"begin to wait for cmd"<<endl;
          while (!rocc_in.read().core_cmd_valid_i)
          {
              wait();
          }
          //assert(core_cmd_inst_rs1_i == 1);
          //assert(core_cmd_inst_rs2_i == 1);
          //assert(core_cmd_inst_rd_i == 1);
          //assert(core_cmd_inst_opcode_i == 0x1);
          //assert(core_cmd_inst_funct_i==0x1);  //to be defined

          // store the num of the funct
          funct = rocc_in.read().core_cmd_inst_funct_i;
          //read the input data from the register rs1 rs2
          din1_64 = rocc_in.read().core_cmd_rs1_i;
          din2_64 = rocc_in.read().core_cmd_rs2_i;
          // store the destination register id if exist
          ds = rocc_in.read().core_cmd_inst_rd_i;
          // store whether destination teg exist
          xd = rocc_in.read().core_cmd_inst_xd_i;

          // set cc_busy to 1 to prevent sending other cmd from rocket chip
          tmp_write.cc_busy_o = 1;
          tmp_write.core_cmd_ready_o = 0;
          rocc_out.write(tmp_write);

          wait();



    }
      //cout<<"din1_= "<<din1_64<<" din2 = "<<din2_64<<endl;


    switch (funct)
    {
        // to do Add, Store or Load operation

    case 1: { //for add option
        cout<<"case 1"<<endl;
        result_64 = din1_64 + din2_64;
        cout<<"din1 ="<<din1_64<< " +  din2 = "<<din2_64<<"  =  result = "<<result_64<<endl;
        break;
    }

    case 2: { //For store option
        cout<<"case 2"<<endl;
        HLS_DEFINE_PROTOCOL("Send request to store data to the Cache");
        {
            //read param from the memory using mem interface

            mem_write.mem_req_addr_o = din2_64;
            mem_write.mem_req_valid_o = 1;
            mem_write.mem_req_cmd_o = 1;
            mem_write.mem_req_typ_o = 3;
            mem_write.mem_req_tag_o =funct;
            mem_write.mem_req_data_o = din1_64;
            mem_req.write(mem_write);

            do {
                wait();
            }while(!mem_resp.read().mem_req_ready_i);
            //cout <<"send store req with "<<din1_64<<endl;

            mem_write.mem_req_valid_o = 0;
            mem_req.write(mem_write);
            // check whether the tag is correct
            while((!mem_resp.read().mem_resp_valid_i || !(mem_resp.read().mem_resp_tag_i == funct) ))
            {
                wait();
            }

            result_64 = mem_resp.read().mem_resp_store_data_i;
            cout<<"store result ="<<result_64<<endl;
            wait();

        }
        break;
    }


    case 3: { //For load option
        cout<<"case 3"<<endl;
        sc_uint<64> instance;
        for (int i=0;i<50;++i)
        {
            // use the HLS_PIPELINE pragma to realize sending continuiously mem_request
            HLS_PIPELINE_LOOP(HARD_STALL,1,"mem pipe");
            sc_uint<64> xx = i+din2_64;
            {
                HLS_DEFINE_PROTOCOL("Send request & Load data from the Cache");
                //read param from the memory using mem interface


                mem_write.mem_req_addr_o = xx;
                mem_write.mem_req_valid_o = 1;
                mem_write.mem_req_cmd_o = 0;
                mem_write.mem_req_typ_o = 3;
                mem_write.mem_req_tag_o =funct;

                mem_req.write(mem_write);

                do {
                    wait();
                }while(!mem_resp.read().mem_req_ready_i);
                cout <<"send load req"<<endl;
                //rocc_in->mem_req_valid_o.write(0);
                mem_write.mem_req_valid_o = 0;
                mem_req.write(mem_write);
                // check whether the tag is correct
                while((!mem_resp.read().mem_resp_valid_i || !(mem_resp.read().mem_resp_tag_i == funct) ))
                {
                    wait();
                }

                instance = mem_resp.read().mem_resp_data_i;
                cout<<"load result ="<<instance<<endl;
                //wait();


            }
            tmp[i] = instance;
        }
        break;
    }


    }

    //cout<<"for xd ="<<xd<<endl;

    {
          HLS_DEFINE_PROTOCOL("Write to the Rocket_chip");
          if (xd) {

              tmp_write.core_resp_valid_o = 1;
              tmp_write.core_resp_rd_o = ds;
              tmp_write.core_resp_data_o = result_64;
              rocc_out.write(tmp_write);
              //cout<< "we pass result ="<<result_64<<" to the rocket chip!"<<endl;
              do {
                  wait();
              }while(!sink_in.read().core_resp_ready_i);
          }
          // set cc_busy to 0 to start the next cmd
          tmp_write.cc_busy_o = 0;
          tmp_write.core_resp_valid_o = 0;
          rocc_out.write(tmp_write);
          //wait();

    }


  }
}
