//******************************************************************************
// Copyright 2015 Cadence Design Systems, Inc.
// All Rights Reserved.
//
//******************************************************************************

#ifndef  TB_H
#define  TB_H

#include <systemc.h>
#include "stratus_hls.h"
#include "cynw_p2p.h"
#include <queue>

#include "typedefs.h"

using namespace std;

SC_MODULE(tb)
{
public:

    // reset and clock are required ports
    sc_out<bool>     rst;
    sc_in_clk        clk;

    cynw_p2p<DT2,ioConfig >::base_in     	tb_din;
    cynw_p2p<DT1,ioConfig >::base_out       tb_dout;

    SC_CTOR(tb)
            :rst("rst")
            ,clk("clk")
            ,tb_din("tb_din")
            ,tb_dout("tb_dout")

    {

        SC_CTHREAD(tb_source, clk.pos());
        SC_CTHREAD(tb_sink, clk.pos());

        tb_din.clk_rst(clk, rst);
        tb_dout.clk_rst(clk, rst);


    }//SC_CTOR(tb)

    ~tb();  //Destructor


    // Member functions 
    sc_time sample_sent_time;

    void tb_source();     //Data Source Thread 
    void tb_sink();       //Data Sink Thread 

    //Class Members 
    ifstream tb_infile;
    ofstream tb_outfile_c;

	void open_stimulus_file(const char *_name = NULL);
    DT1 read_stimulus_value(bool & eof);
	void close_stimulus_file();

	// Utility functions for managing the response file
	void open_response_file(const char *_name = NULL);
    void write_response_value(DT2 x);
	void close_response_file();
	
	// Utility function for managing the golden file
	int count_golden_file(const char *_name = NULL);

	// Utility to convert a time in simulation time units to clock cycles
	//int clock_cycle(sc_time time);
	double clock_cycle(sc_time time);





    std::queue<sc_time> time_queue;
    std::queue<int> mode_queue;


}; //SC_MODULE(tb)

#endif //_TB_INCLUDED_

