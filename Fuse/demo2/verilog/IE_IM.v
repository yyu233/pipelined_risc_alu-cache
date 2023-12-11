module IE_IM(IE_instr, IE_s_ext, IE_reg_en, IE_mem_en, IE_mem_wr, IE_rs,
		IE_r2, IE_writeregsel, IE_alu_result, IE_alu_zero, IE_alu_ofl,
		IE_alu_cout, IE_PC_2, IE_HALT, clk, rst,
		// Outputs
		IM_instr, IM_s_ext, IM_reg_en, IM_mem_en, IM_mem_wr, IM_rs, IM_r2,
		IM_writeregsel, IM_alu_result, IM_alu_zero, IM_alu_ofl, IM_alu_cout,
		IM_PC_2, IM_HALT);
	input [15:0] IE_instr, IE_s_ext, IE_rs, IE_r2, IE_alu_result, IE_PC_2;
	input IE_reg_en, IE_mem_en, IE_mem_wr, IE_alu_zero, IE_alu_ofl, IE_alu_cout, IE_HALT, clk, rst;
	input [2:0] IE_writeregsel;
	output [15:0] IM_instr, IM_s_ext, IM_rs, IM_r2, IM_alu_result, IM_PC_2;
	output IM_reg_en, IM_mem_en, IM_mem_wr, IM_alu_zero, IM_alu_ofl, IM_alu_cout, IM_HALT;
	output [2:0] IM_writeregsel;

	dff instr_dff [15:0] (.d(IE_instr), .q(IM_instr), .clk(clk), .rst(rst));
	dff s_ext_dff [15:0] (.d(IE_s_ext), .q(IM_s_ext), .clk(clk), .rst(rst));
	dff reg_en_dff (.d(IE_reg_en), .q(IM_reg_en), .clk(clk), .rst(rst));
	dff mem_en_dff (.d(IE_mem_en), .q(IM_mem_en), .clk(clk), .rst(rst));
	dff mem_wr_dff (.d(IE_mem_wr), .q(IM_mem_wr), .clk(clk), .rst(rst));
	dff rs_dff [15:0] (.d(IE_rs), .q(IM_rs), .clk(clk), .rst(rst));
	dff r2_dff [15:0] (.d(IE_r2), .q(IM_r2), .clk(clk), .rst(rst));
	dff writeregsel_dff [2:0] (.d(IE_writeregsel), .q(IM_writeregsel), .clk(clk), .rst(rst));
	dff alu_result_dff [15:0] (.d(IE_alu_result), .q(IM_alu_result), .clk(clk), .rst(rst));
	dff alu_zero_dff (.d(IE_alu_zero), .q(IM_alu_zero), .clk(clk), .rst(rst));
	dff alu_ofl_dff (.d(IE_alu_ofl), .q(IM_alu_ofl), .clk(clk), .rst(rst));
	dff alu_cout_dff (.d(IE_alu_cout), .q(IM_alu_cout), .clk(clk), .rst(rst));
	dff PC_2_dff [15:0] (.d(IE_PC_2), .q(IM_PC_2), .clk(clk), .rst(rst));
	dff HALT_dff (.d(IE_HALT), .q(IM_HALT), .clk(clk), .rst(rst));
endmodule
