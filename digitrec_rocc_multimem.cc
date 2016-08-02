//==========================================================================
//digitrec.cpp
//==========================================================================
// @brief: A k-nearest-neighbor implementation for digit recognition

#include "digitrec.h"

#ifndef UNROLL_FACTOR
#define UNROLL_FACTOR 10
#endif

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the recognized digit (0~9)

void digitrec::DigitrecThread(){

  sc_uint <64> din_64;
  input_t sample;
  output_t result;
  sc_uint <40> Addr;
  sc_uint <5> ds;
  sc_uint <7>  opcode;
  sc_uint <64> result_64;
  bool xd;



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

          //cout<<"in the digit part::::valid = "<<core_cmd_valid_i <<"  ready = "<<core_cmd_ready_o<< endl;

          while (!core_cmd_valid_i)
          {
              wait();
          }
          //assert(core_cmd_inst_rs1_i == 1);
          //assert(core_cmd_inst_rs2_i == 1);
          //assert(core_cmd_inst_rd_i == 1);
          //assert(core_cmd_inst_opcode_i == 0x1);
          //assert(core_cmd_inst_funct_i==0x1);  //to be defined

          din_64 = core_cmd_rs1_i.read();

          xd = core_cmd_inst_xd_i.read();
          ds = core_cmd_inst_rd_i.read();

          opcode = core_cmd_inst_opcode_i.read();

          cc_busy_o.write(1);

          cout<<"digitrec has read the input:"<< din_64 <<"   core_cmd_ready_o = "<< core_cmd_ready_o<< "   valid = " <<core_cmd_valid_i <<endl;
          wait();
          //cout<<"2 in the digit part::::valid = "<<core_cmd_valid_i <<"  ready = "<<core_cmd_ready_o<< endl;
          core_cmd_ready_o.write(0);
          //wait();

    }
      //cout <<" build training_set"<<endl;

    //HLS_SEPARATE_ARRAY(training_set);

    //cout <<" build knn_set"<<endl;
    bit6 knn_set[10][K_CONST];
    //HLS_SEPARATE_ARRAY(knn_set);




    //HLS_SEPARATE_ARRAY(training_set);
    cout<<"opcode = "<<opcode<<endl;

    switch (opcode)
    {


        case 1: {

        //cout<<"It is case 1 : opcode ="<<opcode<<endl;
        sample = (digit) din_64;
            // FIX: TO DO

            // unscheduled computation here



            // This array stores K minimum distances per training set
            //bit6 knn_set[10][K_CONST];

            //HLS_SEPARATE_ARRAY(knn_set);

            // Initialize the knn set
            for ( int i = 0; i < 10; ++i )
              for ( int k = 0; k < K_CONST; ++k )
                // Note that the max distance is 49
                knn_set[i][k] = 50;

            //sample = din;
            //cout << "sample value = " << sample << endl;
            for ( int i = 0; i < TRAINING_SIZE; ++i ) {
              //HLS_PIPELINE_LOOP(HARD_STALL, 1, "pipeline_image_input");
              for ( int j = 0; j < 10; j++ ) {

                  //cout<<"IN THE LOOP"<<endl;
                 // cout<<"i = "<<i<<" & j = "<<j<<endl;
                // UNROLL pragma with user-defined macro
                //HLS_UNROLL_LOOP(COMPLETE, UNROLL_FACTOR, "unroll_digits");



                // Read a new instance from the training set
                //const digit training_instance = training_data[j][i];
                //cout << "training instance[" << std::dec << j << "][" << i << "] = 0x" << std::hex << training_data[j][i] << endl;
                digit training_instance = training_set[j][i];
                // Update the KNN set
                update_knn(sample, training_instance, knn_set[j]);
              }
            }

            // Compute the final output
            result = knn_vote( knn_set );
            result_64 = (sc_uint<64>) result;

            break;
        }

        case 2: {

            cout<<"It is case 2 : opcode ="<<opcode<<endl;
                Addr = (sc_uint<40>) din_64;

                HLS_DEFINE_PROTOCOL("Send request & Load data from the Cache for 1800*10 times");
                {


                    for (int j=0; j < 10; ++j) {
                        //HLS_UNROLL_LOOP(OFF, "no unroll");
                        for (int i=0; i < TRAINING_SIZE ;++i)
                        {
                            sc_uint<10> jj=j;
                            //read param from the memory using
                            //cout<<"Addr = "<<Addr<<endl;
                            mem_req_addr_o.write(Addr);
                            mem_req_valid_o.write(1);
                            mem_req_cmd_o.write(0x0000);
                            mem_req_typ_o.write(0x011);
                            mem_req_tag_o.write(j);
                            Addr = Addr + 1;
                            //cout<<"have sent the requst, and waiting for the response"<<endl;

                            do {
                                wait();
                            }while(!mem_req_ready_i);

                            mem_req_valid_o.write(0);


                            //cout<<"waiting for the response !"<<endl;
                            while(!mem_resp_valid_i || !(mem_resp_tag_i == jj))
                            {
                                wait();
                            }

                            //Addr = mem_resp_addr_i.read();
                            //if load
                            //cout<<"successfully read from the response"<<endl;
                            digit instance = mem_resp_data_i.read();

                            wait();
                            training_set[j][i] = instance;
                            //cout << "training_set["<<j<<"]["<<i<<"] = "<<training_set[j][i]<<endl;

                        }
                    }
                }
                //cout<<"end of case 2"<<endl;
                break;
            }

    }




    {
          HLS_DEFINE_PROTOCOL("Write to the Rocket_chip");
          if (xd) {
              core_resp_valid_o = 1;
              core_resp_rd_o.write(ds);
              core_resp_data_o.write(result_64);

              do {
                  wait();
              }while(!core_resp_ready_i);
          }
          cc_busy_o.write(0);
          core_resp_valid_o = 0;
          wait(2);

    }


  }
}

//-----------------------------------------------------------------------
// update_knn function
//-----------------------------------------------------------------------
// Given the test instance and a (new) training instance, this
// function maintains/updates an array of K minimum
// distances per training set.

// @param[in] : test_inst - the testing instance
// @param[in] : train_inst - the training instance
// @param[in/out] : min_distances[K_CONST] - the array that stores the current
//                  K_CONST minimum distance values per training set

void digitrec::update_knn(digit test_inst, digit train_inst, 
    bit6 min_distances[K_CONST]){
  
  // added
  //HLS_FLATTEN_ARRAY(min_distances);
  HLS_MAP_TO_REG_BANK(min_distances);

  // Compute the difference using XOR
  digit diff = test_inst^train_inst;

  // map diff to regs
  //HLS_MAP_TO_REG_BANK(diff);

  bit6 dist = 0;
  // added
  //digit mask = 1;
  // Count the number of set bits
  for (int i=0; i<49; ++i){ 
    // UNROLL pragma with user-defined macro
    HLS_UNROLL_LOOP(ON);

    //dist += diff[i];
    digit diff_sh = diff>>i;
    //dist += (diff>>i)&mask;
    dist += diff_sh[0];

  }

  bit6 max_dist = 0;
  int max_dist_id = K_CONST+1; 

  // Find the max distance
  for (int k=0; k<K_CONST; ++k){
    // UNROLL pragma with user-defined macro
    HLS_UNROLL_LOOP(ON);

    if ( min_distances[k] > max_dist ) {
      max_dist = min_distances[k];
      max_dist_id = k;
    }
  }
  
  // Replace the entry with the max distance
  if (dist<max_dist)
    min_distances[max_dist_id] = dist;
}

//-----------------------------------------------------------------------
// knn_vote function
//-----------------------------------------------------------------------
// Given 10xK minimum distance values, this function 
// finds the actual K nearest neighbors and determines the
// final output based on the most common digit represented by 
// these nearest neighbors (i.e., a vote among KNNs). 
//
// @param[in] : knn_set - 10xK_CONST min distance values
// @return : the recognized digit

bit4 digitrec::knn_vote(bit6 knn_set[10][K_CONST])
{
  bit4 min_index = 0;

  // This array keeps keeps of the occurences
  // of each digit in the knn_set
  
  int score[10]; 

  // Initialize score array  
  for (int i=0; i<10; ++i)
      score[i] = 0; 

  // Find KNNs
  for (int k=0; k<K_CONST; ++k){ 
    bit6 min_dist = 50;
    bit4 min_dist_id = 10;
    int  min_dist_record = K_CONST+1;

    for (int i=0; i<10; ++i){
        for (int k=0; k<K_CONST; ++k){
        if (knn_set[i][k]<min_dist){
          min_dist = knn_set[i][k];
          min_dist_id = i;
          min_dist_record = k;
        }
      }
    }
    
    score[min_dist_id]++;
    // Erase the minimum difference entry once it's recorded
    knn_set[min_dist_id][min_dist_record] = 50;
  }

  // Calculate the maximum score
  int max_score = 0; 
  for (int i=0; i<10; ++i){
    if (score[i]>max_score){
      max_score = score[i];
      min_index = i;
    }
  }

  return min_index;
}

