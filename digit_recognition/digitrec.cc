//==========================================================================
//digitrec.cpp
//==========================================================================
// @brief: A k-nearest-neighbor implementation for digit recognition

#include "digitrec.h"
#include "training_data.h"

#ifndef UNROLL_FACTOR
#define UNROLL_FACTOR 10
#endif

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the recognized digit (0~9)

void digitrec::DigitrecThread(){

  input_t sample;
  output_t result;
  //variable for storing the address of training_data[0][0], assuming that the array are saved continuously in the cache

  sc_uint <5> ds;
  sc_uint<64> din_64;
  sc_uint<64> din2_64;
  sc_uint<64> result_64;
  sc_uint<7> funct;


  // reset logic
  { HLS_DEFINE_PROTOCOL("Reset");
    // single-cycle reset behavior
    // to reset all the output ports to 0 or 1
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

    io_autl_acquire_valid_o.write(0);
    io_in_1_acquire_ready_o.write(0);

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

          funct = core_cmd_inst_funct_i.read();
          //read the input data from the register rs1
          din_64= core_cmd_rs1_i.read();
          din2_64=core_cmd_rs2_i.read();
          // store the destination register id if exist
          ds = core_cmd_inst_rd_i.read();
          // set cc_busy to 1 to prevent sending other cmd from rocket chip
          cc_busy_o.write(1);

          wait();
          core_cmd_ready_o.write(0);


    }


    // FIX: TO DO

    // unscheduled computation here

    HLS_SEPARATE_ARRAY(training_data);


    switch(funct)
    {

    case 1:{
    sample = (input_t) din_64;
    // This array stores K minimum distances per training set
    bit6 knn_set[10][K_CONST];

    HLS_SEPARATE_ARRAY(knn_set);

    // Initialize the knn set
    for ( int i = 0; i < 10; ++i )
      for ( int k = 0; k < K_CONST; ++k )
        // Note that the max distance is 49
        knn_set[i][k] = 50;


    for ( int i = 0; i < TRAINING_SIZE; ++i ) {
      HLS_PIPELINE_LOOP(HARD_STALL, 1, "pipeline_image_input");
      for ( int j = 0; j < 10; j++ ) {

        // UNROLL pragma with user-defined macro
        HLS_UNROLL_LOOP(COMPLETE, UNROLL_FACTOR, "unroll_digits");

        // Read a new instance from the training data
        // NOTE that we didn't use memory port to read the parameters
        const digit instance = training_data[j][i];
        // Update the KNN set
        update_knn(sample, instance, knn_set[j]);
      }
    }

    // Compute the final output
    result = knn_vote( knn_set );

    result_64 =(sc_uint<64>) result;
    break;
    }
    case 3:
    {
        //int addr=(int) din_64;
        int i = (int)din_64;
        int j = (int)din2_64 ;
        result_64 = (sc_uint<64>)training_data[i][j];
        break;
    }
    }

    //write back to the rocket chip
    {
          HLS_DEFINE_PROTOCOL("Write to the Rocket_chip");
          core_resp_valid_o = 1;
          core_resp_rd_o.write(ds);
          core_resp_data_o.write(result_64);

          do {
              wait();
          }while(!core_resp_ready_i);
          cc_busy_o.write(0);
          core_resp_valid_o = 0;
          wait();

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
//

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

