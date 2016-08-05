//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#ifndef _DEFINES_H_
#define _DEFINES_H_
#include <string>

#define	COEFFS	   (coeffs.read().table)

#define TAPS		8

#include "typedefs.h"

typedef sc_uint<64> input_t;
typedef sc_uint<64> output_t;


struct CoeffTable {
    sc_uint<8> table[TAPS];
      CoeffTable() {}

    CoeffTable( const CoeffTable& obj ) {
        copy(obj);
    }

      CoeffTable & operator=(  const CoeffTable & obj ) {
          copy(obj);
          return *this;
      }
      bool operator==( const CoeffTable & obj ) {
		  for(unsigned i = 0; i < TAPS; i++)
			  if (table[i] != obj.table[i])
				  return false;
		  return true;
     }
    void copy( const CoeffTable & obj ) {
		  for(unsigned i = 0; i < TAPS; i++)
			  table[i] = obj.table[i];
     }
};
inline void sc_trace( sc_trace_file* tf, const CoeffTable & obj, const std::string& n )
{
	  for(unsigned i = 0; i < TAPS; i++)
		  sc_trace( tf, obj.table[i], n );
};
inline ostream & operator << ( ostream& os, const CoeffTable  obj )
{
	  for(unsigned i = 0; i < TAPS; i++)
			os << " " << obj.table[i];
    return os;
};
inline istream & operator >> ( istream& is, CoeffTable & obj )
{
    if (!is.get() || !is.good()) return is;
	  for(unsigned i = 0; i < TAPS; i++)
			is >>  obj.table[i];
    while (is.good() && (is.get() != '\n'));
    return is;
}

#endif // _DEFINES_H_
