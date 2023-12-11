module IF (branch_PC, take_branch, HALT, stall, clk, rst, PC_2, instr, IF_HALT);
	input [15:0] branch_PC;
	input take_branch, HALT, stall, clk, rst;

	output [15:0] PC_2;
	output [15:0] instr;
	output IF_HALT;

	wire [15:0] IF_PC, PC_2, next_PC;

	assign IF_HALT = (instr[15:11] == 5'b00000) ? 1'b1 : 1'b0;

	dff pc [15:0] (.d(next_PC), .q(IF_PC), .clk(clk), .rst(rst));
	memory2c imem (.data_out(instr), .data_in({16{1'bx}}), .addr(IF_PC), 
		.enable(1'b1), .wr(1'b0), .createdump(1'b0), .clk(clk), .rst(rst));

	cla16 pc_2 (.C0(1'b0), .A(IF_PC), .B(16'h0002), .Sum(PC_2), .C15(), .C16());

	wire halt_out;
	dff halt_dff (.d(HALT | halt_out), .q(halt_out), .clk(clk), .rst(rst));
	assign next_PC = (HALT | halt_out | stall) ? IF_PC : (take_branch) ? branch_PC : PC_2;
endmodule
