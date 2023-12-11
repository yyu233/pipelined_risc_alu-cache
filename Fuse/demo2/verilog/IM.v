module IM (r2, alu_out, alu_zero, alu_ofl, mem_en, mem_wr, HALT, clk, rst, dmem_out, lt_ctrl, lte_ctrl);
	input [15:0] r2;
	input [15:0] alu_out;
	input alu_zero;
	input alu_ofl;
	input mem_en;
	input mem_wr;
	input HALT;
	input clk;
	input rst;

	output [15:0] dmem_out;
	output lt_ctrl;
	output lte_ctrl;

	lt_lte lt_logic (.alu_result_15(alu_out[15]), .zero(alu_zero),
		.overflow(alu_ofl), .lt(lt_ctrl), .lte(lte_ctrl));

	memory2c dmem (.data_out(dmem_out), .data_in(r2), .addr(alu_out),
		.enable(mem_en), .wr(mem_wr), .createdump(HALT), .clk(clk), .rst(rst));
endmodule
