`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Simulation Model
    
    Generated at: 11:36:16 EDT (-0400), Friday 22 July 2016
    Generated on: zhang-01.ece.cornell.edu
    Generated by: yw777 (You Wu)
    
    Created by: Cynthesizer DpOpt 2015.1.01 
    Copyright (c) 2014-2015 Cadence Design Systems. All rights reserved worldwide.
    
    Cadence Design Systems proprietary and confidential
    ===================================================
    
    May contain information that incorporates Cadence Design Systems CellMath
    and other inventions claimed in Pending U.S. Patents.
    
    May contain Cadence Design Systems Trade Secrets of which use, disclosure or
    reproduction is contractually restricted or prohibited.  For more
    information, contact your legal department before any use, disclosure or
    reproduction.
*******************************************************************************/

module RAM_Lti64s8_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [7:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((13'B1000000000000 ^ 13'B0000001000000)>(13'B1000000000000 ^ {{5{in1[7]}}, in1}));

assign out1 = asc001;
endmodule

/* CADENCE  ubLxSAo= : u9/ySgnatBlWxVPRUQkd5eg= ** DO NOT EDIT THIS LINE ******/


