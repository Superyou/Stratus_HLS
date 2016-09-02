//=========================================================================
// cordic_test.cpp
//=========================================================================
// @brief: A C++ test bench (TB) for validating the sine & cosine functions
//         implemented using CORDIC.
/* @desc: 
   1. This TB generates angles between [1, NUM_DEGREE).
   2. It calculates the difference (or errors) between the results from
      CORDIC-based sin/cos with those from standard math library in <math.h>.
   3. All results are logged in the file out.dat for debugging purposes.
   4. The final cumulative errors are printed.
*/

#include <math.h>
#include <hls_stream.h>
#include <iostream>
#include <fstream>

#include "cordic.h"

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
// main function of TB
//--------------------------------------
int main(int argc, char** argv)
{
  // sin output
  double ans = 0;
  // cos output

  // sin & cos calculated by math.h
  double m_an = 0.0;

  // Error terms
  double err_ratio;
  double accum_err;

  // arrays to store the output
  double array[NUM_DEGREE];

  // HLS streams for communicating with the cordic block
  //hls::stream<bit32_t> cordic_in;
  hls::stream<bit32_t> cordic_out;

  //------------------------------------------------------------ 
  // Send data to CORDIC sim
  //------------------------------------------------------------ 
  for (int i = 1; i < NUM_DEGREE; i++) {

    
    bit32_t input = i;


    // Send both words to the HLS module
   // cordic_in.write( input );
    //cordic_in.write( input+1 );
  }

  //------------------------------------------------------------ 
  // Execute CORDIC sim and store results
  //------------------------------------------------------------ 
  for (int i = 1; i < NUM_DEGREE; i++) {
    // Run the HLS function 
    dut( cordic_out );

    // Read the two 32-bit cosine output words, low word first
    bit32_t output;
    output = cordic_out.read();

    
    // Store to array
    array[i] = output;
  }

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
    std::cout << "ans = "<< ans <<" m_an = "<<m_an<<"\n";
  }

  //------------------------------------------------------------ 
  // Write out root mean squared error (RMSE) of error ratios
  //------------------------------------------------------------ 
  // Print to screen
  std::cout << "#------------------------------------------------\n"
            << "Overall_Error_Test = " << RMSE(accum_err) << "\n"
            << "#------------------------------------------------\n";


  return 0;
}
