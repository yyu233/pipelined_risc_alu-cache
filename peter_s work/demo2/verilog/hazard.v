module hazard(instr, rs, s_ext, IE_IM_reg_en, ID_IE_reg_en,
		IE_IM_writereg, IF_ID_reg_rs, IF_ID_regR2, ID_IE_writereg, IF_ID_HALT,
		clk, rst,
		IF_flush, IF_ID_nowrite, push_nop, branch_taken, HALT, err);
	input [4:0] instr;
	input [15:0] rs, s_ext;
	input IE_IM_reg_en, ID_IE_reg_en;
	input [2:0] IE_IM_writereg, IF_ID_reg_rs, IF_ID_regR2, ID_IE_writereg;
	input IF_ID_HALT, clk, rst;

	// Asserted if the instruction going into the IF_ID register needs to be
	// changed to a nop (in the case of a branch taken)
	output IF_flush;
	// Asserted if the IF_ID register needs to maintain its value (in the
	// case of a stall)
	output IF_ID_nowrite;
	// Asserted if the instruction going into the ID_IE register needs to be
	// changed to a nop (in the case of a branch taken or a stall)
	output push_nop;
	output branch_taken, HALT, err;

	// Stall section
	wire [1:0] stall_count; // 2 bit wire that holds how many stall cycles
							// are needed
	wire stall, stall_err;
	assign stall_count = 
		// Read after write hazards with the register file
		(IE_IM_reg_en & 
		    ((IE_IM_writereg == IF_ID_reg_rs) | (IE_IM_writereg == IF_ID_regR2)))
			? 2'b01 :	// Stall for one cycle
		(ID_IE_reg_en & 
			((ID_IE_writereg == IF_ID_reg_rs) | (ID_IE_writereg == IF_ID_regR2)))
			? 2'b10 :	// Stall 2 cycles
		2'b00;	// Default 

	stall_counter sc (.stall_count(stall_count), .clk(clk), .rst(rst),
		// Outputs 
		.stall(stall), .err(stall_err));
	
	// Branch section
	wire branch_out;
	branch_detector bd (.rs(rs), .instr(instr), .branch_taken(branch_out));

	assign HALT = IF_ID_HALT & (~stall);
	assign branch_taken = branch_out & (~stall); // Stall takes priority
	assign push_nop = stall;
	assign IF_ID_nowrite = stall;
	assign IF_flush = branch_taken;
	assign err = stall_err | (branch_taken & stall);
endmodule
