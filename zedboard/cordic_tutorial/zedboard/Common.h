#ifndef COMMON_H
#define COMMON_H

#include <string>
#include <cstdlib>
#include <assert.h>

#include "Typedefs.h"

// Returns the repo's root dir or exits
std::string get_root_dir();

// We encode negative to -1, positive to 0
template<typename T>
Bit sgn(const T x) {
  #pragma HLS INLINE
  return (x < 0) ? -1 : 0;
}

// Special multiplication involving a binary variable
template<typename T>
T conv_mul(T in, Bit neg) {
  #pragma HLS INLINE
  return (neg!=0) ? (T)(-in) : in;
}

#endif
