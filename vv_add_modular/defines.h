//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#ifndef _DEFINES_H_
#define _DEFINES_H_
#include <string>


typedef sc_uint<64> input_t;
typedef sc_uint<64> output_t;

/*A series of input signals sent from the tb's source thread to the accelerator.
 *These signals can be written and only be rewritten in the source thread.*/
struct  SOURCE_TO_ACCEL {
    //Control mode
    bool  cc_status_i;
    bool  cc_exception_i;
    bool  cc_host_id_i;

    //Register mode
    bool  core_cmd_valid_i;
    sc_uint<7>  core_cmd_inst_funct_i;
    sc_uint<5>  core_cmd_inst_rs1_i;
    sc_uint<5>  core_cmd_inst_rs2_i;

    bool  core_cmd_inst_xd_i;     //set if destination reg exist
    bool  core_cmd_inst_xs1_i;    //set if resource rs1 reg exist
    bool  core_cmd_inst_xs2_i;    //set if resource rs2 reg exist
    sc_uint<5>   core_cmd_inst_rd_i;
    sc_uint<7>  core_cmd_inst_opcode_i;     //custom inclassion opcode may be used for several accerlerations
    sc_uint<64>  core_cmd_rs1_i;
    sc_uint<64>  core_cmd_rs2_i;

     SOURCE_TO_ACCEL() {}

     SOURCE_TO_ACCEL( const  SOURCE_TO_ACCEL& obj ) {
        copy(obj);
    }

        SOURCE_TO_ACCEL & operator=(  const   SOURCE_TO_ACCEL & obj ) {
          copy(obj);
          return *this;
      }
      bool operator==( const   SOURCE_TO_ACCEL & obj ) {


          if (cc_status_i != obj.cc_status_i) return false;
          if (cc_exception_i != obj.cc_exception_i) return false;
          if (cc_host_id_i != obj.cc_exception_i ) return false;

          if (core_cmd_valid_i != obj.core_cmd_valid_i) return false;
          if (core_cmd_inst_funct_i != obj.core_cmd_inst_funct_i) return false;
          if (core_cmd_inst_rs1_i != obj.core_cmd_inst_rs1_i) return false;
          if (core_cmd_inst_rs2_i != obj.core_cmd_inst_rs2_i) return false;
          if (core_cmd_inst_xd_i != obj.core_cmd_inst_xd_i) return false;
          if (core_cmd_inst_xs1_i != obj.core_cmd_inst_xs1_i) return false;
          if (core_cmd_inst_xs2_i != obj.core_cmd_inst_xs2_i) return false;
          if (core_cmd_inst_rd_i != obj.core_cmd_inst_rd_i) return false;
          if (core_cmd_inst_opcode_i != obj.core_cmd_inst_opcode_i) return false;
          if (core_cmd_rs1_i != obj.core_cmd_rs1_i) return false;
          if (core_cmd_rs2_i != obj.core_cmd_rs2_i) return false;


		  return true;
     }
    void copy( const    SOURCE_TO_ACCEL & obj ) {


          cc_status_i = obj.cc_status_i ;
          cc_exception_i = obj.cc_exception_i ;
          cc_host_id_i = obj.cc_exception_i  ;

          core_cmd_valid_i = obj.core_cmd_valid_i ;
          core_cmd_inst_funct_i = obj.core_cmd_inst_funct_i ;
          core_cmd_inst_rs1_i = obj.core_cmd_inst_rs1_i ;
          core_cmd_inst_rs2_i = obj.core_cmd_inst_rs2_i ;
          core_cmd_inst_xd_i = obj.core_cmd_inst_xd_i ;
          core_cmd_inst_xs1_i = obj.core_cmd_inst_xs1_i ;
          core_cmd_inst_xs2_i = obj.core_cmd_inst_xs2_i ;
          core_cmd_inst_rd_i = obj.core_cmd_inst_rd_i ;
          core_cmd_inst_opcode_i = obj.core_cmd_inst_opcode_i ;
          core_cmd_rs1_i = obj.core_cmd_rs1_i ;
          core_cmd_rs2_i = obj.core_cmd_rs2_i ;

     }
};

inline void sc_trace( sc_trace_file* tf, const    SOURCE_TO_ACCEL & obj, const std::string & n )
{

      sc_trace( tf, obj.cc_status_i, n+std::string(".cc_status_i"));
      sc_trace( tf, obj.cc_exception_i, n+std::string(".cc_exception_i"));
      sc_trace( tf, obj.cc_host_id_i , n+std::string(".cc_host_id_i"));

      sc_trace( tf, obj.core_cmd_valid_i, n+std::string(".core_cmd_valid_i"));
      sc_trace( tf, obj.core_cmd_inst_funct_i, n+std::string(".core_cmd_inst_funct_i"));
      sc_trace( tf, obj.core_cmd_inst_rs1_i, n+std::string(".core_cmd_inst_rs1_i"));
      sc_trace( tf, obj.core_cmd_inst_rs2_i, n+std::string(".core_cmd_inst_rs2_i"));
      sc_trace( tf, obj.core_cmd_inst_xd_i, n+std::string(".core_cmd_inst_xd_i"));
      sc_trace( tf, obj.core_cmd_inst_xs1_i, n+std::string(".core_cmd_inst_xs1_i"));
      sc_trace( tf, obj.core_cmd_inst_xs2_i, n+std::string(".core_cmd_inst_xs2_i"));
      sc_trace( tf, obj.core_cmd_inst_rd_i, n+std::string(".core_cmd_inst_rd_i"));
      sc_trace( tf, obj.core_cmd_inst_opcode_i, n+std::string(".core_cmd_inst_opcode_i"));
      sc_trace( tf, obj.core_cmd_rs1_i, n+std::string(".core_cmd_rs1_i"));
      sc_trace( tf, obj.core_cmd_rs2_i, n+std::string(".core_cmd_rs2_i"));



};

inline ostream & operator << ( ostream& os, const    SOURCE_TO_ACCEL  obj )
{
      os<<" "<<obj.cc_status_i ;
      os<<" "<< obj.cc_exception_i ;
      os<<" "<< obj.cc_exception_i  ;

      os<<" "<< obj.core_cmd_valid_i ;
      os<<" "<< obj.core_cmd_inst_funct_i ;
      os<<" "<< obj.core_cmd_inst_rs1_i ;
      os<<" "<< obj.core_cmd_inst_rs2_i ;
      os<<" "<< obj.core_cmd_inst_xd_i ;
      os<<" "<< obj.core_cmd_inst_xs1_i ;
      os<<" "<< obj.core_cmd_inst_xs2_i ;
      os<<" "<< obj.core_cmd_inst_rd_i ;
      os<<" "<< obj.core_cmd_inst_opcode_i ;
      os<<" "<< obj.core_cmd_rs1_i ;
      os<<" "<< obj.core_cmd_rs2_i ;

    return os;
};

inline istream & operator >> ( istream& is, SOURCE_TO_ACCEL & obj )
{
    if (!is.get() || !is.good()) return is;

     is >> obj.cc_status_i ;
     is >>  obj.cc_exception_i ;
     is >>  obj.cc_exception_i  ;

     is >>  obj.core_cmd_valid_i ;
     is >>  obj.core_cmd_inst_funct_i ;
     is >>  obj.core_cmd_inst_rs1_i ;
     is >>  obj.core_cmd_inst_rs2_i ;
     is >>  obj.core_cmd_inst_xd_i ;
     is >>  obj.core_cmd_inst_xs1_i ;
     is >>  obj.core_cmd_inst_xs2_i ;
     is >>  obj.core_cmd_inst_rd_i ;
     is >>  obj.core_cmd_inst_opcode_i ;
     is >>  obj.core_cmd_rs1_i ;
     is >>  obj.core_cmd_rs2_i ;

    while (is.good() && (is.get() != '\n'));
    return is;
}


/*Another input signal sent form the tb's sink thread to the accelerator.
 *The sink thread is only in charge of the core_resp_ready_i signal.
 *It tells the the accelerator whether the sink rocketchip is ready to receive the respond signal or not.*/
struct SINK_TO_ACCEL {

    bool  core_resp_ready_i;

     SINK_TO_ACCEL() {}

     SINK_TO_ACCEL( const  SINK_TO_ACCEL& obj ) {
        copy(obj);
    }

        SINK_TO_ACCEL & operator=(  const   SINK_TO_ACCEL & obj ) {
          copy(obj);
          return *this;
      }
      bool operator==( const   SINK_TO_ACCEL & obj ) {

          if(  core_resp_ready_i != obj.core_resp_ready_i) return false;

          return true;
     }
    void copy( const    SINK_TO_ACCEL & obj ) {

          core_resp_ready_i = obj.core_resp_ready_i ;
     }
};

inline void sc_trace( sc_trace_file* tf, const    SINK_TO_ACCEL & obj, const std::string & n )
{

      sc_trace( tf, obj.core_resp_ready_i, n+std::string(".core_resp_ready_i"));

};

inline ostream & operator << ( ostream& os, const    SINK_TO_ACCEL  obj )
{



      os<<" "<< obj.core_resp_ready_i ;

    return os;
};

inline istream & operator >> ( istream& is,    SINK_TO_ACCEL & obj )
{
    if (!is.get() || !is.good()) return is;

     is >>  obj.core_resp_ready_i ;

    while (is.good() && (is.get() != '\n'));
    return is;
}



/*A series of output signals sent from the accelerator to the rocket core.*/

struct  ACCEL_TO_ROCC {

    //modified for  ACCEL_TO_ROCC interface

    //control mode
    bool cc_busy_o;
    bool  cc_interrupt_o;

    //Register mode
    bool  core_cmd_ready_o;

    bool  core_resp_valid_o;
    sc_uint<5>   core_resp_rd_o;
    sc_uint<64> core_resp_data_o;

    //for io_signals which have to be set 0
    bool io_autl_acquire_valid_o;
    bool io_in_1_acquire_ready_o;

     ACCEL_TO_ROCC() {}

     ACCEL_TO_ROCC( const  ACCEL_TO_ROCC& obj ) {
        copy(obj);
    }

        ACCEL_TO_ROCC & operator=(  const   ACCEL_TO_ROCC & obj ) {
          copy(obj);
          return *this;
      }
      bool operator==( const   ACCEL_TO_ROCC & obj ) {


           if( cc_busy_o != obj.cc_busy_o) return false;
           if( cc_interrupt_o != obj.cc_interrupt_o) return false;

           if( core_cmd_ready_o != obj.core_cmd_ready_o) return false;

           if( core_resp_valid_o!= obj.core_resp_valid_o) return false;
           if( core_resp_rd_o!= obj.core_resp_rd_o) return false;
           if( core_resp_data_o!= obj.core_resp_data_o) return false;




           if( io_autl_acquire_valid_o!= obj.io_autl_acquire_valid_o) return false;
           if( io_in_1_acquire_ready_o!= obj.io_in_1_acquire_ready_o) return false;

          return true;
     }
    void copy( const    ACCEL_TO_ROCC & obj ) {


          cc_busy_o =obj.cc_busy_o;
          cc_interrupt_o =obj.cc_interrupt_o;

          core_cmd_ready_o =obj.core_cmd_ready_o;

          core_resp_valid_o=obj.core_resp_valid_o;
          core_resp_rd_o=obj.core_resp_rd_o;
          core_resp_data_o=obj.core_resp_data_o;


          io_autl_acquire_valid_o=obj.io_autl_acquire_valid_o;
          io_in_1_acquire_ready_o=obj.io_in_1_acquire_ready_o;
     }
};

inline void sc_trace( sc_trace_file* tf, const    ACCEL_TO_ROCC & obj, const std::string& n )
{

      sc_trace( tf, obj.cc_busy_o, n+std::string(".cc_busy_o"));
      sc_trace( tf, obj.cc_interrupt_o, n+std::string(".cc_interrupt_o"));

      sc_trace( tf, obj.core_cmd_ready_o, n+std::string(".core_cmd_ready_o"));

      sc_trace( tf, obj.core_resp_valid_o, n+std::string(".core_resp_valid_o"));
      sc_trace( tf, obj.core_resp_rd_o, n+std::string(".core_resp_rd_o"));
      sc_trace( tf, obj.core_resp_data_o, n+std::string(".core_resp_data_o"));


      sc_trace( tf, obj.io_autl_acquire_valid_o, n+std::string(".io_autl_acquire_valid_o"));
      sc_trace( tf, obj.io_in_1_acquire_ready_o, n+std::string(".io_in_1_acquire_ready_o"));

};
/*
inline void write( ACCEL_TO_ROCC &obj)
{
    obj.cc_busy_o.
}
*/

inline ostream & operator << ( ostream& os, const    ACCEL_TO_ROCC  obj )
{
      os<< " "<< obj.cc_busy_o;
      os<< " "<< obj.cc_interrupt_o;

      os<< " "<< obj.core_cmd_ready_o;

      os<< " "<< obj.core_resp_valid_o;
      os<< " "<< obj.core_resp_rd_o;
      os<< " "<< obj.core_resp_data_o;

      os<< " "<< obj.io_autl_acquire_valid_o;
      os<< " "<< obj.io_in_1_acquire_ready_o;

    return os;
};
inline istream & operator >> ( istream& is,    ACCEL_TO_ROCC & obj )
{
    if (!is.get() || !is.good()) return is;

      is >> obj.cc_busy_o;
      is >> obj.cc_interrupt_o;

      is >> obj.core_cmd_ready_o;

      is >> obj.core_resp_valid_o;
      is >> obj.core_resp_rd_o;
      is >> obj.core_resp_data_o;


      is >> obj.io_autl_acquire_valid_o;
      is >> obj.io_in_1_acquire_ready_o;

    while (is.good() && (is.get() != '\n'));
    return is;
};



/*A series of output signals sent from the tb's mem thread to the accelerator.
The are mainly the signals which are responsible for the memory responses.*/
struct  MEM_TO_ACCEL {


    bool  mem_req_ready_i;

    bool  mem_resp_valid_i;
    sc_uint<40 >  mem_resp_addr_i;
    sc_uint<10 >  mem_resp_tag_i;
    sc_uint<5 >  mem_resp_cmd_i; //0x000 store 0x001 load
    sc_uint<3 >  mem_resp_typ_i; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
    sc_uint<64 > mem_resp_data_i; //the data loaded from the em
    bool  mem_resp_has_data_i;        //Set if the data field is valid in response
    sc_uint<64 > mem_resp_data_word_bypass_i;   //bypassed to a read???
    sc_uint<64 > mem_resp_store_data_i;         //return the data stored

    bool  mem_resp_nack_i;  //unknow
    bool  mem_resp_replay_i; //unknow


     MEM_TO_ACCEL() {}

     MEM_TO_ACCEL( const  MEM_TO_ACCEL& obj ) {
        copy(obj);
    }

        MEM_TO_ACCEL & operator=(  const   MEM_TO_ACCEL & obj ) {
          copy(obj);
          return *this;
      }
      bool operator==( const   MEM_TO_ACCEL & obj ) {
          if(  mem_req_ready_i !=obj.mem_req_ready_i) return false;

          if(  mem_resp_valid_i != obj.mem_resp_valid_i) return false;
          if (  mem_resp_addr_i != obj.mem_resp_addr_i) return false;
          if (  mem_resp_tag_i != obj.mem_resp_tag_i) return false;
          if (  mem_resp_cmd_i != obj.mem_resp_cmd_i) return false;
          if (  mem_resp_typ_i != obj.mem_resp_typ_i) return false;
          if ( mem_resp_data_i != obj.mem_resp_data_i) return false;
          if ( mem_resp_has_data_i != obj.mem_resp_has_data_i) return false;
          if ( mem_resp_data_word_bypass_i != obj.mem_resp_data_word_bypass_i) return false;
          if ( mem_resp_store_data_i != obj.mem_resp_store_data_i) return false;

          if(  mem_resp_nack_i != obj.mem_resp_nack_i) return false;
          if(  mem_resp_replay_i != obj.mem_resp_replay_i) return false;

          return true;
     }
    void copy( const    MEM_TO_ACCEL & obj ) {

          mem_req_ready_i = obj.mem_req_ready_i ;

          mem_resp_valid_i = obj.mem_resp_valid_i ;
          mem_resp_addr_i = obj.mem_resp_addr_i ;
          mem_resp_tag_i = obj.mem_resp_tag_i ;
          mem_resp_cmd_i = obj.mem_resp_cmd_i ;
          mem_resp_typ_i = obj.mem_resp_typ_i ;
          mem_resp_data_i = obj.mem_resp_data_i ;
          mem_resp_has_data_i = obj.mem_resp_has_data_i ;
          mem_resp_data_word_bypass_i = obj.mem_resp_data_word_bypass_i ;
          mem_resp_store_data_i = obj.mem_resp_store_data_i ;

          mem_resp_nack_i = obj.mem_resp_nack_i ;
          mem_resp_replay_i = obj.mem_resp_replay_i ;
     }
};

inline void sc_trace( sc_trace_file* tf, const    MEM_TO_ACCEL & obj, const std::string & n )
{


      sc_trace( tf, obj.mem_req_ready_i, n+std::string(".mem_req_ready_i"));

      sc_trace( tf, obj.mem_resp_valid_i, n+std::string(".mem_resp_valid_i"));
      sc_trace( tf, obj.mem_resp_addr_i, n+std::string(".mem_resp_addr_i"));
      sc_trace( tf, obj.mem_resp_tag_i, n+std::string(".mem_resp_tag_i"));
      sc_trace( tf, obj.mem_resp_cmd_i, n+std::string(".mem_resp_cmd_i"));
      sc_trace( tf, obj.mem_resp_typ_i, n+std::string(".mem_resp_typ_i"));
      sc_trace( tf, obj.mem_resp_data_i, n+std::string(".mem_resp_data_i"));
      sc_trace( tf, obj.mem_resp_has_data_i, n+std::string(".mem_resp_has_data_i"));
      sc_trace( tf, obj.mem_resp_data_word_bypass_i, n+std::string(".mem_resp_data_word_bypass_i"));
      sc_trace( tf, obj.mem_resp_store_data_i, n+std::string(".mem_resp_store_data_i"));

      sc_trace( tf, obj.mem_resp_nack_i, n+std::string(".mem_resp_nack_i"));
      sc_trace( tf, obj.mem_resp_replay_i, n+std::string(".mem_resp_replay_i"));

};

inline ostream & operator << ( ostream& os, const    MEM_TO_ACCEL  obj )
{

      os<<" "<< obj.mem_req_ready_i ;

      os<<" "<< obj.mem_resp_valid_i ;
      os<<" "<< obj.mem_resp_addr_i ;
      os<<" "<< obj.mem_resp_tag_i ;
      os<<" "<< obj.mem_resp_cmd_i ;
      os<<" "<< obj.mem_resp_typ_i ;
      os<<" "<< obj.mem_resp_data_i ;
      os<<" "<< obj.mem_resp_has_data_i ;
      os<<" "<< obj.mem_resp_data_word_bypass_i ;
      os<<" "<< obj.mem_resp_store_data_i ;

      os<<" "<< obj.mem_resp_nack_i ;
      os<<" "<< obj.mem_resp_replay_i ;

    return os;
};

inline istream & operator >> ( istream& is,    MEM_TO_ACCEL & obj )
{
    if (!is.get() || !is.good()) return is;

     is >>  obj.mem_req_ready_i ;

     is >>  obj.mem_resp_valid_i ;
     is >>  obj.mem_resp_addr_i ;
     is >>  obj.mem_resp_tag_i ;
     is >>  obj.mem_resp_cmd_i ;
     is >>  obj.mem_resp_typ_i ;
     is >>  obj.mem_resp_data_i ;
     is >>  obj.mem_resp_has_data_i ;
     is >>  obj.mem_resp_data_word_bypass_i ;
     is >>  obj.mem_resp_store_data_i ;

     is >>  obj.mem_resp_nack_i ;
     is >>  obj.mem_resp_replay_i ;
    while (is.good() && (is.get() != '\n'));
    return is;
}



/*A series of output signals sent from the accelerator to the cache.
 *It mainly includes the signals for sending the memory request.
 *These output signals are separated from the signals in class
 *ACCEL_TO_ROCC because of its sepecific function.                  */

struct  ACCEL_TO_MEM {

    //modified for  ACCEL_TO_MEM interface

    //memory mode
    //for reqest
    bool  mem_req_valid_o;
    sc_uint<40 > mem_req_addr_o;
    sc_uint<10 > mem_req_tag_o;
    sc_uint<5 >  mem_req_cmd_o; //0x000 store 0x001 load
    sc_uint<3 >  mem_req_typ_o; //width of response 0x000---8bits 0x001---16bits 0x010---32bits 0x011---64bits
    bool  mem_req_phys_o;       //default is 1
    sc_uint<64 > mem_req_data_o; //store data

    //for response  can be read from the memory at any time

     ACCEL_TO_MEM() {}

     ACCEL_TO_MEM( const  ACCEL_TO_MEM& obj ) {
        copy(obj);
    }

        ACCEL_TO_MEM & operator=(  const   ACCEL_TO_MEM & obj ) {
          copy(obj);
          return *this;
      }
      bool operator==( const   ACCEL_TO_MEM & obj ) {

           if(  mem_req_valid_o!= obj.mem_req_valid_o) return false;
           if( mem_req_addr_o!= obj.mem_req_addr_o) return false;
           if( mem_req_tag_o!= obj.mem_req_tag_o) return false;
           if( mem_req_cmd_o!= obj.mem_req_cmd_o) return false;
           if( mem_req_typ_o!= obj.mem_req_typ_o) return false;
           if( mem_req_phys_o!= obj.mem_req_phys_o) return false;
           if( mem_req_data_o!= obj.mem_req_data_o) return false;

          return true;
     }
    void copy( const    ACCEL_TO_MEM & obj ) {

          mem_req_valid_o=obj.mem_req_valid_o;
          mem_req_addr_o=obj.mem_req_addr_o;
          mem_req_tag_o=obj.mem_req_tag_o;
          mem_req_cmd_o=obj.mem_req_cmd_o;
          mem_req_typ_o=obj.mem_req_typ_o;
          mem_req_phys_o=obj.mem_req_phys_o;
          mem_req_data_o=obj.mem_req_data_o;

     }
};

inline void sc_trace( sc_trace_file* tf, const    ACCEL_TO_MEM & obj, const std::string& n )
{

      sc_trace( tf, obj.mem_req_valid_o, n+std::string(".mem_req_valid_o"));
      sc_trace( tf, obj.mem_req_addr_o, n+std::string(".mem_req_addr_o"));
      sc_trace( tf, obj.mem_req_tag_o, n+std::string(".mem_req_tag_o"));
      sc_trace( tf, obj.mem_req_cmd_o, n+std::string(".mem_req_cmd_o"));
      sc_trace( tf, obj.mem_req_typ_o, n+std::string(".mem_req_typ_o"));
      sc_trace( tf, obj.mem_req_phys_o, n+std::string(".mem_req_phys_o"));
      sc_trace( tf, obj.mem_req_data_o, n+std::string(".mem_req_data_o"));

};
/*
inline void write( ACCEL_TO_MEM &obj)
{
    obj.cc_busy_o.
}
*/

inline ostream & operator << ( ostream& os, const    ACCEL_TO_MEM  obj )
{


      os<< " "<< obj.mem_req_valid_o;
      os<< " "<< obj.mem_req_addr_o;
      os<< " "<< obj.mem_req_tag_o;
      os<< " "<< obj.mem_req_cmd_o;
      os<< " "<< obj.mem_req_typ_o;
      os<< " "<< obj.mem_req_phys_o;
      os<< " "<< obj.mem_req_data_o;


    return os;
};
inline istream & operator >> ( istream& is,    ACCEL_TO_MEM & obj )
{
    if (!is.get() || !is.good()) return is;

      is >> obj.mem_req_valid_o;
      is >> obj.mem_req_addr_o;
      is >> obj.mem_req_tag_o;
      is >> obj.mem_req_cmd_o;
      is >> obj.mem_req_typ_o;
      is >> obj.mem_req_phys_o;
      is >> obj.mem_req_data_o;

    while (is.good() && (is.get() != '\n'));
    return is;
};



#endif // _DEFINES_H_
