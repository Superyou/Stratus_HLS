//===========================================================================
// vv_add.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef vv_add_H
#define vv_add_H
#include <cynw_p2p.h>

SC_MODULE (vv_add)
{
public:
  // Declare the clock and reset ports
  sc_in_clk clk;
  sc_in < bool > rst;

  //modified for ROCC interface

  //control mode
  sc_out < bool > cc_busy_o;             //
  sc_out< bool > cc_interrupt_o;

  sc_in< bool > cc_status_i;
  sc_in< bool > cc_exception_i;
  sc_in< bool > cc_host_id_i;

  //Register mode
  sc_out< bool > core_cmd_ready_o;
  sc_in< bool > core_cmd_valid_i;
  sc_in < sc_uint<7> > core_cmd_inst_funct_i;
  sc_in < sc_uint<5> > core_cmd_inst_rs1_i;
  sc_in < sc_uint<5> > core_cmd_inst_rs2_i;

  sc_in<bool> core_cmd_inst_xd_i;     //set if destination reg exist
  sc_in<bool> core_cmd_inst_xs1_i;    //set if resource rs1 reg exist
  sc_in<bool> core_cmd_inst_xs2_i;    //set if resource rs2 reg exist
  sc_in <sc_uint<5> >  core_cmd_inst_rd_i;
  sc_in <sc_uint<7> > core_cmd_inst_opcode_i;     //custom instruction opcode may be used for several accerlerations
  sc_in <sc_uint<64> > core_cmd_rs1_i;
  sc_in <sc_uint<64> > core_cmd_rs2_i;

  sc_in<bool> core_resp_ready_i;
  sc_out<bool> core_resp_valid_o;
  sc_out <sc_uint<5> >  core_resp_rd_o;
  sc_out <sc_uint<64> > core_resp_data_o;

  //memory mode
  //for reqest
  sc_in<bool> mem_req_ready_i;
  sc_out<bool> mem_req_valid_o;
  sc_out <sc_uint<40> > mem_req_addr_o;
  sc_out <sc_uint<10> > mem_req_tag_o;
  sc_out <sc_uint<5> >  mem_req_cmd_o; //0x000 store 0x001 load
  sc_out <sc_uint<3> >  mem_req_typ_o; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
  sc_out<bool> mem_req_phys_o;
  sc_out <sc_uint<64> > mem_req_data_o; //store data

  //for response  can be read from the memory at any time

  sc_in<bool> mem_resp_valid_i;
  sc_in <sc_uint<40> >  mem_resp_addr_i;
  sc_in <sc_uint<10> >  mem_resp_tag_i;
  sc_in <sc_uint<5> >  mem_resp_cmd_i; //0x000 store 0x001 load
  sc_in <sc_uint<3> >  mem_resp_typ_i; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits

  sc_in <sc_uint<64> > mem_resp_data_i; //the data loaded from the em
  sc_in<bool> mem_resp_has_data_i;        //Set if the data field is valid in response
  sc_in <sc_uint<64> > mem_resp_data_word_bypass_i;   //bypassed to a read???
  sc_in <sc_uint<64> > mem_resp_store_data_i;         //return the data stored

  sc_in<bool> mem_resp_nack_i;  //unknow
  sc_in<bool> mem_resp_replay_i; //unknow

  sc_out <bool> io_autl_acquire_valid_o;
  sc_out <bool> io_in_1_acquire_ready_o;


  // Declare the input port and the output port.
  // The template specializations <input_t or output_t> configure the
  // modular interfaces to carry the desired datatypes.
  //cynw_p2p < digit, ioConfig >::in din; // The input port
  //cynw_p2p < bit4, ioConfig >::out dout;  // The output port

  SC_CTOR(vv_add):clk("clk"), rst("rst")
                    ,cc_exception_i("cc_exception_i")
                    ,cc_busy_o("cc_busy_o")
                    ,cc_interrupt_o("cc_interrupt_o")
    , cc_status_i("cc_status_i")
    , cc_host_id_i("cc_host_id_i")

    , core_cmd_ready_o("core_cmd_ready_o")
    , core_cmd_valid_i("core_cmd_valid_i")
    , core_cmd_inst_funct_i("core_cmd_inst_funct_i")
    , core_cmd_inst_rs1_i("core_cmd_inst_rs1_i")
    , core_cmd_inst_rs2_i("core_cmd_inst_rs2_i")

    , core_cmd_inst_xd_i("core_cmd_inst_xd_i")
    , core_cmd_inst_xs1_i("core_cmd_inst_xs1_i")
    , core_cmd_inst_xs2_i("core_cmd_inst_xs2_i")
    , core_cmd_inst_rd_i("core_cmd_inst_rd_i")
    , core_cmd_inst_opcode_i("core_cmd_inst_opcode_i")
    , core_cmd_rs1_i("core_cmd_rs1_i")
    , core_cmd_rs2_i("core_cmd_rs2_i")

    , core_resp_ready_i("core_resp_ready_i")
    , core_resp_valid_o("core_resp_valid_o")
    , core_resp_rd_o("core_resp_rd_o")
    , core_resp_data_o("core_resp_data_o")

    , mem_req_ready_i("mem_req_ready_i")
    , mem_req_valid_o("mem_req_valid_o")
    , mem_req_addr_o("mem_req_addr_o")
    , mem_req_tag_o("mem_req_tag_o")
    , mem_req_cmd_o("mem_req_cmd_o") //0x000 store 0x001 load
    , mem_req_typ_o("mem_req_typ_o") //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
    , mem_req_phys_o("mem_req_phys_o")
    , mem_req_data_o("mem_req_data_o") //store data

     //for response  can be read from the memory at any time
    , mem_resp_valid_i("mem_resp_valid_i")
    , mem_resp_addr_i("mem_resp_addr_i")
    , mem_resp_tag_i("mem_resp_tag_i")
    , mem_resp_cmd_i("mem_resp_cmd_i") //0x000 store 0x001 load
    , mem_resp_typ_i("mem_resp_typ_i") //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
    , mem_resp_data_i("mem_resp_data_i") //the data loaded from the em
    , mem_resp_has_data_i("mem_resp_has_data_i")       //Set if the data field is valid in response
    , mem_resp_data_word_bypass_i("mem_resp_data_word_bypass_i")   //bypassed to a read???
    , mem_resp_store_data_i("mem_resp_store_data_i")        //return the data stored

    , mem_resp_nack_i("mem_resp_nack_i")  //unknow
    , mem_resp_replay_i("mem_resp_replay_i") //unknow

    , io_autl_acquire_valid_o("io_autl_acquire_valid_o")
    ,io_in_1_acquire_ready_o("io_in_1_acquire_ready_o")

  {

      SC_CTHREAD(vv_addThread, clk.pos());
      reset_signal_is(rst, 1);

      // Connect the clk and rst signals to the modular interface ports
  }

protected:
  void vv_addThread();           // the thread function


};

//SC_MODULE(vv_add){
//  public:
//    // clock and reset
//    sc_in<bool> clk;
//    sc_in<bool> reset;
//    // input handshake
//    sc_out<bool> input_ready;
//    sc_in<bool> input_valid;
//    sc_in<digit> input_data;
//    // output handshake
//    sc_in<bool> output_ready;
//    sc_out<bool> output_valid;
//    sc_out<bit4> output_data;
//
//    // other port declarations go here
//    
//    SC_CTOR(vv_add){
//      SC_CTHREAD(vv_addThread, clk.pos());
//      reset_signal_is(reset, true);
//    }
//
//    // process method declaration
//    void vv_addThread();
//    void update_knn(digit test_inst, digit train_inst, bit6 min_distances[K_CONST]);
//    bit4 knn_vote(bit6 knn_set[10][K_CONST]);
//
//  protected:
//
//};

#endif
