//
// Top-level Verilog module

// One of these modules is created for each testcase that involves
// co-simulation.  This one is for the 'VIVADO_DSP_V' testcase.
// The top-level module contains:
//	- An instances of a co-simulation wrapper module for each instance
//	  simulating in Verilog.
//	- Hub initialization calls that load the shared library for the
//	  simulation.
//
// You can add any other legal Verilog to this template file, and it appear in
// the verilog module.

`timescale 1 ps / 1 ps

module top;

	// RTL wrapper instances for cosim.
	vv_add_cosim vv_add0();


	integer n_cur_time;
	initial n_cur_time=0;
	reg [63:0] cur_time;
	initial cur_time=0;

	`include "hub.v"

	// Load library and begin co-simulation.
	initial begin

        // For gate-level simulations we back-annotate the instances with delays
        // from the SDF file
        

		// Open the trace file if that's appropriate.
		if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) )
			$dumpfile( "bdw_work/sims/VIVADO_DSP_V/verilog.vcd" );
		if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) ) begin
		`ifdef ioConfig_PIN
		
		$dumpvars( 0, vv_add0.clk );
		$dumpvars( 0, vv_add0.rst );
		$dumpvars( 0, vv_add0.cc_busy_o );
		$dumpvars( 0, vv_add0.cc_interrupt_o );
		$dumpvars( 0, vv_add0.cc_status_i );
		$dumpvars( 0, vv_add0.cc_exception_i );
		$dumpvars( 0, vv_add0.cc_host_id_i );
		$dumpvars( 0, vv_add0.core_cmd_ready_o );
		$dumpvars( 0, vv_add0.core_cmd_valid_i );
		$dumpvars( 0, vv_add0.core_cmd_inst_funct_i );
		$dumpvars( 0, vv_add0.core_cmd_inst_rs1_i );
		$dumpvars( 0, vv_add0.core_cmd_inst_rs2_i );
		$dumpvars( 0, vv_add0.core_cmd_inst_xd_i );
		$dumpvars( 0, vv_add0.core_cmd_inst_xs1_i );
		$dumpvars( 0, vv_add0.core_cmd_inst_xs2_i );
		$dumpvars( 0, vv_add0.core_cmd_inst_rd_i );
		$dumpvars( 0, vv_add0.core_cmd_inst_opcode_i );
		$dumpvars( 0, vv_add0.core_cmd_rs1_i );
		$dumpvars( 0, vv_add0.core_cmd_rs2_i );
		$dumpvars( 0, vv_add0.core_resp_ready_i );
		$dumpvars( 0, vv_add0.core_resp_valid_o );
		$dumpvars( 0, vv_add0.core_resp_rd_o );
		$dumpvars( 0, vv_add0.core_resp_data_o );
		$dumpvars( 0, vv_add0.mem_req_ready_i );
		$dumpvars( 0, vv_add0.mem_req_valid_o );
		$dumpvars( 0, vv_add0.mem_req_addr_o );
		$dumpvars( 0, vv_add0.mem_req_tag_o );
		$dumpvars( 0, vv_add0.mem_req_cmd_o );
		$dumpvars( 0, vv_add0.mem_req_typ_o );
		$dumpvars( 0, vv_add0.mem_req_phys_o );
		$dumpvars( 0, vv_add0.mem_req_data_o );
		$dumpvars( 0, vv_add0.mem_resp_valid_i );
		$dumpvars( 0, vv_add0.mem_resp_addr_i );
		$dumpvars( 0, vv_add0.mem_resp_tag_i );
		$dumpvars( 0, vv_add0.mem_resp_cmd_i );
		$dumpvars( 0, vv_add0.mem_resp_typ_i );
		$dumpvars( 0, vv_add0.mem_resp_data_i );
		$dumpvars( 0, vv_add0.mem_resp_has_data_i );
		$dumpvars( 0, vv_add0.mem_resp_data_word_bypass_i );
		$dumpvars( 0, vv_add0.mem_resp_store_data_i );
		$dumpvars( 0, vv_add0.mem_resp_nack_i );
		$dumpvars( 0, vv_add0.mem_resp_replay_i );
		
		`endif
			$dumpvars( 4, vv_add0.vv_add0 );
		end


		// If the SystemC shared library will be loaded using +qbSetOption+libdef=libname.so
		// from the Verilog simulator's command line, the following line can be left
		// out.  In order to load the shared library directly from Verilog, uncomment
		// the following line using either ther automatically generated SIM_EXEC string,
		// or a hard-coded string giving the path to the shared library.
		//hubLoadLibrary( "bdw_work/sims/VIVADO_DSP_V/sim_VIVADO_DSP_V.so", "" );

		// Begin a co-simulation.
		// This task returns after esc_end_cosim() is called from SystemC.
		hubStartCosim;
		#100 $stop;
	end
endmodule

//
// The following wrapper modules are used only for NCSim cosims.
//

`ifdef BDW_NCSC

module vv_add_nc_cosim(clk,
 rst,
 cc_busy_o,
 cc_interrupt_o,
 cc_status_i,
 cc_exception_i,
 cc_host_id_i,
 core_cmd_ready_o,
 core_cmd_valid_i,
 core_cmd_inst_funct_i,
 core_cmd_inst_rs1_i,
 core_cmd_inst_rs2_i,
 core_cmd_inst_xd_i,
 core_cmd_inst_xs1_i,
 core_cmd_inst_xs2_i,
 core_cmd_inst_rd_i,
 core_cmd_inst_opcode_i,
 core_cmd_rs1_i,
 core_cmd_rs2_i,
 core_resp_ready_i,
 core_resp_valid_o,
 core_resp_rd_o,
 core_resp_data_o,
 mem_req_ready_i,
 mem_req_valid_o,
 mem_req_addr_o,
 mem_req_tag_o,
 mem_req_cmd_o,
 mem_req_typ_o,
 mem_req_phys_o,
 mem_req_data_o,
 mem_resp_valid_i,
 mem_resp_addr_i,
 mem_resp_tag_i,
 mem_resp_cmd_i,
 mem_resp_typ_i,
 mem_resp_data_i,
 mem_resp_has_data_i,
 mem_resp_data_word_bypass_i,
 mem_resp_store_data_i,
 mem_resp_nack_i,
 mem_resp_replay_i);

input clk;
wire clk;
input rst;
wire rst;
output cc_busy_o;
wire cc_busy_o;
output cc_interrupt_o;
wire cc_interrupt_o;
input cc_status_i;
wire cc_status_i;
input cc_exception_i;
wire cc_exception_i;
input cc_host_id_i;
wire cc_host_id_i;
output core_cmd_ready_o;
wire core_cmd_ready_o;
input core_cmd_valid_i;
wire core_cmd_valid_i;
input core_cmd_inst_funct_i;
wire[6:0] core_cmd_inst_funct_i;
input core_cmd_inst_rs1_i;
wire[4:0] core_cmd_inst_rs1_i;
input core_cmd_inst_rs2_i;
wire[4:0] core_cmd_inst_rs2_i;
input core_cmd_inst_xd_i;
wire core_cmd_inst_xd_i;
input core_cmd_inst_xs1_i;
wire core_cmd_inst_xs1_i;
input core_cmd_inst_xs2_i;
wire core_cmd_inst_xs2_i;
input core_cmd_inst_rd_i;
wire[4:0] core_cmd_inst_rd_i;
input core_cmd_inst_opcode_i;
wire[6:0] core_cmd_inst_opcode_i;
input core_cmd_rs1_i;
wire[63:0] core_cmd_rs1_i;
input core_cmd_rs2_i;
wire[63:0] core_cmd_rs2_i;
input core_resp_ready_i;
wire core_resp_ready_i;
output core_resp_valid_o;
wire core_resp_valid_o;
output core_resp_rd_o;
wire[4:0] core_resp_rd_o;
output core_resp_data_o;
wire[63:0] core_resp_data_o;
input mem_req_ready_i;
wire mem_req_ready_i;
output mem_req_valid_o;
wire mem_req_valid_o;
output mem_req_addr_o;
wire[39:0] mem_req_addr_o;
output mem_req_tag_o;
wire[9:0] mem_req_tag_o;
output mem_req_cmd_o;
wire[4:0] mem_req_cmd_o;
output mem_req_typ_o;
wire[2:0] mem_req_typ_o;
output mem_req_phys_o;
wire mem_req_phys_o;
output mem_req_data_o;
wire[63:0] mem_req_data_o;
input mem_resp_valid_i;
wire mem_resp_valid_i;
input mem_resp_addr_i;
wire[39:0] mem_resp_addr_i;
input mem_resp_tag_i;
wire[9:0] mem_resp_tag_i;
input mem_resp_cmd_i;
wire[4:0] mem_resp_cmd_i;
input mem_resp_typ_i;
wire[2:0] mem_resp_typ_i;
input mem_resp_data_i;
wire[63:0] mem_resp_data_i;
input mem_resp_has_data_i;
wire mem_resp_has_data_i;
input mem_resp_data_word_bypass_i;
wire[63:0] mem_resp_data_word_bypass_i;
input mem_resp_store_data_i;
wire[63:0] mem_resp_store_data_i;
input mem_resp_nack_i;
wire mem_resp_nack_i;
input mem_resp_replay_i;
wire mem_resp_replay_i;

vv_add vv_add0( .clk(clk),
 .rst(rst),
 .cc_busy_o(cc_busy_o),
 .cc_interrupt_o(cc_interrupt_o),
 .cc_status_i(cc_status_i),
 .cc_exception_i(cc_exception_i),
 .cc_host_id_i(cc_host_id_i),
 .core_cmd_ready_o(core_cmd_ready_o),
 .core_cmd_valid_i(core_cmd_valid_i),
 .core_cmd_inst_funct_i(core_cmd_inst_funct_i),
 .core_cmd_inst_rs1_i(core_cmd_inst_rs1_i),
 .core_cmd_inst_rs2_i(core_cmd_inst_rs2_i),
 .core_cmd_inst_xd_i(core_cmd_inst_xd_i),
 .core_cmd_inst_xs1_i(core_cmd_inst_xs1_i),
 .core_cmd_inst_xs2_i(core_cmd_inst_xs2_i),
 .core_cmd_inst_rd_i(core_cmd_inst_rd_i),
 .core_cmd_inst_opcode_i(core_cmd_inst_opcode_i),
 .core_cmd_rs1_i(core_cmd_rs1_i),
 .core_cmd_rs2_i(core_cmd_rs2_i),
 .core_resp_ready_i(core_resp_ready_i),
 .core_resp_valid_o(core_resp_valid_o),
 .core_resp_rd_o(core_resp_rd_o),
 .core_resp_data_o(core_resp_data_o),
 .mem_req_ready_i(mem_req_ready_i),
 .mem_req_valid_o(mem_req_valid_o),
 .mem_req_addr_o(mem_req_addr_o),
 .mem_req_tag_o(mem_req_tag_o),
 .mem_req_cmd_o(mem_req_cmd_o),
 .mem_req_typ_o(mem_req_typ_o),
 .mem_req_phys_o(mem_req_phys_o),
 .mem_req_data_o(mem_req_data_o),
 .mem_resp_valid_i(mem_resp_valid_i),
 .mem_resp_addr_i(mem_resp_addr_i),
 .mem_resp_tag_i(mem_resp_tag_i),
 .mem_resp_cmd_i(mem_resp_cmd_i),
 .mem_resp_typ_i(mem_resp_typ_i),
 .mem_resp_data_i(mem_resp_data_i),
 .mem_resp_has_data_i(mem_resp_has_data_i),
 .mem_resp_data_word_bypass_i(mem_resp_data_word_bypass_i),
 .mem_resp_store_data_i(mem_resp_store_data_i),
 .mem_resp_nack_i(mem_resp_nack_i),
 .mem_resp_replay_i(mem_resp_replay_i) );

   `include "hub.v"

   initial begin

if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) )
	$dumpfile( "bdw_work/sims/VIVADO_DSP_V/verilog.vcd" );
if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) ) begin
`ifdef ioConfig_PIN

$dumpvars( 0, vv_add0.clk );
$dumpvars( 0, vv_add0.rst );
$dumpvars( 0, vv_add0.cc_busy_o );
$dumpvars( 0, vv_add0.cc_interrupt_o );
$dumpvars( 0, vv_add0.cc_status_i );
$dumpvars( 0, vv_add0.cc_exception_i );
$dumpvars( 0, vv_add0.cc_host_id_i );
$dumpvars( 0, vv_add0.core_cmd_ready_o );
$dumpvars( 0, vv_add0.core_cmd_valid_i );
$dumpvars( 0, vv_add0.core_cmd_inst_funct_i );
$dumpvars( 0, vv_add0.core_cmd_inst_rs1_i );
$dumpvars( 0, vv_add0.core_cmd_inst_rs2_i );
$dumpvars( 0, vv_add0.core_cmd_inst_xd_i );
$dumpvars( 0, vv_add0.core_cmd_inst_xs1_i );
$dumpvars( 0, vv_add0.core_cmd_inst_xs2_i );
$dumpvars( 0, vv_add0.core_cmd_inst_rd_i );
$dumpvars( 0, vv_add0.core_cmd_inst_opcode_i );
$dumpvars( 0, vv_add0.core_cmd_rs1_i );
$dumpvars( 0, vv_add0.core_cmd_rs2_i );
$dumpvars( 0, vv_add0.core_resp_ready_i );
$dumpvars( 0, vv_add0.core_resp_valid_o );
$dumpvars( 0, vv_add0.core_resp_rd_o );
$dumpvars( 0, vv_add0.core_resp_data_o );
$dumpvars( 0, vv_add0.mem_req_ready_i );
$dumpvars( 0, vv_add0.mem_req_valid_o );
$dumpvars( 0, vv_add0.mem_req_addr_o );
$dumpvars( 0, vv_add0.mem_req_tag_o );
$dumpvars( 0, vv_add0.mem_req_cmd_o );
$dumpvars( 0, vv_add0.mem_req_typ_o );
$dumpvars( 0, vv_add0.mem_req_phys_o );
$dumpvars( 0, vv_add0.mem_req_data_o );
$dumpvars( 0, vv_add0.mem_resp_valid_i );
$dumpvars( 0, vv_add0.mem_resp_addr_i );
$dumpvars( 0, vv_add0.mem_resp_tag_i );
$dumpvars( 0, vv_add0.mem_resp_cmd_i );
$dumpvars( 0, vv_add0.mem_resp_typ_i );
$dumpvars( 0, vv_add0.mem_resp_data_i );
$dumpvars( 0, vv_add0.mem_resp_has_data_i );
$dumpvars( 0, vv_add0.mem_resp_data_word_bypass_i );
$dumpvars( 0, vv_add0.mem_resp_store_data_i );
$dumpvars( 0, vv_add0.mem_resp_nack_i );
$dumpvars( 0, vv_add0.mem_resp_replay_i );

`endif
	$dumpvars( 4, vv_add0 );
end
   end

endmodule


`endif


