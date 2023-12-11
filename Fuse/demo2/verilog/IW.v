module IW (instr, alu_out, alu_zero, dmem_out, rs, PC_2, lt, lte, alu_cout,
		   writedata, writeregsel);
	input [15:0] instr;
	input [15:0] alu_out;
	input alu_zero;
	input [15:0] dmem_out;
	input [15:0] rs;
	input [15:0] PC_2;
	input alu_cout, lt, lte;
	input [2:0] writeregsel;

	output [15:0] writedata;

	wrt_ctrl control (.instr(instr),.alu_result(alu_out),.mem_out(dmem_out),
		.rs(rs),.zero({{15{1'b0}},alu_zero}),.lt({{15{1'b0}},lt}),
		.lte({{15{1'b0}},lte}),.pc_add2(PC_2),.overflow({{15{1'b0}},alu_cout}),
		.writedata(writedata)); 
endmodule
