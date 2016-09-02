-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.2
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    strm_in_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    strm_in_V_V_empty_n : IN STD_LOGIC;
    strm_in_V_V_read : OUT STD_LOGIC;
    strm_out_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    strm_out_V_V_full_n : IN STD_LOGIC;
    strm_out_V_V_write : OUT STD_LOGIC );
end;


architecture behav of dut is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "dut,hls_ip_2014_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.724000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_sig_bdd_31 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_sig_bdd_31)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_CS_fsm, ap_sig_bdd_31)
    begin
        if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_31))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_CS_fsm, ap_sig_bdd_31)
    begin
        if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_31))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_31 assign process. --
    ap_sig_bdd_31_assign_proc : process(ap_start, strm_in_V_V_empty_n, strm_out_V_V_full_n)
    begin
                ap_sig_bdd_31 <= ((strm_in_V_V_empty_n = ap_const_logic_0) or (strm_out_V_V_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    -- strm_in_V_V_read assign process. --
    strm_in_V_V_read_assign_proc : process(ap_CS_fsm, ap_sig_bdd_31)
    begin
        if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_31))) then 
            strm_in_V_V_read <= ap_const_logic_1;
        else 
            strm_in_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    strm_out_V_V_din <= strm_in_V_V_dout;

    -- strm_out_V_V_write assign process. --
    strm_out_V_V_write_assign_proc : process(ap_CS_fsm, ap_sig_bdd_31)
    begin
        if (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_31))) then 
            strm_out_V_V_write <= ap_const_logic_1;
        else 
            strm_out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;