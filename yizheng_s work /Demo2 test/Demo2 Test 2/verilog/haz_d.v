module haz_d(mem_en_ID_EX,mem_wr_ID_EX, w1_reg_ID_EX, read_reg1, read_reg2,
			reg_en, mem_en, mem_wr,reg_en_f,mem_en_f,mem_wr_f, pause_pc, wrt_IF_ID);

input mem_en_ID_EX;
inout mem_wr_ID_EX;
input [2:0]w1_reg_ID_EX;
input [2:0]read_reg1;
input [2:0]read_reg2;
input reg_en;
input mem_en;
input mem_wr;
output reg_en_f; 
output mem_en_f;
output mem_wr_f;
output pause_pc;
output wrt_IF_ID; 


assign {reg_en_f, mem_en_f, mem_wr_f, pause_pc, wrt_IF_ID}=(mem_en_ID_EX & ~mem_wr_ID_EX & (w1_reg_ID_EX==read_reg1 | w1_reg_ID_EX==read_reg2))?5'b00010:{reg_en, mem_en, mem_wr,1'b0,1'b1};




endmodule 
