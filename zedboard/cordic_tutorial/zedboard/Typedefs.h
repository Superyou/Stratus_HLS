#ifndef TYPEDEFS_H
#define TYPEDEFS_H

#include <cynw_fixed.h>

//#define USE_FLOAT

#ifdef USE_FLOAT

  typedef float InputFixed;

  // Types for weights
  typedef sc_int<1> Bit;
  typedef sc_int<2> TwoBit;

  typedef float KType;
  typedef float HType;

  typedef float NormOutput;
  typedef sc_int<14> ConvOutput;

#else

  // Quantized 32-bit input images in the range [-1,1]
  typedef cynw_fixed<32,2, SC_RND> InputFixed;

  // Types for weights
  typedef sc_int<1> Bit;
  typedef sc_int<2> TwoBit;

  typedef cynw_fixed<16,2> KType;
  typedef cynw_fixed<16,4> HType;

  typedef cynw_fixed<16,5> NormOutput;
  typedef sc_int<14> ConvOutput;

#endif

#define BLK_SEL(wrd, blk_siz, blk_idx) (wrd((blk_idx+1)*blk_siz-1, blk_idx*blk_siz))

const unsigned MAX_INPUTS = 512;
const unsigned WORD_SIZE = 64;
const unsigned BYTE_SIZE = 8;
const unsigned K = 3;
const unsigned MEM_SIZE = MAX_INPUTS*16 / WORD_SIZE;
const unsigned DMEM_SIZE = MAX_INPUTS*32*32 / WORD_SIZE;

const unsigned MAX_WIDTH = 32;
const unsigned LINES_PER_VSHIFT = 1; // do not change

const unsigned INPUT_TILE_SIZE = WORD_SIZE;
const unsigned INPUT_TILE_BYTES = INPUT_TILE_SIZE / BYTE_SIZE;
const unsigned INPUT_TILE_WORDS = INPUT_TILE_SIZE / WORD_SIZE;

const unsigned BYTES_PER_WORD = WORD_SIZE / BYTE_SIZE;

const unsigned CONVOLVERS = 1;
const unsigned CONV_ROWS = 3;
const unsigned CONV_COLS = 10;
const unsigned CONV_BANKS = 4;

const unsigned OUT_SIZE = 32*32;

typedef sc_int<WORD_SIZE> Word;
typedef sc_uint<16> Address;
typedef sc_int<12> ConvSum;
typedef sc_int<5> ConvOut;
typedef sc_uint<10> IdxType;

#endif
