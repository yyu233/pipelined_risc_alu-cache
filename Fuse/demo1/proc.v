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

   	wire [15:0] instr, dmem_out, sign_ext, PC_2, PC_out;
	wire [15:0] alu_out, rs, r2;
	wire alu_ofl, alu_zero, Cout;
	wire [15:0] writedata;
	wire mem_en, mem_wr, b_sel, reg_en;
	wire lt_ctrl, lte_ctrl;
	wire [2:0] w1_reg;
	wire HALT;
	pc_unit PC(.clk(clk), .rst(rst), .instr(instr), .rs(rs), .ext_16(sign_ext), .instr_addr(PC_out), .PC_2(PC_2), .halt(HALT));

	wrt_ctrl control (.instr(instr),.alu_result(alu_out),.mem_out(dmem_out),
		.rs(rs),.zero({{15{1'b0}},alu_zero}),.lt({{15{1'b0}},lt_ctrl}),
		.lte({{15{1'b0}},lte_ctrl}),.pc_add2(PC_2),
		.overflow({{15{1'b0}},Cout}),.writedata(writedata)); 

	in_dest_ctrl en_control (.instr(instr), .w1_reg(w1_reg), .reg_en(reg_en),
		.b_sel(b_sel), .mem_en(mem_en), .mem_wr(mem_wr));
	
	lt_lte lt_logic (.alu_result_15(alu_out[15]), .zero(alu_zero),
		.overflow(alu_ofl), .lt(lt_ctrl), .lte(lte_ctrl));

	// ALU
	wire [15:0] alu_b;
	wire alu_cin, alu_invA, alu_invB, alu_sign;
	alu_sign alu_s (.instr(instr), .sign(alu_sign));
	alu_inv alu_i (.instr(instr),.invA(alu_invA),.invB(alu_invB),.Cin(alu_cin));
	alu_b_mux alu_bmux (.b_sel(b_sel), .ext_16(sign_ext), .r2(r2), .B(alu_b));
	alu ALU (.A(rs), .B(alu_b), .Cin(alu_cin), .Op(instr), .invA(alu_invA),
		.invB(alu_invB), .sign(alu_sign), .Out(alu_out), .Ofl(alu_ofl),
		.Z(alu_zero), .Cout(Cout));

	// Sign extender
	imm_ext sign_extender (.instr(instr), .ext_16(sign_ext));

	// Register File
	rf rf (.clk(clk), .rst(rst), .read1regsel(instr[10:8]),
		.read2regsel(instr[7:5]), .writeregsel(w1_reg), .writedata(writedata),
		.write(reg_en), .read1data(rs), .read2data(r2), .err(err_out));

	// Instruction and data memory
	memory2c imem (.data_out(instr[15:0]), .data_in({16{1'bx}}), .addr(PC_out), 
		.enable(1'b1), .wr(1'b0), .createdump(1'b0), .clk(clk), .rst(rst));
	memory2c dmem (.data_out(dmem_out), .data_in(r2), .addr(alu_out),
		.enable(mem_en), .wr(mem_wr), .createdump(HALT), .clk(clk), .rst(rst));

	assign err = err_out;

endmodule // proc
// DUMMY LINE FOR REV CONTROL :0:
