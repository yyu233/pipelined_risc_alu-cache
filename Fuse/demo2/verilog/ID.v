module ID (instr, IF_ID_PC_2, IW_reg_en, IW_writedata, IW_writeregsel,
		IE_IM_writereg, ID_IE_reg_en, IE_IM_reg_en, ID_IE_writereg,
		IF_ID_HALT, clk, rst,
		// Outputs
		reg_en, b_sel, mem_en, mem_wr, rs, r2, sign_ext, ID_instr,
		writeregsel, IF_flush, IF_ID_nowrite, ID_PC_2, ID_HALT, branch_taken, branch_PC, err);
	input [15:0] instr, IF_ID_PC_2;
	input [15:0] IW_writedata;
	input [2:0] ID_IE_writereg, IE_IM_writereg, IW_writeregsel;
	input IW_reg_en, ID_IE_reg_en, IE_IM_reg_en; 
	input IF_ID_HALT, clk, rst;
	
	output [15:0] rs, r2, sign_ext, ID_instr, ID_PC_2, branch_PC;
	output [2:0] writeregsel;
	output reg_en, b_sel, mem_en, mem_wr, IF_flush, IF_ID_nowrite, 
		ID_HALT, branch_taken, err;

	wire reg_en_out, b_sel_out, mem_en_out;
	wire push_nop;

	in_dest_ctrl en_control (.instr(instr), .w1_reg(writeregsel),
		.reg_en(reg_en_out), .b_sel(b_sel_out), .mem_en(mem_en_out),
		.mem_wr(mem_wr));

	assign reg_en = push_nop ? 1'b0 : reg_en_out;
	assign b_sel = push_nop ? 1'b0 : b_sel_out;
	assign mem_en = push_nop ? 1'b0 : mem_en_out;
	assign ID_instr = push_nop ? {5'b00001, instr[10:0]} : instr;
	
	hazard h_detect (.instr(instr[15:11]), .rs(rs), .s_ext(sign_ext),
		.IE_IM_reg_en(IE_IM_reg_en),
		.IE_IM_writereg(IE_IM_writereg), .IF_ID_reg_rs(instr[10:8]),
		.IF_ID_regR2(instr[7:5]), .ID_IE_reg_en(ID_IE_reg_en),
		.ID_IE_writereg(ID_IE_writereg), .IF_ID_HALT(IF_ID_HALT), .clk(clk),
		.rst(rst),
		// Outputs
		.IF_flush(IF_flush), .IF_ID_nowrite(IF_ID_nowrite),
		.push_nop(push_nop), .branch_taken(branch_taken), .HALT(ID_HALT), .err(err));

	rf_bypass rf (.clk(clk), .rst(rst), .read1regsel(instr[10:8]),
		.read2regsel(instr[7:5]), .writeregsel(IW_writeregsel),
		.writedata(IW_writedata), .write(IW_reg_en), .read1data(rs), 
		.read2data(r2), .err(err));

	imm_ext sign_extender (.instr(instr), .ext_16(sign_ext));

	wire [15:0] other_PC, JR_PC;
	cla16 branch_pc_adder (.C0(1'b0), .A(IF_ID_PC_2), .B(sign_ext), .Sum(other_PC), .C15(), .C16());
	cla16 branch_pc_adder2 (.C0(1'b0), .A(rs), .B(sign_ext), .Sum(JR_PC), .C15(), .C16());
	assign branch_PC = ((instr[15:11] == 5'b00101) | (instr[15:11] == 5'b00111)) ? JR_PC : other_PC;
	assign ID_PC_2 = IF_ID_PC_2;
endmodule
