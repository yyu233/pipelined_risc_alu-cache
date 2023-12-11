module haz_d(reg_en_ID_EX,is_bj,mem_en_ID_EX,mem_wr_ID_EX, w1_reg_ID_EX, read_reg1, read_reg2,
			 stall_c, wrt_IF_ID);
input reg_en_ID_EX;
input is_bj;
input mem_en_ID_EX;
inout mem_wr_ID_EX;
input [2:0]w1_reg_ID_EX;
input [2:0]read_reg1;
input [2:0]read_reg2;
//output pause_pc;
output wrt_IF_ID; 
output [1:0]stall_c;
//wire [1:0]stall_c;

//assign { pause_pc, wrt_IF_ID}=(mem_en_ID_EX & ~mem_wr_ID_EX & (w1_reg_ID_EX==read_reg1 | w1_reg_ID_EX==read_reg2))?2'b10:2'b01;
assign { stall_c, wrt_IF_ID}=(mem_en_ID_EX & ~mem_wr_ID_EX & (w1_reg_ID_EX==read_reg1 | w1_reg_ID_EX==read_reg2))?3'b010:
                              (is_bj & (w1_reg_ID_EX==read_reg1)&reg_en_ID_EX)?3'b010:
                              (is_bj & mem_en_ID_EX & ~mem_wr_ID_EX &(w1_reg_ID_EX==read_reg1))?3'b100:3'b001;


endmodule 