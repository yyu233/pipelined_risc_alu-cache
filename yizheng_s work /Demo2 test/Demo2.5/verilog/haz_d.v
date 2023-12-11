module haz_d(mem_en_ID_EX,mem_wr_ID_EX, w1_reg_ID_EX, read_reg1, read_reg2,
			 pause_pc, wrt_IF_ID);

input mem_en_ID_EX;
inout mem_wr_ID_EX;
input [2:0]w1_reg_ID_EX;
input [2:0]read_reg1;
input [2:0]read_reg2;
output pause_pc;
output wrt_IF_ID; 


assign { pause_pc, wrt_IF_ID}=(mem_en_ID_EX & ~mem_wr_ID_EX & (w1_reg_ID_EX==read_reg1 | w1_reg_ID_EX==read_reg2))?2'b10:2'b01;




endmodule 