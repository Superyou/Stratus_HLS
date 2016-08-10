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

  //variable for storing the address of training_data[0][0], assuming that the array are saved continuously in the cache
  sc_uint <64> din_64; //the data read from the rocket chip
  sc_uint <64> din2_64;
  input_t sample;
  output_t result;
  sc_uint <40> Addr;
  sc_uint <5> ds;
  sc_uint <7>  funct;
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

          // store the num of the opcode
          funct = core_cmd_inst_funct_i.read();
          //read the input data from the register rs1
          din_64 = core_cmd_rs1_i.read();
          din2_64 = core_cmd_rs1_i.read();
          // store the destination register id if exist
          ds = core_cmd_inst_rd_i.read();
          // store whether destination teg exist
          xd = core_cmd_inst_xd_i.read();
          // set cc_busy to 1 to prevent sending other cmd from rocket chip
          cc_busy_o.write(1);

          wait();

          core_cmd_ready_o.write(0);

    }

    //cout <<"start building training_set"<<endl;

    // defined in the digitrec.h
    HLS_SEPARATE_ARRAY(training_set);

    switch (funct)
    {
        // to do the knn training using training_set
        case 1: {

        //cout<<"It is case 1 : opcode ="<<opcode<<endl;
        sample = (digit) din_64;
        /*
        // check whether training_set is equals to training_data: For debug
        int sum =0 ;

         *for (int i=0;i<10;++i)
            for(int j=0;j<TRAINING_SIZE;++j)
                if (training_set[i][j]!=training_data[i][j]) {
                    cout<<"for i="<<i<<"j="<<j<< "training_set="<<training_set[i][j]<<" vs trining_data="<<training_data[i][j]<<endl;
                    sum=sum+1;}
        cout << "********************************  SUM = "<<sum<<" ***************************************"<<endl;
        */

        // This array stores K minimum distances per training set
        bit6 knn_set[10][K_CONST];

        HLS_SEPARATE_ARRAY(knn_set);

         // Initialize the knn set
         for ( int i = 0; i < 10; ++i )
           for ( int k = 0; k < K_CONST; ++k )
              //Note that the max distance is 49
               knn_set[i][k] = 50;

            for ( int i = 0; i < TRAINING_SIZE; ++i ) {
              HLS_PIPELINE_LOOP(HARD_STALL, 1, "pipeline_image_input");
              for ( int j = 0; j < 10; j++ ) {

                // UNROLL pragma with user-defined macro
                HLS_UNROLL_LOOP(COMPLETE, UNROLL_FACTOR, "unroll_digits");



                // Read a new instance from the training set
                digit training_instance = training_set[j][i];

                // Update the KNN set
                update_knn(sample, training_instance, knn_set[j]);
              }
            }

            // Compute the final output
            result = knn_vote( knn_set );
            result_64 = (sc_uint<64>) result;

            //cout<<"result ="<<result<<" vs "<<result_64<<endl;

            break;
        }

        // To prefetch the parameters
        case 2: {
            // to prefetch sequentially
            HLS_UNROLL_LOOP(OFF, "no unroll");

            //cout<<"It is case 2 : opcode ="<<opcode<<endl;

            Addr = (sc_uint<40>) din_64;
            sc_uint<40> now_Addr;

            for (int i=0; i < TRAINING_SIZE; ++i)
            {
                // to use tmp to save the num i instance of each data_set_j and pase the 10-set data to training_set at the same time
                digit tmp[10];
                // map to reg bank and separated
                HLS_MAP_TO_REG_BANK(tmp);
                HLS_SEPARATE_ARRAY(tmp);

                for (int j=0; j < 10 ;++j)
                {
                    digit instance;
                    sc_uint <10> jj=j;
                    // culcate the addr for training_data[j][i]
                    now_Addr = Addr + (j*TRAINING_SIZE +i)*8;


                    {
                        HLS_DEFINE_PROTOCOL("Send request & Load data from the Cache for 1800*10 times");
                        //read param from the memory using mem interface
                        mem_req_addr_o.write(now_Addr);
                        mem_req_valid_o.write(1);
                        mem_req_cmd_o.write(0x0000);
                        mem_req_typ_o.write(3);
                        mem_req_tag_o.write(jj);

                        do {
                            wait();
                        }while(!mem_req_ready_i);

                        mem_req_valid_o.write(0);

                        // check whether the tag is correct
                        while(!mem_resp_valid_i || !(mem_resp_tag_i == jj))
                        {
                            wait();
                        }

                        instance = mem_resp_data_i.read();

                        wait();
                        //cout << "training_set["<<j<<"]["<<i<<"] = "<<instance<<endl;

                    }
                   //store instance into tmp array first
                    tmp[j] = instance;
                }
                for (int ii=0;ii<10;++ii)
                {
                    HLS_UNROLL_LOOP(ON,"ii LOOP");
                    // using unroll loop to pass tmp datas to training_set at same time
                    training_set[ii][i]=tmp[ii];
                }

            }
            //cout<<"end of case 2"<<endl;

            break;
        }
/*
        case 3: {
        // to prefetch sequentially

        //cout<<"It is case 2 : opcode ="<<opcode<<endl;

        digit instance;
        Addr = (sc_uint<40>) din_64;
        int x = (int) din2_64;
        int i =x/TRAINING_SIZE;
        int j = x-i*TRAINING_SIZE;
        sc_uint<10> jj=(sc_uint<10>)j;
        {
            HLS_DEFINE_PROTOCOL("Send request & Load data from the Cache for 1800*10 times");
            //read param from the memory using mem interface
            mem_req_addr_o.write(Addr);
            mem_req_valid_o.write(1);
            mem_req_cmd_o.write(0x0000);
            mem_req_typ_o.write(3);
            mem_req_tag_o.write(jj);

            do {
                wait();
            }while(!mem_req_ready_i);

            mem_req_valid_o.write(0);

            // check whether the tag is correct
            while(!mem_resp_valid_i || !(mem_resp_tag_i == jj))
            {
                wait();
            }

            instance = mem_resp_data_i.read();

            wait();
            //cout << "training_set["<<j<<"]["<<i<<"] = "<<instance<<endl;

        }

        training_set[i][j] = instance;


        //cout<<"end of case 2"<<endl;

        break;
        }
*/
    }




    {
          HLS_DEFINE_PROTOCOL("Write to the Rocket_chip");
          if (xd) {
              // send resp_valid to 1
              core_resp_valid_o = 1;
              // send result back to the destination reg
              core_resp_rd_o.write(ds);
              core_resp_data_o.write(result_64);

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


