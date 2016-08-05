//
// Verilog co-simulation wrapper module for the vv_add module.

// This module contains the followng items:
//	- An instance of the verilog RTL module created by cynthVLG.
//	- Wires and reg's connected to the ports of the RTL module.
//	- A clock generator using the project's clock frequency and connected to
//    the RTL module's clock port.
//
// The wires and reg's will be connected to sc_signals in the SystemC simulaton
// by esc_link_signals calls in the proxy module found in the vv_add_cosim.h 
// file.

`timescale 1 ps / 1 ps

module vv_add_cosim;

	`ifdef ioConfig_PIN
	
	reg clk;
	reg rst;
	wire cc_busy_o;
	wire cc_interrupt_o;
	reg cc_status_i;
	reg cc_exception_i;
	reg cc_host_id_i;
	wire core_cmd_ready_o;
	reg core_cmd_valid_i;
	reg[6:0] core_cmd_inst_funct_i;
	reg[4:0] core_cmd_inst_rs1_i;
	reg[4:0] core_cmd_inst_rs2_i;
	reg core_cmd_inst_xd_i;
	reg core_cmd_inst_xs1_i;
	reg core_cmd_inst_xs2_i;
	reg[4:0] core_cmd_inst_rd_i;
	reg[6:0] core_cmd_inst_opcode_i;
	reg[63:0] core_cmd_rs1_i;
	reg[63:0] core_cmd_rs2_i;
	reg core_resp_ready_i;
	wire core_resp_valid_o;
	wire[4:0] core_resp_rd_o;
	wire[63:0] core_resp_data_o;
	reg mem_req_ready_i;
	wire mem_req_valid_o;
	wire[39:0] mem_req_addr_o;
	wire[9:0] mem_req_tag_o;
	wire[4:0] mem_req_cmd_o;
	wire[2:0] mem_req_typ_o;
	wire mem_req_phys_o;
	wire[63:0] mem_req_data_o;
	reg mem_resp_valid_i;
	reg[39:0] mem_resp_addr_i;
	reg[9:0] mem_resp_tag_i;
	reg[4:0] mem_resp_cmd_i;
	reg[2:0] mem_resp_typ_i;
	reg[63:0] mem_resp_data_i;
	reg mem_resp_has_data_i;
	reg[63:0] mem_resp_data_word_bypass_i;
	reg[63:0] mem_resp_store_data_i;
	reg mem_resp_nack_i;
	reg mem_resp_replay_i;
	
	`endif


	`include "hub.v"

	vv_add vv_add0( `ifdef ioConfig_PIN
	
	.clk(clk),
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
	 .mem_resp_replay_i(mem_resp_replay_i)
	`endif
	 );


	`ifdef ioConfig_PIN
	
	// Variables that can be set externally
	reg clk_firstEdge;
	reg clk_initialized;
	reg clk_started;
	real clk_startTime;
	real clk_firstHalf;
	real clk_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    clk_firstEdge = 1'b1;
	    clk_startTime = 0.000;		// Offset from time 0 to first edge.
	    clk_firstHalf = 5.000;	// Delay for first half of cycle.
	    clk_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on clk_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( clk_initialized !== 1'b1 )
	        @( clk_initialized );
	
	    if ( clk_startTime > 0.0 ) begin
	        clk_started = #clk_startTime 1;
	    end
	    else begin
	        clk_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.clk ) begin
	    if ( clk_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( clk_started !== 1'b1 )
	        @( clk_started );
	
	    clk <= clk_firstEdge;
	    if ( clk_firstHalf > 0.0 ) begin
	        #clk_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        clk = ~clk_firstEdge;
	    end
	    else begin
	        clk = ~clk_firstEdge;
	    end
	    if ( clk_secondHalf > 0.0 ) begin
	        #clk_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg rst_firstEdge;
	reg rst_initialized;
	reg rst_started;
	real rst_startTime;
	real rst_firstHalf;
	real rst_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    rst_firstEdge = 1'b1;
	    rst_startTime = 0.000;		// Offset from time 0 to first edge.
	    rst_firstHalf = 5.000;	// Delay for first half of cycle.
	    rst_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on rst_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( rst_initialized !== 1'b1 )
	        @( rst_initialized );
	
	    if ( rst_startTime > 0.0 ) begin
	        rst_started = #rst_startTime 1;
	    end
	    else begin
	        rst_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.rst ) begin
	    if ( rst_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( rst_started !== 1'b1 )
	        @( rst_started );
	
	    rst <= rst_firstEdge;
	    if ( rst_firstHalf > 0.0 ) begin
	        #rst_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        rst = ~rst_firstEdge;
	    end
	    else begin
	        rst = ~rst_firstEdge;
	    end
	    if ( rst_secondHalf > 0.0 ) begin
	        #rst_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg cc_status_i_firstEdge;
	reg cc_status_i_initialized;
	reg cc_status_i_started;
	real cc_status_i_startTime;
	real cc_status_i_firstHalf;
	real cc_status_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    cc_status_i_firstEdge = 1'b1;
	    cc_status_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    cc_status_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    cc_status_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on cc_status_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( cc_status_i_initialized !== 1'b1 )
	        @( cc_status_i_initialized );
	
	    if ( cc_status_i_startTime > 0.0 ) begin
	        cc_status_i_started = #cc_status_i_startTime 1;
	    end
	    else begin
	        cc_status_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.cc_status_i ) begin
	    if ( cc_status_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( cc_status_i_started !== 1'b1 )
	        @( cc_status_i_started );
	
	    cc_status_i <= cc_status_i_firstEdge;
	    if ( cc_status_i_firstHalf > 0.0 ) begin
	        #cc_status_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        cc_status_i = ~cc_status_i_firstEdge;
	    end
	    else begin
	        cc_status_i = ~cc_status_i_firstEdge;
	    end
	    if ( cc_status_i_secondHalf > 0.0 ) begin
	        #cc_status_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg cc_exception_i_firstEdge;
	reg cc_exception_i_initialized;
	reg cc_exception_i_started;
	real cc_exception_i_startTime;
	real cc_exception_i_firstHalf;
	real cc_exception_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    cc_exception_i_firstEdge = 1'b1;
	    cc_exception_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    cc_exception_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    cc_exception_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on cc_exception_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( cc_exception_i_initialized !== 1'b1 )
	        @( cc_exception_i_initialized );
	
	    if ( cc_exception_i_startTime > 0.0 ) begin
	        cc_exception_i_started = #cc_exception_i_startTime 1;
	    end
	    else begin
	        cc_exception_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.cc_exception_i ) begin
	    if ( cc_exception_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( cc_exception_i_started !== 1'b1 )
	        @( cc_exception_i_started );
	
	    cc_exception_i <= cc_exception_i_firstEdge;
	    if ( cc_exception_i_firstHalf > 0.0 ) begin
	        #cc_exception_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        cc_exception_i = ~cc_exception_i_firstEdge;
	    end
	    else begin
	        cc_exception_i = ~cc_exception_i_firstEdge;
	    end
	    if ( cc_exception_i_secondHalf > 0.0 ) begin
	        #cc_exception_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg cc_host_id_i_firstEdge;
	reg cc_host_id_i_initialized;
	reg cc_host_id_i_started;
	real cc_host_id_i_startTime;
	real cc_host_id_i_firstHalf;
	real cc_host_id_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    cc_host_id_i_firstEdge = 1'b1;
	    cc_host_id_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    cc_host_id_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    cc_host_id_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on cc_host_id_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( cc_host_id_i_initialized !== 1'b1 )
	        @( cc_host_id_i_initialized );
	
	    if ( cc_host_id_i_startTime > 0.0 ) begin
	        cc_host_id_i_started = #cc_host_id_i_startTime 1;
	    end
	    else begin
	        cc_host_id_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.cc_host_id_i ) begin
	    if ( cc_host_id_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( cc_host_id_i_started !== 1'b1 )
	        @( cc_host_id_i_started );
	
	    cc_host_id_i <= cc_host_id_i_firstEdge;
	    if ( cc_host_id_i_firstHalf > 0.0 ) begin
	        #cc_host_id_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        cc_host_id_i = ~cc_host_id_i_firstEdge;
	    end
	    else begin
	        cc_host_id_i = ~cc_host_id_i_firstEdge;
	    end
	    if ( cc_host_id_i_secondHalf > 0.0 ) begin
	        #cc_host_id_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg core_cmd_valid_i_firstEdge;
	reg core_cmd_valid_i_initialized;
	reg core_cmd_valid_i_started;
	real core_cmd_valid_i_startTime;
	real core_cmd_valid_i_firstHalf;
	real core_cmd_valid_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    core_cmd_valid_i_firstEdge = 1'b1;
	    core_cmd_valid_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    core_cmd_valid_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    core_cmd_valid_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on core_cmd_valid_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( core_cmd_valid_i_initialized !== 1'b1 )
	        @( core_cmd_valid_i_initialized );
	
	    if ( core_cmd_valid_i_startTime > 0.0 ) begin
	        core_cmd_valid_i_started = #core_cmd_valid_i_startTime 1;
	    end
	    else begin
	        core_cmd_valid_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.core_cmd_valid_i ) begin
	    if ( core_cmd_valid_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( core_cmd_valid_i_started !== 1'b1 )
	        @( core_cmd_valid_i_started );
	
	    core_cmd_valid_i <= core_cmd_valid_i_firstEdge;
	    if ( core_cmd_valid_i_firstHalf > 0.0 ) begin
	        #core_cmd_valid_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        core_cmd_valid_i = ~core_cmd_valid_i_firstEdge;
	    end
	    else begin
	        core_cmd_valid_i = ~core_cmd_valid_i_firstEdge;
	    end
	    if ( core_cmd_valid_i_secondHalf > 0.0 ) begin
	        #core_cmd_valid_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg core_cmd_inst_xd_i_firstEdge;
	reg core_cmd_inst_xd_i_initialized;
	reg core_cmd_inst_xd_i_started;
	real core_cmd_inst_xd_i_startTime;
	real core_cmd_inst_xd_i_firstHalf;
	real core_cmd_inst_xd_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    core_cmd_inst_xd_i_firstEdge = 1'b1;
	    core_cmd_inst_xd_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    core_cmd_inst_xd_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    core_cmd_inst_xd_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on core_cmd_inst_xd_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( core_cmd_inst_xd_i_initialized !== 1'b1 )
	        @( core_cmd_inst_xd_i_initialized );
	
	    if ( core_cmd_inst_xd_i_startTime > 0.0 ) begin
	        core_cmd_inst_xd_i_started = #core_cmd_inst_xd_i_startTime 1;
	    end
	    else begin
	        core_cmd_inst_xd_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.core_cmd_inst_xd_i ) begin
	    if ( core_cmd_inst_xd_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( core_cmd_inst_xd_i_started !== 1'b1 )
	        @( core_cmd_inst_xd_i_started );
	
	    core_cmd_inst_xd_i <= core_cmd_inst_xd_i_firstEdge;
	    if ( core_cmd_inst_xd_i_firstHalf > 0.0 ) begin
	        #core_cmd_inst_xd_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        core_cmd_inst_xd_i = ~core_cmd_inst_xd_i_firstEdge;
	    end
	    else begin
	        core_cmd_inst_xd_i = ~core_cmd_inst_xd_i_firstEdge;
	    end
	    if ( core_cmd_inst_xd_i_secondHalf > 0.0 ) begin
	        #core_cmd_inst_xd_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg core_cmd_inst_xs1_i_firstEdge;
	reg core_cmd_inst_xs1_i_initialized;
	reg core_cmd_inst_xs1_i_started;
	real core_cmd_inst_xs1_i_startTime;
	real core_cmd_inst_xs1_i_firstHalf;
	real core_cmd_inst_xs1_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    core_cmd_inst_xs1_i_firstEdge = 1'b1;
	    core_cmd_inst_xs1_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    core_cmd_inst_xs1_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    core_cmd_inst_xs1_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on core_cmd_inst_xs1_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( core_cmd_inst_xs1_i_initialized !== 1'b1 )
	        @( core_cmd_inst_xs1_i_initialized );
	
	    if ( core_cmd_inst_xs1_i_startTime > 0.0 ) begin
	        core_cmd_inst_xs1_i_started = #core_cmd_inst_xs1_i_startTime 1;
	    end
	    else begin
	        core_cmd_inst_xs1_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.core_cmd_inst_xs1_i ) begin
	    if ( core_cmd_inst_xs1_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( core_cmd_inst_xs1_i_started !== 1'b1 )
	        @( core_cmd_inst_xs1_i_started );
	
	    core_cmd_inst_xs1_i <= core_cmd_inst_xs1_i_firstEdge;
	    if ( core_cmd_inst_xs1_i_firstHalf > 0.0 ) begin
	        #core_cmd_inst_xs1_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        core_cmd_inst_xs1_i = ~core_cmd_inst_xs1_i_firstEdge;
	    end
	    else begin
	        core_cmd_inst_xs1_i = ~core_cmd_inst_xs1_i_firstEdge;
	    end
	    if ( core_cmd_inst_xs1_i_secondHalf > 0.0 ) begin
	        #core_cmd_inst_xs1_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg core_cmd_inst_xs2_i_firstEdge;
	reg core_cmd_inst_xs2_i_initialized;
	reg core_cmd_inst_xs2_i_started;
	real core_cmd_inst_xs2_i_startTime;
	real core_cmd_inst_xs2_i_firstHalf;
	real core_cmd_inst_xs2_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    core_cmd_inst_xs2_i_firstEdge = 1'b1;
	    core_cmd_inst_xs2_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    core_cmd_inst_xs2_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    core_cmd_inst_xs2_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on core_cmd_inst_xs2_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( core_cmd_inst_xs2_i_initialized !== 1'b1 )
	        @( core_cmd_inst_xs2_i_initialized );
	
	    if ( core_cmd_inst_xs2_i_startTime > 0.0 ) begin
	        core_cmd_inst_xs2_i_started = #core_cmd_inst_xs2_i_startTime 1;
	    end
	    else begin
	        core_cmd_inst_xs2_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.core_cmd_inst_xs2_i ) begin
	    if ( core_cmd_inst_xs2_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( core_cmd_inst_xs2_i_started !== 1'b1 )
	        @( core_cmd_inst_xs2_i_started );
	
	    core_cmd_inst_xs2_i <= core_cmd_inst_xs2_i_firstEdge;
	    if ( core_cmd_inst_xs2_i_firstHalf > 0.0 ) begin
	        #core_cmd_inst_xs2_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        core_cmd_inst_xs2_i = ~core_cmd_inst_xs2_i_firstEdge;
	    end
	    else begin
	        core_cmd_inst_xs2_i = ~core_cmd_inst_xs2_i_firstEdge;
	    end
	    if ( core_cmd_inst_xs2_i_secondHalf > 0.0 ) begin
	        #core_cmd_inst_xs2_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg core_resp_ready_i_firstEdge;
	reg core_resp_ready_i_initialized;
	reg core_resp_ready_i_started;
	real core_resp_ready_i_startTime;
	real core_resp_ready_i_firstHalf;
	real core_resp_ready_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    core_resp_ready_i_firstEdge = 1'b1;
	    core_resp_ready_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    core_resp_ready_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    core_resp_ready_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on core_resp_ready_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( core_resp_ready_i_initialized !== 1'b1 )
	        @( core_resp_ready_i_initialized );
	
	    if ( core_resp_ready_i_startTime > 0.0 ) begin
	        core_resp_ready_i_started = #core_resp_ready_i_startTime 1;
	    end
	    else begin
	        core_resp_ready_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.core_resp_ready_i ) begin
	    if ( core_resp_ready_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( core_resp_ready_i_started !== 1'b1 )
	        @( core_resp_ready_i_started );
	
	    core_resp_ready_i <= core_resp_ready_i_firstEdge;
	    if ( core_resp_ready_i_firstHalf > 0.0 ) begin
	        #core_resp_ready_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        core_resp_ready_i = ~core_resp_ready_i_firstEdge;
	    end
	    else begin
	        core_resp_ready_i = ~core_resp_ready_i_firstEdge;
	    end
	    if ( core_resp_ready_i_secondHalf > 0.0 ) begin
	        #core_resp_ready_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg mem_req_ready_i_firstEdge;
	reg mem_req_ready_i_initialized;
	reg mem_req_ready_i_started;
	real mem_req_ready_i_startTime;
	real mem_req_ready_i_firstHalf;
	real mem_req_ready_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    mem_req_ready_i_firstEdge = 1'b1;
	    mem_req_ready_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    mem_req_ready_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    mem_req_ready_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on mem_req_ready_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( mem_req_ready_i_initialized !== 1'b1 )
	        @( mem_req_ready_i_initialized );
	
	    if ( mem_req_ready_i_startTime > 0.0 ) begin
	        mem_req_ready_i_started = #mem_req_ready_i_startTime 1;
	    end
	    else begin
	        mem_req_ready_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.mem_req_ready_i ) begin
	    if ( mem_req_ready_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( mem_req_ready_i_started !== 1'b1 )
	        @( mem_req_ready_i_started );
	
	    mem_req_ready_i <= mem_req_ready_i_firstEdge;
	    if ( mem_req_ready_i_firstHalf > 0.0 ) begin
	        #mem_req_ready_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        mem_req_ready_i = ~mem_req_ready_i_firstEdge;
	    end
	    else begin
	        mem_req_ready_i = ~mem_req_ready_i_firstEdge;
	    end
	    if ( mem_req_ready_i_secondHalf > 0.0 ) begin
	        #mem_req_ready_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg mem_resp_valid_i_firstEdge;
	reg mem_resp_valid_i_initialized;
	reg mem_resp_valid_i_started;
	real mem_resp_valid_i_startTime;
	real mem_resp_valid_i_firstHalf;
	real mem_resp_valid_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    mem_resp_valid_i_firstEdge = 1'b1;
	    mem_resp_valid_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    mem_resp_valid_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    mem_resp_valid_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on mem_resp_valid_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( mem_resp_valid_i_initialized !== 1'b1 )
	        @( mem_resp_valid_i_initialized );
	
	    if ( mem_resp_valid_i_startTime > 0.0 ) begin
	        mem_resp_valid_i_started = #mem_resp_valid_i_startTime 1;
	    end
	    else begin
	        mem_resp_valid_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.mem_resp_valid_i ) begin
	    if ( mem_resp_valid_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( mem_resp_valid_i_started !== 1'b1 )
	        @( mem_resp_valid_i_started );
	
	    mem_resp_valid_i <= mem_resp_valid_i_firstEdge;
	    if ( mem_resp_valid_i_firstHalf > 0.0 ) begin
	        #mem_resp_valid_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        mem_resp_valid_i = ~mem_resp_valid_i_firstEdge;
	    end
	    else begin
	        mem_resp_valid_i = ~mem_resp_valid_i_firstEdge;
	    end
	    if ( mem_resp_valid_i_secondHalf > 0.0 ) begin
	        #mem_resp_valid_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg mem_resp_has_data_i_firstEdge;
	reg mem_resp_has_data_i_initialized;
	reg mem_resp_has_data_i_started;
	real mem_resp_has_data_i_startTime;
	real mem_resp_has_data_i_firstHalf;
	real mem_resp_has_data_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    mem_resp_has_data_i_firstEdge = 1'b1;
	    mem_resp_has_data_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    mem_resp_has_data_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    mem_resp_has_data_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on mem_resp_has_data_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( mem_resp_has_data_i_initialized !== 1'b1 )
	        @( mem_resp_has_data_i_initialized );
	
	    if ( mem_resp_has_data_i_startTime > 0.0 ) begin
	        mem_resp_has_data_i_started = #mem_resp_has_data_i_startTime 1;
	    end
	    else begin
	        mem_resp_has_data_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.mem_resp_has_data_i ) begin
	    if ( mem_resp_has_data_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( mem_resp_has_data_i_started !== 1'b1 )
	        @( mem_resp_has_data_i_started );
	
	    mem_resp_has_data_i <= mem_resp_has_data_i_firstEdge;
	    if ( mem_resp_has_data_i_firstHalf > 0.0 ) begin
	        #mem_resp_has_data_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        mem_resp_has_data_i = ~mem_resp_has_data_i_firstEdge;
	    end
	    else begin
	        mem_resp_has_data_i = ~mem_resp_has_data_i_firstEdge;
	    end
	    if ( mem_resp_has_data_i_secondHalf > 0.0 ) begin
	        #mem_resp_has_data_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg mem_resp_nack_i_firstEdge;
	reg mem_resp_nack_i_initialized;
	reg mem_resp_nack_i_started;
	real mem_resp_nack_i_startTime;
	real mem_resp_nack_i_firstHalf;
	real mem_resp_nack_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    mem_resp_nack_i_firstEdge = 1'b1;
	    mem_resp_nack_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    mem_resp_nack_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    mem_resp_nack_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on mem_resp_nack_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( mem_resp_nack_i_initialized !== 1'b1 )
	        @( mem_resp_nack_i_initialized );
	
	    if ( mem_resp_nack_i_startTime > 0.0 ) begin
	        mem_resp_nack_i_started = #mem_resp_nack_i_startTime 1;
	    end
	    else begin
	        mem_resp_nack_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.mem_resp_nack_i ) begin
	    if ( mem_resp_nack_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( mem_resp_nack_i_started !== 1'b1 )
	        @( mem_resp_nack_i_started );
	
	    mem_resp_nack_i <= mem_resp_nack_i_firstEdge;
	    if ( mem_resp_nack_i_firstHalf > 0.0 ) begin
	        #mem_resp_nack_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        mem_resp_nack_i = ~mem_resp_nack_i_firstEdge;
	    end
	    else begin
	        mem_resp_nack_i = ~mem_resp_nack_i_firstEdge;
	    end
	    if ( mem_resp_nack_i_secondHalf > 0.0 ) begin
	        #mem_resp_nack_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	// Variables that can be set externally
	reg mem_resp_replay_i_firstEdge;
	reg mem_resp_replay_i_initialized;
	reg mem_resp_replay_i_started;
	real mem_resp_replay_i_startTime;
	real mem_resp_replay_i_firstHalf;
	real mem_resp_replay_i_secondHalf;
	
	initial begin
	
	    // Only send values from SystemC to the simulator at clock edges.
	    hubSetOption("cycleOnly=1");
	
	    // Default values for config variables.  Values come from static clock.
	    mem_resp_replay_i_firstEdge = 1'b1;
	    mem_resp_replay_i_startTime = 0.000;		// Offset from time 0 to first edge.
	    mem_resp_replay_i_firstHalf = 5.000;	// Delay for first half of cycle.
	    mem_resp_replay_i_secondHalf = 5.000;	// Second half of cycle less offset value.
	
	    // Make sure that we detect the transition on mem_resp_replay_i_initalized.
	    hubScheduleDelayedAssignments;
	
	    while ( mem_resp_replay_i_initialized !== 1'b1 )
	        @( mem_resp_replay_i_initialized );
	
	    if ( mem_resp_replay_i_startTime > 0.0 ) begin
	        mem_resp_replay_i_started = #mem_resp_replay_i_startTime 1;
	    end
	    else begin
	        mem_resp_replay_i_started = 1;
	    end
	end
	
	// Make sure that we process delayed assignments after the clock edge.
	always @( vv_add0.mem_resp_replay_i ) begin
	    if ( mem_resp_replay_i_started === 1'b1 ) begin
	        if ($time == top.cur_time) top.n_cur_time=top.n_cur_time-1;
	        else top.n_cur_time=0;
	        if (top.n_cur_time==0) begin
	            hubScheduleDelayedAssignments;
	        end
	    end
	end
	
	always begin
	    // Make sure our delays are non-zero before starting simulation.
	    while ( mem_resp_replay_i_started !== 1'b1 )
	        @( mem_resp_replay_i_started );
	
	    mem_resp_replay_i <= mem_resp_replay_i_firstEdge;
	    if ( mem_resp_replay_i_firstHalf > 0.0 ) begin
	        #mem_resp_replay_i_firstHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	        mem_resp_replay_i = ~mem_resp_replay_i_firstEdge;
	    end
	    else begin
	        mem_resp_replay_i = ~mem_resp_replay_i_firstEdge;
	    end
	    if ( mem_resp_replay_i_secondHalf > 0.0 ) begin
	        #mem_resp_replay_i_secondHalf;
	        if ($time==top.cur_time) begin
	            top.n_cur_time=top.n_cur_time+1;
	        end else begin
	            top.n_cur_time=1; top.cur_time=$time;
	        end
	    end
	end
	
	`endif


endmodule
