#ifndef HOST_H
#define HOST_H

#include "Typedefs.h"

// Limit angles to 90 degree.
const int NUM_DEGREE = 90;

  public:
    // Declare clock and reset ports
    sc_in_clk clk;
    sc_out<bool> rst_out; // The source thread drives rst_out.
    sc_in<bool> rst_in; // For sink thread. Connected to rst_out.
  
    // Declare modular interface ports  

    MY_RAM::port< ioConfig, Word > param_mem;
    MY_RAM::port< ioConfig, Word > param_mem3;
    MY_RAM::port< ioConfig, Word > data_mem_i;
    MY_RAM::port< ioConfig, Word > data_mem_i3;    
    MY_RAM::port< ioConfig, Word > data_mem_o;
    MY_RAM::port< ioConfig, Word > data_mem_o3;


    unsigned simple_hash(unsigned x);
    void set_bit(unsigned i, const Address w, unsigned bit_idx, Bit val);
    void print_bits3d(unsigned i, const Address w, unsigned M, unsigned S, unsigned R, unsigned C);
    void print_bits(unsigned i, const Address w, unsigned bit_offset, unsigned S, unsigned R, unsigned C);
    Bit get_bit(unsigned i, const Address w, unsigned bit_idx);
    template<typename T>
    void print_mat(T in[], unsigned S, unsigned R, unsigned C);  
    template<typename OutType>
    void padded_conv(const Address v, const Address w, OutType out[], unsigned M, unsigned S);
    template<unsigned M, unsigned S>
    void test_conv_layer_random(
        //ConvSum out[OUT_SIZE],
        const Address w,
        const Address kh
    );
    template<unsigned M, unsigned S>
    void check_conv(const Address w);

    int clock_cycle(sc_time time);
  



#endif
