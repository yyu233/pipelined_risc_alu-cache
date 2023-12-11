module IF_ID(IF_instr, IF_PC_2, IF_flush, IF_ID_nowrite, IF_HALT, clk, rst,
	// Outputs
	ID_instr, IF_ID_HALT, IF_ID_PC_2);
	input [15:0] IF_instr, IF_PC_2;
	input IF_flush, IF_ID_nowrite, IF_HALT, clk, rst;
	output [15:0] ID_instr, IF_ID_PC_2;
	output IF_ID_HALT;

	wire [15:0] write = IF_ID_nowrite ? ID_instr : IF_flush ? 16'h0800 :
		IF_instr;
	wire halt_write = IF_ID_nowrite ? IF_ID_HALT : IF_flush ? 1'b0 : IF_HALT;
	wire [15:0] PC_write = IF_ID_nowrite ? IF_ID_PC_2 : IF_PC_2;
	dff instr [15:0] (.d(write), .q(ID_instr), .clk(clk), .rst(rst));
	dff PC_dff [15:0] (.d(PC_write), .q(IF_ID_PC_2), .clk(clk), .rst(rst));
	dff halt_dff (.d(halt_write), .q(IF_ID_HALT), .clk(clk), .rst(rst));
	
endmodule
