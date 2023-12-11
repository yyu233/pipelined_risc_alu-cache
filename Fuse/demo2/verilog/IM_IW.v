module IM_IW(IM_instr, IM_reg_en, IM_rs, IM_writeregsel, IM_alu_result,
	IM_alu_zero, IM_alu_cout, IM_PC_2, IM_HALT, IM_dmem_out, IM_lt, IM_lte,
clk, rst,
	// Outputs
	IW_instr, IW_reg_en, IW_rs, IW_writeregsel, IW_alu_result, IW_alu_zero,
	IW_alu_cout, IW_dmem_out, IW_lt, IW_lte, IW_PC_2, IW_HALT); 

	input IM_reg_en, IM_alu_zero, IM_alu_cout, IM_HALT, IM_lt, IM_lte, clk, rst;
	input [15:0] IM_rs, IM_alu_result, IM_PC_2, IM_instr, IM_dmem_out;
	input [2:0] IM_writeregsel;

	output IW_reg_en, IW_alu_zero, IW_alu_cout, IW_HALT, IW_lt, IW_lte;
	output [15:0] IW_rs, IW_alu_result, IW_PC_2, IW_instr, IW_dmem_out;
	output [2:0] IW_writeregsel;

	dff dmem_out_dff [15:0] (.d(IM_dmem_out), .q(IW_dmem_out), .clk(clk), .rst(rst));
	dff lt_dff (.d(IM_lt), .q(IW_lt), .clk(clk), .rst(rst));
	dff lte_dff (.d(IM_lte), .q(IW_lte), .clk(clk), .rst(rst));
	dff instr_dff [15:0] (.d(IM_instr), .q(IW_instr), .clk(clk), .rst(rst));
	dff reg_en_dff (.d(IM_reg_en), .q(IW_reg_en), .clk(clk), .rst(rst));
	dff rs_dff [15:0] (.d(IM_rs), .q(IW_rs), .clk(clk), .rst(rst));
	dff writeregsel_dff [2:0] (.d(IM_writeregsel), .q(IW_writeregsel), .clk(clk), .rst(rst));
	dff alu_result_dff [15:0] (.d(IM_alu_result), .q(IW_alu_result), .clk(clk), .rst(rst));
	dff alu_zero_dff (.d(IM_alu_zero), .q(IW_alu_zero), .clk(clk), .rst(rst));
	dff alu_cout_dff (.d(IM_alu_cout), .q(IW_alu_cout), .clk(clk), .rst(rst));
	dff PC_2_dff [15:0] (.d(IM_PC_2), .q(IW_PC_2), .clk(clk), .rst(rst));
	dff HALT_dff (.d(IM_HALT), .q(IW_HALT), .clk(clk), .rst(rst));
endmodule
