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
	wire err_out;

   	wire [15:0] instr, dmem_out,  pc_add2, instr_addr;
	wire [15:0] alu_out, rs, r2;
	wire alu_ofl, alu_zero, Cout;
	wire lt_ctrl, lte_ctrl;
	wire [15:0]pc_jump_out;
	wire pc_sel;
	wire [15:0]instr_IF_ID, pc_add2_IF_ID, instr_ID_EX;
	wire [2:0]w1_reg,read_reg1, read_reg2;
	wire reg_en, b_sel, mem_en, mem_wr, alu_sign, alu_invA, alu_invB, alu_cin, pc_jump_B_sel, halt;
	wire [15:0]ext_16;
	wire [2:0]w1_reg_EX_MEM, w1_reg_MEM_WB;
	wire reg_en_EX_MEM,reg_en_MEM_WB;
	wire [15:0]writedata,writedata_MEM_WB;
	wire [2:0]w1_reg_ID_EX;
	wire reg_en_ID_EX, b_sel_ID_EX, mem_en_ID_EX, mem_wr_ID_EX, alu_sign_ID_EX, alu_invA_ID_EX, alu_invB_ID_EX,
	alu_cin_ID_EX, halt_ID_EX;
	wire[15:0]ext_16_ID_EX, rs_ID_EX, r2_ID_EX, pc_add2_ID_EX,alu_b;
	wire wrt_dmem;
	wire [15:0]writedata_EX;
	wire [15:0] writedata_EX_MEM, alu_out_EX_MEM, r2_EX_MEM;
	wire mem_en_EX_MEM,mem_wr_EX_MEM,wrt_dmem_EX_MEM, halt_EX_MEM;
	wire reg_en_f, mem_en_f, mem_wr_f, pause_pc, wrt_IF_ID;
  wire [15:0]alu_A, alu_B;
  wire[15:0] dmem_in;
  wire is_rst;
  wire [2:0] read_reg1_ID_EX, read_reg2_ID_EX;
  wire [15:0]rs_SLBI;
	//PC
	pc_unit PC(.clk(clk),.rst(rst),.pc_jump_out(pc_jump_out),.pc_sel(pc_sel),.halt(halt),.pause_PC(pause_pc),.instr_addr(instr_addr),.PC_2(pc_add2));
	
	//Hazad detection unit 
	haz_d haz(.mem_en_ID_EX(mem_en_ID_EX),.mem_wr_ID_EX(mem_wr_ID_EX), .w1_reg_ID_EX(w1_reg_ID_EX), .read_reg1(read_reg1), 
			  .read_reg2(read_reg2),.reg_en(reg_en), .mem_en(mem_en), .mem_wr(mem_wr),.reg_en_f(reg_en_f),.mem_en_f(mem_en_f),
			  .mem_wr_f(mem_wr_f), .pause_pc(pause_pc), .wrt_IF_ID(wrt_IF_ID));
	
	// Instruction memory
	memory2c imem (.data_out(instr), .data_in({16{1'bx}}), .addr(instr_addr), 
		.enable(1'b1), .wr(1'b0), .createdump(1'b0), .clk(clk), .rst(rst));
		
	//IF/ID
	IF_ID  if_id(.clk(clk), .rst(rst),.instr(instr),.wrt_IF_ID(wrt_IF_ID),.pc_add2(pc_add2),.instr_IF_ID(instr_IF_ID),.pc_add2_IF_ID(pc_add2_IF_ID),.is_rst(is_rst));
	
	//instr_decoder
	instr_decoder decoder(.instr_IF_ID(instr_IF_ID),.is_rst(is_rst),.w1_reg(w1_reg),.reg_en(reg_en),.read_reg1(read_reg1),.read_reg2(read_reg2),
						.b_sel(b_sel),.mem_en(mem_en),.mem_wr(mem_wr),.ext_16(ext_16),.alu_sign(alu_sign),
						.alu_invA(alu_invA),.alu_invB(alu_invB),.alu_cin(alu_cin),.pc_jump_B_sel(pc_jump_B_sel), .halt(halt));

	// Register File

	rf_bypass rf(
           // Outputs
           .read1data(rs), .read2data(r2), .err(err_out),
           // Inputs
           .clk(clk), .rst(rst), .read1regsel(read_reg1), .read2regsel(read_reg2), .writeregsel(w1_reg_MEM_WB), .writedata(writedata_MEM_WB),
            .write(reg_en_MEM_WB)
           );
		
	//PC jump adder B sel unit 
	 pc_jump_B_sel  jump_B_sel(.instr(instr_IF_ID), .pc_jump_B_sel(pc_jump_B_sel));
	 
	 
	 //Create PC jump output value and PC sel signal
	  pc_jump_out jump_out(.instr_IF_ID(instr_IF_ID),.pc_jump_B_sel(pc_jump_B_sel),.rs(rs),
							.pc_add2_IF_ID(pc_add2_IF_ID),.ext_16(ext_16),.pc_sel(pc_sel),.pc_jump_out(pc_jump_out));
							
	//ID/EX
	ID_EX id_ex(.read_reg1(read_reg1), .read_reg2(read_reg2), .read_reg1_ID_EX(read_reg1_ID_EX), .read_reg2_ID_EX(read_reg2_ID_EX),
	.clk(clk),.rst(rst),.w1_reg(w1_reg),.reg_en(reg_en_f),.b_sel(b_sel),.mem_en(mem_en_f),.mem_wr(mem_wr_f),.instr_IF_ID(instr_IF_ID),
				.ext_16(ext_16),.alu_sign(alu_sign),.alu_invA(alu_invA),.alu_invB(alu_invB),
				.alu_cin(alu_cin),.rs(rs),.r2(r2),.pc_add2_IF_ID(pc_add2_IF_ID),.halt(halt),
				.w1_reg_ID_EX(w1_reg_ID_EX),.reg_en_ID_EX(reg_en_ID_EX),.b_sel_ID_EX(b_sel_ID_EX),.mem_en_ID_EX(mem_en_ID_EX),
				.mem_wr_ID_EX(mem_wr_ID_EX),.ext_16_ID_EX(ext_16_ID_EX),
				.alu_sign_ID_EX(alu_sign_ID_EX),.alu_invA_ID_EX(alu_invA_ID_EX),.alu_invB_ID_EX(alu_invB_ID_EX),
				.alu_cin_ID_EX(alu_cin_ID_EX),.rs_ID_EX(rs_ID_EX),.r2_ID_EX(r2_ID_EX),.pc_add2_ID_EX(pc_add2_ID_EX),.halt_ID_EX(halt_ID_EX),
				.instr_ID_EX(instr_ID_EX));
	
	//forward unit in charge of alu input at EX stage and datain to dmem at MEM stage
	for_unit_1 ins1(.b_sel(b_sel_ID_EX),.w1_reg_MEM_WB(w1_reg_MEM_WB),.w1_reg_EX_MEM(w1_reg_EX_MEM),.read_reg1_ID_EX(read_reg1_ID_EX),
  .read_reg2_ID_EX(read_reg2_ID_EX), 
					.reg_en_MEM_WB(reg_en_MEM_WB),.reg_en_EX_MEM(reg_en_EX_MEM),.mem_en_EX_MEM(mem_en_EX_MEM),.mem_wr_EX_MEM(mem_wr_EX_MEM),
					.writedata_MEM_WB(writedata_MEM_WB),.writedata_EX_MEM(writedata_EX_MEM), .r2_EX_MEM(r2_EX_MEM),.rs_ID_EX(rs_ID_EX),
					.alu_b_mux(alu_b),.alu_A(alu_A), .alu_B(alu_B), .dmem_in(dmem_in),.rs_SLBI(rs_SLBI));
	//ALU
	alu_b_mux alu_bmux (.b_sel(b_sel_ID_EX), .ext_16(ext_16_ID_EX), .r2(r2_ID_EX), .B(alu_b));
	alu ALU (.A(alu_A), .B(alu_B), .Cin(alu_cin_ID_EX), .Op(instr_ID_EX), .invA(alu_invA_ID_EX),
		.invB(alu_invB_ID_EX), .sign(alu_sign_ID_EX), .Out(alu_out), .Ofl(alu_ofl),
		.Z(alu_zero), .Cout(Cout));
		
	//< or <= unit 
	lt_lte lt_logic (.alu_result_15(alu_out[15]), .zero(alu_zero), .overflow(alu_ofl), .lt(lt_ctrl), .lte(lte_ctrl));
	
	//where does the writedata come from, does not consider dmem at this stage 
	wrt_ctrl control (.instr(instr_ID_EX),.alu_result(alu_out),
					.rs(rs_SLBI),.zero({{15{1'b0}},alu_zero}),.lt({{15{1'b0}},lt_ctrl}),
					.lte({{15{1'b0}},lte_ctrl}),.pc_add2(pc_add2),
					.overflow({{15{1'b0}},Cout}),.wrt_dmem(wrt_dmem),.writedata_EX(writedata_EX)); 

	//EX/MEM
	 EX_MEM ex_mem(.clk(clk), .rst(rst), .w1_reg_ID_EX(w1_reg_ID_EX), .reg_en_ID_EX(reg_en_ID_EX),.mem_en_ID_EX(mem_en_ID_EX), 
					.mem_wr_ID_EX(mem_en_ID_EX),.writedata_EX(writedata_EX),.alu_out(alu_out),.r2_ID_EX(r2_ID_EX),.wrt_dmem(wrt_dmem),
					.halt_ID_EX(halt_ID_EX),.w1_reg_EX_MEM(w1_reg_EX_MEM),.reg_en_EX_MEM(reg_en_EX_MEM),.mem_en_EX_MEM(mem_en_EX_MEM), 
					.mem_wr_EX_MEM(mem_wr_EX_MEM),.writedata_EX_MEM(writedata_EX_MEM),.alu_out_EX_MEM(alu_out_EX_MEM),
					.r2_EX_MEM(r2_EX_MEM),.wrt_dmem_EX_MEM(wrt_dmem_EX_MEM),.halt_EX_MEM(halt_EX_MEM));
	//data memory
	memory2c dmem (.data_out(dmem_out), .data_in(dmem_in), .addr(alu_out_EX_MEM),
		.enable(mem_en_EX_MEM), .wr(mem_wr_EX_MEM), .createdump(halt_EX_MEM), .clk(clk), .rst(rst));
	
	assign writedata=(wrt_dmem_EX_MEM)?dmem_out:writedata_EX_MEM;
	
	//MEM/WB
	MEM_WB mem_wb(.clk(clk), .rst(rst), .w1_reg_EX_MEM(w1_reg_EX_MEM),.reg_en_EX_MEM(reg_en_EX_MEM),.writedata(writedata),
				.w1_reg_MEM_WB(w1_reg_MEM_WB),.reg_en_MEM_WB(reg_en_MEM_WB),.writedata_MEM_WB(writedata_MEM_WB));
				


	assign err = err_out;

endmodule // proc
// DUMMY LINE FOR REV CONTROL :0:
