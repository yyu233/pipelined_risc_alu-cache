module ID_IE (ID_instr, ID_s_ext, ID_reg_en, ID_b_sel, ID_mem_en, ID_mem_wr,
		ID_rs, ID_r2, ID_writeregsel, ID_PC_2, ID_HALT, clk, rst,
		// Outputs
		IE_instr, IE_s_ext, IE_reg_en, IE_b_sel, IE_mem_en, IE_mem_wr, IE_rs,
		IE_r2, IE_writeregsel, IE_PC_2, IE_HALT);
	input [15:0] ID_instr, ID_s_ext, ID_rs, ID_r2, ID_PC_2;
	input ID_reg_en, ID_b_sel, ID_mem_en, ID_mem_wr, ID_HALT, clk, rst;
	input [2:0] ID_writeregsel;
	// Outputs
	output [15:0] IE_instr, IE_s_ext, IE_rs, IE_r2, IE_PC_2;
	output IE_reg_en, IE_b_sel, IE_mem_en, IE_mem_wr, IE_HALT;
	output [2:0] IE_writeregsel;

	dff instr [15:0] (.d(ID_instr), .q(IE_instr), .clk(clk), .rst(rst));
	dff s_ext [15:0] (.d(ID_s_ext), .q(IE_s_ext), .clk(clk), .rst(rst));
	dff reg_en (.d(ID_reg_en), .q(IE_reg_en), .clk(clk), .rst(rst));
	dff b_sel (.d(ID_b_sel), .q(IE_b_sel), .clk(clk), .rst(rst));
	dff mem_en (.d(ID_mem_en), .q(IE_mem_en), .clk(clk), .rst(rst));
	dff mem_wr (.d(ID_mem_wr), .q(IE_mem_wr), .clk(clk), .rst(rst));
	dff rs [15:0] (.d(ID_rs), .q(IE_rs), .clk(clk), .rst(rst));
	dff r2 [15:0] (.d(ID_r2), .q(IE_r2), .clk(clk), .rst(rst));
	dff writeregsel [2:0] (.d(ID_writeregsel), .q(IE_writeregsel), .clk(clk), .rst(rst));
	dff pc_2 [15:0] (.d(ID_PC_2), .q(IE_PC_2), .clk(clk), .rst(rst));
	dff halt (.d(ID_HALT), .q(IE_HALT), .clk(clk), .rst(rst));
endmodule
