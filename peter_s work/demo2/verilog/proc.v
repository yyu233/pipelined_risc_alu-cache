/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module proc (/*AUTOARG*/
   // Outputs
   err, 
   // Inputs
   clk, rst
   );

   input clk;
   input rst;

   output err;

   // None of the above lines can be modified

   // OR all the err ouputs for every sub-module and assign it as this
   // err output
   
   // As desribed in the homeworks, use the err signal to trap corner
   // cases that you think are illegal in your statemachines
   
   
    /* your code here */

	// Instruction fetch stage
	wire [15:0] IF_PC_2, IF_instr;
	wire [15:0] branch_PC;
	wire IF_HALT, ID_HALT, take_branch, IF_ID_nowrite;
	IF fetch (.branch_PC(branch_PC), .take_branch(take_branch), .HALT(ID_HALT), .stall(IF_ID_nowrite), .clk(clk), .rst(rst),
		// Outputs
		.PC_2(IF_PC_2), .instr(IF_instr), .IF_HALT(IF_HALT));

	// Instruction decode stage
	wire [15:0] IF_ID_instr, IF_ID_PC_2, ID_instr, ID_rs, ID_r2, ID_s_ext, ID_PC_2;
	wire ID_reg_en, ID_b_sel, ID_mem_en, ID_mem_wr, IF_ID_HALT, ID_err;
	wire IF_flush;
	wire [15:0] IW_writedata;
	wire IW_reg_en, IE_reg_en, IM_reg_en;
	wire [2:0] ID_writeregsel, IW_writeregsel, IE_writeregsel, IM_writeregsel;

	IF_ID pipeFD (.IF_instr(IF_instr), .IF_PC_2(IF_PC_2), .IF_flush(IF_flush),
		.IF_ID_nowrite(IF_ID_nowrite), .IF_HALT(IF_HALT), .clk(clk), .rst(rst),
		// Outputs
		.ID_instr(IF_ID_instr), .IF_ID_PC_2(IF_ID_PC_2), .IF_ID_HALT(IF_ID_HALT));

	ID decode (.instr(IF_ID_instr), .IF_ID_PC_2(IF_ID_PC_2), 
		.IW_reg_en(IW_reg_en), .IW_writedata(IW_writedata),
		.IW_writeregsel(IW_writeregsel), .IE_IM_writereg(IM_writeregsel),
		.ID_IE_reg_en(IE_reg_en), .IE_IM_reg_en(IM_reg_en),
		.ID_IE_writereg(IE_writeregsel), .IF_ID_HALT(IF_ID_HALT), .clk(clk),
		.rst(rst),
		// Outputs
		.reg_en(ID_reg_en), .b_sel(ID_b_sel), .mem_en(ID_mem_en),
		.mem_wr(ID_mem_wr), .rs(ID_rs), .r2(ID_r2), .sign_ext(ID_s_ext),
		.ID_instr(ID_instr), .writeregsel(ID_writeregsel),
		.IF_flush(IF_flush), .IF_ID_nowrite(IF_ID_nowrite), .ID_PC_2(ID_PC_2),
		.ID_HALT(ID_HALT), .branch_taken(take_branch), .branch_PC(branch_PC),
		.err(ID_err));

	// Execute stage
	wire [15:0] IE_instr, IE_s_ext, IE_rs, IE_r2, IE_alu_result, IE_PC_2;
	wire IE_alu_zero, IE_alu_ofl, IE_alu_cout;

	ID_IE pipeDE (.ID_instr(ID_instr), .ID_s_ext(ID_s_ext),
		.ID_reg_en(ID_reg_en), .ID_b_sel(ID_b_sel), .ID_mem_en(ID_mem_en),
		.ID_mem_wr(ID_mem_wr), .ID_rs(ID_rs), .ID_r2(ID_r2),
		.ID_writeregsel(ID_writeregsel), .ID_PC_2(ID_PC_2), .ID_HALT(ID_HALT),
		.clk(clk), .rst(rst), 
		// Outputs
		.IE_instr(IE_instr), .IE_s_ext(IE_s_ext), .IE_reg_en(IE_reg_en),
		.IE_b_sel(IE_b_sel), .IE_mem_en(IE_mem_en), .IE_mem_wr(IE_mem_wr),
		.IE_rs(IE_rs), .IE_r2(IE_r2), .IE_writeregsel(IE_writeregsel),
		.IE_PC_2(IE_PC_2), .IE_HALT(IE_HALT));

	IE execute (.instr(IE_instr), .sign_ext(IE_s_ext), .rs(IE_rs),
		.r2(IE_r2), .b_sel(IE_b_sel),
		// Outputs
		.alu_result(IE_alu_result), .alu_zero(IE_alu_zero),
		.alu_ofl(IE_alu_ofl), .Cout(IE_alu_cout));

	// Memory stage
	wire [15:0] IM_r2, IM_alu_out, IM_dmem_out, IM_instr, IM_s_ext, IM_rs,
		IM_PC_2;
	wire IM_alu_zero, IM_alu_ofl, IM_mem_en, IM_HALT, IM_lt_ctrl, IM_lte_ctrl;

	IE_IM pipeEM (
		.IE_instr(IE_instr), .IE_s_ext(IE_s_ext), .IE_reg_en(IE_reg_en),
		.IE_mem_en(IE_mem_en), .IE_mem_wr(IE_mem_wr),
		.IE_rs(IE_rs), .IE_r2(IE_r2), .IE_writeregsel(IE_writeregsel),
		.IE_alu_result(IE_alu_result), .IE_alu_zero(IE_alu_zero),
		.IE_alu_ofl(IE_alu_ofl), .IE_alu_cout(IE_alu_cout),
		.IE_PC_2(IE_PC_2), .IE_HALT(IE_HALT), .clk(clk), .rst(rst),
		// Outputs
		.IM_instr(IM_instr), .IM_s_ext(IM_s_ext), .IM_reg_en(IM_reg_en),
		.IM_mem_en(IM_mem_en), .IM_mem_wr(IM_mem_wr),
		.IM_rs(IM_rs), .IM_r2(IM_r2), .IM_writeregsel(IM_writeregsel),
		.IM_alu_result(IM_alu_out), .IM_alu_zero(IM_alu_zero),
		.IM_alu_ofl(IM_alu_ofl), .IM_alu_cout(IM_alu_cout),
		.IM_PC_2(IM_PC_2), .IM_HALT(IM_HALT));

	IM memory (.r2(IM_r2), .alu_out(IM_alu_out), .alu_zero(IM_alu_zero),
		.alu_ofl(IM_alu_ofl), .mem_en(IM_mem_en), .mem_wr(IM_mem_wr),
		.HALT(IM_HALT), .clk(clk), .rst(rst),
		// Outputs
		.dmem_out(IM_dmem_out), .lt_ctrl(IM_lt_ctrl), .lte_ctrl(IM_lte_ctrl));
	
	// Writeback stage
	wire [15:0] IW_instr, IW_alu_out, IW_dmem_out, IW_rs, IW_PC_2;
	wire IW_lt, IW_lte, IW_alu_cout, IW_HALT;

	IM_IW pipeMW (
		.IM_instr(IM_instr), .IM_reg_en(IM_reg_en),
		.IM_rs(IM_rs), .IM_writeregsel(IM_writeregsel),
		.IM_alu_result(IM_alu_out), .IM_alu_zero(IM_alu_zero),
		.IM_dmem_out(IM_dmem_out), .IM_lt(IM_lt_ctrl), .IM_lte(IM_lte_ctrl),
		.IM_alu_cout(IM_alu_cout), .IM_PC_2(IM_PC_2), .IM_HALT(IM_HALT),
		.clk(clk), .rst(rst),
		// Outputs
		.IW_instr(IW_instr), .IW_reg_en(IW_reg_en),
		.IW_rs(IW_rs), .IW_writeregsel(IW_writeregsel),
		.IW_alu_result(IW_alu_out), .IW_alu_zero(IW_alu_zero),
		.IW_dmem_out(IW_dmem_out), .IW_lt(IW_lt), .IW_lte(IW_lte),
		.IW_alu_cout(IW_alu_cout), .IW_PC_2(IW_PC_2), .IW_HALT(IW_HALT));

	IW writeback (.instr(IW_instr), .alu_out(IW_alu_out),
		.alu_zero(IW_alu_zero), .dmem_out(IW_dmem_out), .rs(IW_rs),
		.PC_2(IW_PC_2), .lt(IW_lt), .lte(IW_lte), .alu_cout(IW_alu_cout),
		// Outputs
		.writedata(IW_writedata), .writeregsel(IW_writeregsel));

	wire HALT;
	//always @(*) begin
		//$display("proc.v   write_en: %1b  reg: %1x  writedata: %4x  final halt: %1b", IW_reg_en, IW_writeregsel, IW_writedata, HALT);
	//end
	dff halt_delay (.d(IW_HALT), .q(HALT), .clk(clk), .rst(rst));
   
endmodule // proc
// DUMMY LINE FOR REV CONTROL :0:
