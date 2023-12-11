module instr_decoder(instr_IF_ID, is_rst,w1_reg,reg_en,read_reg1,read_reg2,b_sel,mem_en,mem_wr,ext_16,
					alu_sign,alu_invA,alu_invB,alu_cin,pc_jump_B_sel, halt);

input [15:0]instr_IF_ID;
input is_rst;
output  [2:0]w1_reg;
output  reg_en;
output  [2:0]read_reg1;
output  [2:0]read_reg2;
output  b_sel;
output  mem_en;
output  mem_wr;

output  [15:0]ext_16;
output  alu_sign; 
output  alu_invA;
output  alu_invB;
output  alu_cin;
output  pc_jump_B_sel; 
output  halt;

//rf reg select number 
assign read_reg1=instr_IF_ID[10:8];
assign read_reg2=instr_IF_ID[7:5];


in_dest_ctrl en_ctrl(.instr(instr_IF_ID), .is_rst(is_rst), .w1_reg(w1_reg),.reg_en(reg_en),.b_sel(b_sel),.mem_en(mem_en),.mem_wr(mem_wr),.halt(halt));

alu_sign alu_s(.instr(instr_IF_ID),.sign(alu_sign));

alu_inv alu_i(.instr(instr_IF_ID), .invA(alu_invA), .invB(alu_invB), .Cin(alu_cin));

imm_ext sign_ext(.instr(instr_IF_ID),.ext_16(ext_16));

//pc_jump_B_sel
 pc_jump_B_sel jump_sel(.instr(instr_IF_ID), .pc_jump_B_sel(pc_jump_B_sel));
 
endmodule 

