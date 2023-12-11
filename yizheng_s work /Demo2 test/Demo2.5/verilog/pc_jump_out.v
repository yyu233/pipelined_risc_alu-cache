module pc_jump_out(instr_IF_ID,pc_jump_B_sel,rs,pc_add2_IF_ID,ext_16,pc_sel,pc_jump_out, flush);
input [15:0]instr_IF_ID;
input pc_jump_B_sel;
input [15:0]rs;
input [15:0]pc_add2_IF_ID;
input [15:0]ext_16;
output pc_sel;//select the next pc value, 
output [15:0]pc_jump_out;//jump adder output
output flush;

wire[15:0] pc_jump_B;//jump adder input B, Branch, diplacement,->pc+2, JR, JALR ->rs, 2nd adder input B

assign pc_jump_B=(pc_jump_B_sel)?pc_add2_IF_ID:rs;

cla16  pc_jump(.C0(1'b0),.A(ext_16),.B(pc_jump_B),.Sum(pc_jump_out),.C15(),.C16());

pc_ctrl ins1(.instr(instr_IF_ID),.rs(rs),.pc_sel(pc_sel));

endmodule 
