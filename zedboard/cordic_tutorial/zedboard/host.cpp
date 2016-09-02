#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<math.h>
#include<assert.h>

#include<iostream>
#include<fstream>

#include "host.h"
#include "timer.h"





// used to generate test data
unsigned simple_hash(unsigned x) {
  unsigned temp = (((x)*(x+3)*(x+11)) % 47);
  return temp ^ (temp >> 2) ^ (temp >> 4) ^ (temp >> 6) & 1;
}

//------------------------------------------------------------------------
// For an array of ap_int's, sets/gets the bit at bit_idx
// calculated from the start of the array to val
//------------------------------------------------------------------------
// CHANGED
void set_bit(unsigned i, const Address w, unsigned bit_idx, Bit val) {
// END
  // CHANGED
  Word W_temp;
  if (i==0)
    W_temp = param_mem[w+0];
  else if (i==1)
    W_temp = data_mem_i[w+0];  
  else if (i==2)
    W_temp = data_mem_o[w+0];    
  else
    cerr << "ERROR: no memory to write to" << endl;

  unsigned W = W_temp.length();
  // END
  
  Address idx = bit_idx / W;
  Address offset = bit_idx % W;
  
  // CHANGED
  Word val_temp;
  if (i==0)
    val_temp = param_mem[w+idx];
  else if (i==1)
    val_temp = data_mem_i[w+idx];
  else if (i==2)
    val_temp = data_mem_o[w+idx];
  else
    cerr << "ERROR: no memory to write to" << endl;
  
  val_temp[offset] = val;

  if (i==0)
    param_mem[w+idx] = val_temp;
  else if (i==1)
    data_mem_i[w+idx] = val_temp;
  else if (i==2)
    data_mem_o[w+idx] = val_temp;
  else
    cerr << "ERROR: no memory to write to" << endl;
  // END
}

void print_bits3d(unsigned i, const Address w, unsigned M, unsigned S, unsigned R, unsigned C) {
  for (unsigned m = 0; m < M; ++m) {
    if (i==0)
      print_bits(0, w, m*S*S, S, R, C);    
    else if (i==1)
      print_bits(1, w, m*S*S, S, R, C);
    else if (i==2)
      print_bits(2, w, m*S*S, S, R, C);
    else if (i==3)
      print_bits(3, w, m*S*S, S, R, C);
    else
      cerr << "ERROR: no memory to write to" << endl;
    printf ("--%u--\n", m+1);
  }
}

void tb::print_bits(unsigned i, const Address w, unsigned bit_offset, unsigned S, unsigned R, unsigned C) {
  R = (R >= S) ? S : R;
  C = (C >= S) ? S : C;
  for (unsigned r = 0; r < R; ++r) {
    for (unsigned c = 0; c < C; ++c){
      std::cout.width(2);
      if (i==0)
        std::cout << get_bit(0, 0, bit_offset+r*S+c) << " ";
      else if (i==1)
        std::cout << get_bit(1, 0, bit_offset+r*S+c) << " ";
      else if (i==2)
        std::cout << get_bit(2, 0, bit_offset+r*S+c) << " ";
      else if (i==3)
        std::cout << get_bit(3, 0, bit_offset+r*S+c) << " ";
      else 
        cerr << "ERROR: no memory to write to" << endl;
    }
    printf ("\n");
  }
}

Bit tb::get_bit(unsigned i, const Address w, unsigned bit_idx) {
  Word W_temp;
  if (i==0)
    W_temp = param_mem[w+0];
  else if (i==1)
    W_temp = data_mem_i[w+0];
  else if (i==2)
    W_temp = data_mem_o[w+0];
  else if (i==3)
    W_temp = param_mem3[w+0];
  else if (i==4)
    W_temp = data_mem_i3[w+0];
  else
    cerr << "ERROR: no memory to write to" << endl;
  
  unsigned W = W_temp.length();
  
  Address idx = bit_idx / W;
  Address offset = bit_idx % W;
  Word result_temp;

  if (i==0)
    result_temp = param_mem[w+idx];
  else if (i==1)
    result_temp = data_mem_i[w+idx];
  else if (i==2)
    result_temp = data_mem_o[w+idx];
  else if (i==3)
    result_temp = param_mem3[w+idx];
  else if (i==4)
    result_temp = data_mem_i3[w+idx];
  else
    cerr << "ERROR: no memory to write to" << endl;
  
  Bit result = (Bit)result_temp[offset];
  return result;
}

template<typename T>
void tb::print_mat(T in[], unsigned S, unsigned R, unsigned C) {
  R = (R >= S) ? S : R;
  C = (C >= S) ? S : C;
  for (unsigned r = 0; r < R; ++r) {
    for (unsigned c = 0; c < C; ++c) {
      std::cout.width(4);
      std::cout << in[r*S+c] << " ";
    }
    printf ("\n");
  }
}

//------------------------------------------------------------------------
// Padded convolution
//------------------------------------------------------------------------
template<typename OutType>
void tb::padded_conv(const Address v, const Address w, OutType out[], unsigned M, unsigned S) {
  for (int r = 0; r < S; ++r) {
  for (int c = 0; c < S; ++c) {
    out[r*S + c] = 0;
  }}

  for (int m = 0; m < M; ++m) {
    for (int r = 0; r < S; ++r) {
    for (int c = 0; c < S; ++c) {
      OutType res = 0;
      for (int kr = 0; kr < K; ++kr) {
      for (int kc = 0; kc < K; ++kc) {
        TwoBit pix = 0;
        int _r = r+kr-K/2;
        int _c = c+kc-K/2;
        if (_r >= 0 && _c >= 0 && _r < S && _c < S)
          pix = get_bit(4, v, m*S*S+_r*S+_c) == 0 ? 1 : -1;

        Address kaddr = m/7;
        IdxType koff = m%7;
        Bit k = param_mem3[w+kaddr][koff*K*K + (2-kr)*K + (2-kc)];

        res += (k!=0) ? (TwoBit)(-pix) : pix;
      } }
    out[r*S + c] += res;
    } }
  }
}

template<unsigned M, unsigned S>
// CHANGED
void tb::test_conv_layer_random(
    const Address w,
    const Address kh
) {
// END
  const sc_uint<2> width_mode = (S==8) ? 0 : (S==16) ? 1 : 2;

  printf ("#### Testing convolution with image size %u ####\n", S);

  // generate the input data
  for (unsigned m = 0; m < M; ++m) {
    for (unsigned r = 0; r < S; ++r) {
      for (unsigned c = 0; c < S; ++c) {
        // CHANGED
        set_bit(1, 0, m*S*S+r*S+c, (Bit)simple_hash(m*S*S+r*S+c));
        // END
  }  }  }

  DB(4,
    printf ("*data*:\n");
    print_bits3d(1, 0, M, S, 8,S);
    printf ("*params*:\n");
    print_bits3d(0, w, M, K, K,K);
  );

  // run
  
  sample_sent_time = sc_time_stamp();

  addr_w_dout.put(w);
  addr_kh_dout.put(kh);
  n_inputs_dout.put(M);
  width_mode_dout.put(width_mode);
  do_max_pool_dout.put(0);
}

////
// Convert a time in simulation time units to clock cycles
////
int tb::clock_cycle(sc_time time)
{
    sc_clock *clk_p = DCAST < sc_clock * >(clk.get_interface());
    sc_time clock_period = clk_p->period(); // get period from the sc_clock object.
    return (int) (time / clock_period);

}

//----------------------------------------------------------------------------------------------------------------------


//--------------------------------------
// Compute absolute value of a double
//--------------------------------------
double abs_double(double var)
{
    return ( var < 0 ) ? -var : var;
}

//--------------------------------------
// Compute absolute value of a double
//--------------------------------------
double RMSE(double total_error)
{
    return sqrt( total_error / (NUM_DEGREE - 1) );
}

//--------------------------------------
// main function
//--------------------------------------
int main(int argc, char** argv)
{
  // Open channels to the FPGA board.
  // These channels appear as files to the Linux OS
  int fdr = open("/dev/xillybus_read_32", O_RDONLY);
  int fdw = open("/dev/xillybus_write_32", O_WRONLY);

  // Check that the channels are correctly opened
  if ((fdr < 0) || (fdw < 0)) {
    fprintf (stderr, "Failed to open Xillybus device channels\n");
    exit(-1);
  }


  // cos output
  double ans = 0;

  // sin & cos calculated by math.h
  double m_an = 0.0;

  // Error terms
  double err_ratio = 0.0;
  double accum_err = 0.0;


  // arrays to store the output
  double array[NUM_DEGREE];


  int nbytes;
  Timer timer("BNN fpga");

  timer.start();
/*
  //----------------------------------------------------------------------
  // In each iteration send one value to the module and read the result
  //----------------------------------------------------------------------
  for (int i = 1; i < NUM_DEGREE; ++i) {
    radian = i * M_PI / 180;

    // Convert double value to fixed-point representation
    theta_type theta(radian);

    // Convert fixed-point to int64
    bit64_t theta_i;
    theta_i(theta.length()-1,0) = theta(theta.length()-1,0);
    int64_t input = theta_i;

    // Send bytes through the write channel
    // and assert that the right number of bytes were sent
    nbytes = write (fdw, (void*)&input, sizeof(input));
    assert (nbytes == sizeof(input));

    // Receive bytes through the read channel
    // and assert that the right number of bytes were recieved
    int64_t c_out, s_out;
    nbytes = read (fdr, (void*)&c_out, sizeof(c_out));
    assert (nbytes == sizeof(c_out));
    nbytes = read (fdr, (void*)&s_out, sizeof(s_out));
    assert (nbytes == sizeof(s_out));
    
    // Convert int64 to fixed point
    bit64_t c_i = c_out;
    bit64_t s_i = s_out;
    c(c.length()-1,0) = c_i(c.length()-1,0);
    s(s.length()-1,0) = s_i(s.length()-1,0);

    // Store to array
    c_array[i] = c;
    s_array[i] = s;
  }
  */
  
  for (int i = 1; i < NUM_DEGREE; ++i) {
    
    int32_t input = i;

    // Send bytes through the write channel
    // and assert that the right number of bytes were sent
    nbytes = write (fdw, (void*)&input, sizeof(input));
    assert (nbytes == sizeof(input));

    // Receive bytes through the read channel
    // and assert that the right number of bytes were recieved
    int32_t output;
    nbytes = read (fdr, (void*)&output, sizeof(output));
    assert (nbytes == sizeof(output));

    // Store to array
    array[i] = output ;
  }
  

  timer.stop();

  //------------------------------------------------------------ 
  // Check results
  //------------------------------------------------------------ 
  for (int i = 1; i < NUM_DEGREE; ++i) {
    // Load the stored result
    ans = array[i];

    m_an = i;

    
    // Calculate normalized error
    err_ratio = ( abs_double( (double)ans - m_an) / (m_an) ) * 100.0;
    
    // Accumulate error ratios
    accum_err += err_ratio * err_ratio;
  }

  //------------------------------------------------------------ 
  // Write out root mean squared error (RMSE) of error ratios
  //------------------------------------------------------------ 
  // Print to screen
  std::cout << "#------------------------------------------------\n"
            << "Overall_Error_Test = " << RMSE(accum_err) << "\n"
            << "#------------------------------------------------\n";

  // Clean up
  close(fdr);
  close(fdw);

  return 0;
}
