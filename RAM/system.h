#ifndef __SYSTEM_H
#define __SYSTEM_H

#include <systemc.h>
#include <esc.h>
#include <cynw_p2p.h>
#include "tb.h"
#include "typedefs.h"
#include "RAM_wrap.h"
#include "dummymemlib.h"
#include <stratus_hls.h>



SC_MODULE(System)
{
	sc_clock clk;
	sc_signal <bool> rst;
	cynw_p2p <DT1,ioConfig>::chan in_chan;
	cynw_p2p <DT2,ioConfig>::chan out_chan;
	
	RAM_wrapper *c0;
	
	MY_RAM::wrapper< ioConfig> * m_ram;
	tb *m_tb;
	
	void InitInstances();
	void DeleteInstances();
	
    SC_CTOR(System)
		:clk("clk",10,SC_NS,0.5,0,SC_NS,true)
		,rst("rst")
		,in_chan("din")
		,out_chan("dout")
		
	{
        cout << "CONSTRUCTION start " << endl;
		InitInstances();
        cout << "CONSTRUCTION DONE " << endl;
	}
    ~ System()
    {
        DeleteInstances();
    }
};
#endif
