module pc_ctrl(IF_PC, IF_ID_PC, rs, s_ext, stall, branch_taken, HALT, ID_PC_2,
			next_PC);

	input [15:0] IF_PC, IF_ID_PC;		
	input [15:0] rs, s_ext;
	input stall, branch_taken, HALT;
	output [15:0] ID_PC_2;
	output [15:0] next_PC;

	wire [15:0] PC_inc = (stall | HALT) ? 16'h0000 : 16'h0002;
	wire [15:0] branch_PC, PC_2;
	//Calculates the branch destination
	cla16 branch_adder (.C0(1'b0), .A(IF_PC), .B(s_ext),
		// Outputs
		.Sum(branch_PC), .C15(), .C16());
	cla16 IF_PC_2_adder (.C0(1'b0), .A(IF_PC), .B(PC_inc),
		// Outputs
		.Sum(PC_2), .C15(), .C16());

	assign next_PC = (branch_taken & (~HALT)) ? branch_PC : PC_2;

	cla16 IF_ID_PC_adder (.C0(1'b0), .A(IF_ID_PC), .B(16'h0002),
		.Sum(ID_PC_2), .C15(), .C16());
endmodule
