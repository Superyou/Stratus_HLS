#ifdef ioConfig_PIN
	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
		if ( vv_add0 != NULL ) {
			esc_trace_signal( &vv_add0->clk, ( std::string(name()) + std::string( ".vv_add.clk" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->rst, ( std::string(name()) + std::string( ".vv_add.rst" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->cc_busy_o, ( std::string(name()) + std::string( ".vv_add.cc_busy_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->cc_interrupt_o, ( std::string(name()) + std::string( ".vv_add.cc_interrupt_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->cc_status_i, ( std::string(name()) + std::string( ".vv_add.cc_status_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->cc_exception_i, ( std::string(name()) + std::string( ".vv_add.cc_exception_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->cc_host_id_i, ( std::string(name()) + std::string( ".vv_add.cc_host_id_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_ready_o, ( std::string(name()) + std::string( ".vv_add.core_cmd_ready_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_valid_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_valid_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_inst_funct_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_funct_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_inst_rs1_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_rs1_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_inst_rs2_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_rs2_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_inst_xd_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_xd_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_inst_xs1_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_xs1_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_inst_xs2_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_xs2_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_inst_rd_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_rd_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_inst_opcode_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_opcode_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_rs1_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_rs1_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_cmd_rs2_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_rs2_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_resp_ready_i, ( std::string(name()) + std::string( ".vv_add.core_resp_ready_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_resp_valid_o, ( std::string(name()) + std::string( ".vv_add.core_resp_valid_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_resp_rd_o, ( std::string(name()) + std::string( ".vv_add.core_resp_rd_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->core_resp_data_o, ( std::string(name()) + std::string( ".vv_add.core_resp_data_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_req_ready_i, ( std::string(name()) + std::string( ".vv_add.mem_req_ready_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_req_valid_o, ( std::string(name()) + std::string( ".vv_add.mem_req_valid_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_req_addr_o, ( std::string(name()) + std::string( ".vv_add.mem_req_addr_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_req_tag_o, ( std::string(name()) + std::string( ".vv_add.mem_req_tag_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_req_cmd_o, ( std::string(name()) + std::string( ".vv_add.mem_req_cmd_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_req_typ_o, ( std::string(name()) + std::string( ".vv_add.mem_req_typ_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_req_phys_o, ( std::string(name()) + std::string( ".vv_add.mem_req_phys_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_req_data_o, ( std::string(name()) + std::string( ".vv_add.mem_req_data_o" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_valid_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_valid_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_addr_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_addr_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_tag_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_tag_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_cmd_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_cmd_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_typ_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_typ_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_data_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_data_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_has_data_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_has_data_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_data_word_bypass_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_data_word_bypass_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_store_data_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_store_data_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_nack_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_nack_i" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &vv_add0->mem_resp_replay_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_replay_i" ) ).c_str(), esc_trace_vcd );
		}
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		if ( vv_add0 != NULL ) {
			esc_trace_signal( &vv_add0->clk, ( std::string(name()) + std::string( ".vv_add.clk" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->rst, ( std::string(name()) + std::string( ".vv_add.rst" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->cc_busy_o, ( std::string(name()) + std::string( ".vv_add.cc_busy_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->cc_interrupt_o, ( std::string(name()) + std::string( ".vv_add.cc_interrupt_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->cc_status_i, ( std::string(name()) + std::string( ".vv_add.cc_status_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->cc_exception_i, ( std::string(name()) + std::string( ".vv_add.cc_exception_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->cc_host_id_i, ( std::string(name()) + std::string( ".vv_add.cc_host_id_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_ready_o, ( std::string(name()) + std::string( ".vv_add.core_cmd_ready_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_valid_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_valid_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_inst_funct_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_funct_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_inst_rs1_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_rs1_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_inst_rs2_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_rs2_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_inst_xd_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_xd_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_inst_xs1_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_xs1_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_inst_xs2_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_xs2_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_inst_rd_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_rd_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_inst_opcode_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_inst_opcode_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_rs1_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_rs1_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_cmd_rs2_i, ( std::string(name()) + std::string( ".vv_add.core_cmd_rs2_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_resp_ready_i, ( std::string(name()) + std::string( ".vv_add.core_resp_ready_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_resp_valid_o, ( std::string(name()) + std::string( ".vv_add.core_resp_valid_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_resp_rd_o, ( std::string(name()) + std::string( ".vv_add.core_resp_rd_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->core_resp_data_o, ( std::string(name()) + std::string( ".vv_add.core_resp_data_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_req_ready_i, ( std::string(name()) + std::string( ".vv_add.mem_req_ready_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_req_valid_o, ( std::string(name()) + std::string( ".vv_add.mem_req_valid_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_req_addr_o, ( std::string(name()) + std::string( ".vv_add.mem_req_addr_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_req_tag_o, ( std::string(name()) + std::string( ".vv_add.mem_req_tag_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_req_cmd_o, ( std::string(name()) + std::string( ".vv_add.mem_req_cmd_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_req_typ_o, ( std::string(name()) + std::string( ".vv_add.mem_req_typ_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_req_phys_o, ( std::string(name()) + std::string( ".vv_add.mem_req_phys_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_req_data_o, ( std::string(name()) + std::string( ".vv_add.mem_req_data_o" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_valid_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_valid_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_addr_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_addr_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_tag_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_tag_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_cmd_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_cmd_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_typ_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_typ_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_data_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_data_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_has_data_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_has_data_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_data_word_bypass_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_data_word_bypass_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_store_data_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_store_data_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_nack_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_nack_i" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &vv_add0->mem_resp_replay_i, ( std::string(name()) + std::string( ".vv_add.mem_resp_replay_i" ) ).c_str(), esc_trace_fsdb );
		}
	}
#endif

