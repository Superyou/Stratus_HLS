
#ifndef _RAM_H_
#define _RAM_H_

#include <cynw_p2p.h>
#include "typedefs.h"
#include "dummymemlib.h"

SC_MODULE (RAM)
{
public:
		sc_in_clk 	clk;
		sc_in<bool>	rst; 
		
        cynw_p2p <DT2, ioConfig>::out dout;
        cynw_p2p <DT1, ioConfig>::in din;
		
		MY_RAM::port<ioConfig> ram_port;
		
    SC_CTOR(RAM):rst("rst"),clk("clk"),dout("dout"),din("din"),ram_port("ram_port")
	{
		SC_CTHREAD(RAMthread, clk.pos());
		reset_signal_is(rst,false);
		
		dout.clk_rst(clk, rst);
		din.clk_rst(clk, rst);
        ram_port.clk_rst(clk,rst);
    }
	void RAMthread();
	DT2 f(DT1);
	
	
		
};

#endif
