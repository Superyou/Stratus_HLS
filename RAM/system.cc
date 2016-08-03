#include "system.h"

void System::InitInstances()
{
		
    c0 = new RAM_wrapper("RAM_wrapper");
    c0->clk.bind(clk);
    c0->rst.bind(rst);
    c0->dout.bind(out_chan);
    c0->din.bind(in_chan);
    c0->ram_port.bind(*m_ram);
	
	m_tb = new tb("tb");
    m_tb->clk.bind(clk);
    m_tb->rst.bind(rst);
    m_tb->tb_din.bind(out_chan);
    m_tb->tb_dout.bind(in_chan);
	
}

void System::DeleteInstances()
{

	delete m_tb;
    delete c0;
    delete m_ram;
}
