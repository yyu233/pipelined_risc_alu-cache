module ID_EX(clk,rst,w1_reg,reg_en,b_sel,mem_en,mem_wr,instr_IF_ID,ext_16,alu_sign,alu_invA,alu_invB,alu_cin, rs,r2,pc_add2_IF_ID,halt,
				w1_reg_ID_EX,reg_en_ID_EX,b_sel_ID_EX,mem_en_ID_EX,mem_wr_ID_EX,ext_16_ID_EX,
				alu_sign_ID_EX,alu_invA_ID_EX,alu_invB_ID_EX,alu_cin_ID_EX,rs_ID_EX,r2_ID_EX,pc_add2_ID_EX,halt_ID_EX, instr_ID_EX);
input clk;
input rst;
input [2:0]w1_reg;
input reg_en;
input b_sel;
input mem_en;
input mem_wr;
input [15:0]instr_IF_ID;
input [15:0] ext_16;
input alu_sign;
input alu_invA;
input alu_invB;
input alu_cin; 
input [15:0]rs;
input [15:0]r2;
input [15:0]pc_add2_IF_ID;
input halt;
output [2:0]w1_reg_ID_EX;
output reg_en_ID_EX;
output b_sel_ID_EX;
output mem_en_ID_EX;
output mem_wr_ID_EX;
output [15:0]ext_16_ID_EX;
output alu_sign_ID_EX;
output alu_invA_ID_EX;
output alu_invB_ID_EX;
output alu_cin_ID_EX;
output [15:0]rs_ID_EX;
output [15:0]r2_ID_EX;
output [15:0]pc_add2_ID_EX;
output halt_ID_EX;
output [15:0] instr_ID_EX;

dff w1_reg_dff[2:0](.q(w1_reg_ID_EX), .d(w1_reg), .clk(clk), .rst(rst));
dff reg_en_dff(.q(reg_en_ID_EX), .d(reg_en), .clk(clk), .rst(rst));
dff b_sel_dff(.q(b_sel_ID_EX), .d(b_sel), .clk(clk), .rst(rst));
dff mem_en_dff(.q(mem_en_ID_EX), .d(mem_en), .clk(clk), .rst(rst));
dff mem_wr_dff(.q(mem_wr_ID_EX), .d(mem_wr), .clk(clk), .rst(rst));
dff ex_16_dff[15:0](.q(ext_16_ID_EX), .d(ext_16), .clk(clk), .rst(rst));
dff alu_sign_dff(.q(alu_sign_ID_EX), .d(alu_sign), .clk(clk), .rst(rst));
dff alu_invA_dff(.q(alu_invA_ID_EX), .d(alu_invA), .clk(clk), .rst(rst));
dff alu_invB_dff(.q(alu_invB_ID_EX), .d(alu_invB), .clk(clk), .rst(rst));
dff alu_cin_dff(.q(alu_cin_ID_EX), .d(alu_cin), .clk(clk), .rst(rst));
dff rs_dff[15:0](.q(rs_ID_EX), .d(rs), .clk(clk), .rst(rst));
dff r2_dff[15:0](.q(r2_ID_EX), .d(r2), .clk(clk), .rst(rst));
dff pc_add2_dff[15:0](.q(pc_add2_ID_EX), .d(pc_add2_IF_ID), .clk(clk), .rst(rst));
dff halt_dff(.q(halt_ID_EX), .d(halt), .clk(clk), .rst(rst));
dff instr_dff[15:0](.q(instr_ID_EX), .d(instr_IF_ID), .clk(clk), .rst(rst));

endmodule 
