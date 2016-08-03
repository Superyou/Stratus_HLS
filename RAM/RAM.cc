#include "RAM.h"

void RAM::RAMthread()
{
	{
		HLS_DEFINE_PROTOCOL("reset");
		dout.reset();
		din.reset();
		ram_port.reset();
		wait();
	}
	for (int i=0;i<MY_RAM::SIZE;++i)
	{
		ram_port[i]=i;
	}
    while(1)
	{

#ifndef PIPE

		DT1 input = din.get();
		DT2 output = f(input);
		dout.put(output);
#else
		HLS_PIPELINE_LOOP( HARD_STALL, 1, "main loop" );


        DT_1 in_val = din.get( false );
        DT_2 out_val;
        bool valid = din.data_was_valid();

        if( valid )
        {
            out_val = f( in_val );    
        }
        dout.put( out_val, valid );
#endif
		
	}
}

DT2 RAM::f (DT1 x)
{
	sc_uint<MY_RAM::address_width> index = x;
	sc_uint<MY_RAM::data_width> result = ram_port[index] * 7;
	
	
	return result;

}
