//see LICENSE for license
// The following is a RISC-V program to test the functionality of the
// sample RoCC accelerator.
// Compile with riscv-gcc sample-rocc.c

#include <assert.h>
#include <stdio.h>
#include <stdint.h>
#include "/work/zhang/users/yw777/vsim/training_data.h"
//#include "../../Stratus_HLS/tb.cc"
//#include "../../Stratus_HLS/tb.h"
//#include "../../Stratus_HLS/typedefs.h"

#define training_data_row_size 10
#define training_data_col_size 1800

//ifstream stim_file;
//ofstream resp_file;

int main() {
  
  long long dat;
  long long result;
  long long x_in;
  long long y_in;

  printf("pass opcode =2 to the accelerator\n");
  for (int i=0;i<10;++i)
	for(int j=0;j<2;++j) 
		printf("i=%d j=%d training_data address =%lld\n",i,j,&training_data[i][j]);
		//printf("i=%d j=0 training_data address =%llx\n",i,&training_data[i][0]);

  asm volatile ("custom0 %0, %[x], %[y], 2"  :  "=r"(result) : [x]"r"( & training_data[0][0] ), [y]"r"(y_in));
  printf("pass address 0 0 %llx finish storage!\n",&training_data[0][0]);

  x_in = 0x3041060800;
  asm volatile ("custom0 %0, %[x], %[y], 1"  :  "=r"(result) : [x]"r"(x_in), [y]"r"(y_in));
  printf("pass %llx to the accelerator, the result is %llu\n",x_in, result);
  
  for (int i=0;i<10;++i)
	for(int j=0;j<2;++j) 
		printf("i=%d j=%d training_data address =%lld\n",i,j,&training_data[i][j]);
		//printf("i=%d j=0 training_data address =%llx\n",i,&training_data[i][0]);
  return 0;

  printf("Start to pass dat from .stimulus.dat\n");
  
  FILE* fp;

  int cnt=0;
  fp = freopen("/home/staff/yw777/Stratus_HLS/digit_recognition/.stimulus.dat", "r",stdin);
  //fout = freopen(".golden.dat","w",stdout);



  if(fp == NULL) 
  {
      printf("Error in opening file\n");
      return(-1);
  }
  printf("finish freopen\n");
/*
  x_in = 0xe3e6cf9e00;
  
  //printf("pass in opcode = 1, rs1_data = 0x41c0830408 into digitrec\n");
  //asm volatile ("custom0 %0, %[x], %[y], 2"  :  "=r"(result) : [x]"r"(x_in), [y]"r"(y_in));
  
  printf("pass in %llx into rs1_data\n", x_in);
  asm volatile ("custom0 %0, %[x], %[y], 1"  :  "=r"(result) : [x]"r"(x_in), [y]"r"(y_in));
  printf("the result is %lld\n", result);
*/
  /*for (int i=0;i<10;++i)
    for(int j=0;j<1800;++j) {
      long long tmp = i*1800+j;
      asm volatile ("custom0 %0, %[x], %[y], 3"  :  "=r"(result) : [x]"r"(tmp), [y]"r"(y_in));
      printf("i=%d j=%d tmp=%lld training_data result =%llx\n",i,j,tmp,result);
    }
*/
  printf("finished\n");


  while(1) {
    scanf("%llx",& dat);
    cnt = cnt+1;
    if (feof(fp)) {
      break;
    }
    asm volatile ("custom0 %0, %[x], %[y], 1"  :  "=r"(result) : [x]"r"(dat), [y]"r"(y_in));
    printf("For i = %d , input data is = %llx and result is = %lld\n",cnt,dat,result);
  }
	
  fclose(fp);
  //fclose(fout);

  return 0;

  /*
  unsigned long result;
  unsigned long x_in;
  unsigned long y_in;
  */
  //int size_r = training_data_row_size;
  //int size_c = training_data_col_size;
  
  //printf("%u", (0x2041020c00)/(256));
  
  //for (int r = 0; r < size_r; r++) {
  //  for (int c = 0; c < 20; c++) {
  //    printf("%u ", training_data[r][c]);
  //    //cout << training_data[r][c];
  //  }
  //  printf("\n");
  //}
  
  //open_stimulus_file();
  //bool eof = false;
  //while (eof == false) {
  //  input_t value = read_stimulus_value(eof);
  //  sc_uint<64> vv = (sc_uint<64>) value;
  //  printf("%u", vv);
  //}
  
  //unsigned long result;
  //unsigned long x_in;
  //unsigned long y_in;
  
  //asm volatile ("fence");
  //asm volatile ("custom0 %0, %[x], %[y], 2"  :  "=r"(result) : [x]"r"(&training_data[0][0]), [y]"r"(y_in));
  //printf("The initial address passed into the accelerator\n");
  /*
  do {
  
    
    unsigned int a[5] = {1,2,3,4,5};
    unsigned int b[5] = {1,2,4,8,16};
    unsigned int c[5];
    
    unsigned int ld_result_1;
    unsigned int ld_result_2;
    unsigned int add_result;
    unsigned int store_result;
    
    for (int i = 1; i <= 5; i++) 
    { 
      printf("set %d\n", i);
      asm volatile ("fence");
      asm volatile ("custom0 %0, %[x], %[y], 1"  :  "=r"(ld_result_1) : [x]"r"(0), [y]"r"(&a[i-1]));
      printf("data loaded from address %d is %d\n", &a[i-1], ld_result_1);
      
      asm volatile ("fence");
      asm volatile ("custom0 %0, %[x], %[y], 1"  :  "=r"(ld_result_2) : [x]"r"(0), [y]"r"(&b[i-1]));
      printf("data loaded from address %d is %d\n", &b[i-1], ld_result_2);
      
      asm volatile ("fence");
      asm volatile ("custom0 %0, %[x], %[y], 2"  :  "=r"(add_result) : [x]"r"(ld_result_1), [y]"r"(ld_result_2));
      printf("add %d to %d, the result is %d\n", ld_result_1, ld_result_2, add_result);
      
      asm volatile ("fence");
      asm volatile ("custom0 %0, %[x], %[y], 0"  :  "=r"(store_result) : [x]"r"(add_result), [y]"r"(&c[i-1]));
      printf("stored data %d into address %d, mem_resp_store_data is %d\n", add_result, &c[i-1], store_result);
    }
  }while(0);

  return 0;
  */
}
