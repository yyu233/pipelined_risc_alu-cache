module for_unit_1(b_sel,w1_reg_MEM_WB,w1_reg_EX_MEM,read_reg1_ID_EX,read_reg2_ID_EX, reg_en_MEM_WB,
				reg_en_EX_MEM,mem_en_EX_MEM,mem_wr_EX_MEM,writedata_MEM_WB,
				writedata_EX_MEM, r2_EX_MEM,rs_ID_EX,alu_b_mux,alu_A, alu_B, dmem_in, rs_SLBI);

input b_sel;				
input [2:0]w1_reg_MEM_WB;
input [2:0]w1_reg_EX_MEM;
input [2:0]read_reg1_ID_EX;
input [2:0]read_reg2_ID_EX;
input reg_en_MEM_WB;
input reg_en_EX_MEM;
input mem_en_EX_MEM;
input mem_wr_EX_MEM;
input[15:0]writedata_MEM_WB;
input[15:0]writedata_EX_MEM;
input [15:0]r2_EX_MEM;
input [15:0]rs_ID_EX;
input [15:0] alu_b_mux;//from alu_b_mux output 
output[15:0]alu_A;
output [15:0]alu_B;
output [15:0]dmem_in;
output [15:0]rs_SLBI;

wire A_bypassWB, B_bypassWB, A_bypassMEM, B_bypassMEM, rs_bypassWB,rs_bypassMEM;
//if alu_A from MEM_WB
assign A_bypassWB=(w1_reg_MEM_WB==read_reg1_ID_EX &reg_en_MEM_WB & ~(w1_reg_EX_MEM==read_reg1_ID_EX & reg_en_EX_MEM)) ?1:0;

//if alu_B from MEM_WB
assign B_bypassWB=(w1_reg_MEM_WB==read_reg2_ID_EX &reg_en_MEM_WB & b_sel & ~(w1_reg_EX_MEM==read_reg2_ID_EX & reg_en_EX_MEM)) ?1:0;

//if alu_A from EX_MEM
assign A_bypassMEM=(w1_reg_EX_MEM==read_reg1_ID_EX & reg_en_EX_MEM)?1:0;

//if alu_B from EX_MEM
assign B_bypassMEM=(w1_reg_EX_MEM==read_reg2_ID_EX & reg_en_EX_MEM & b_sel)?1:0;	

//LD followed by ST/STU
assign dmem_in=(w1_reg_MEM_WB==read_reg2_ID_EX & reg_en_MEM_WB & mem_en_EX_MEM & mem_wr_EX_MEM)?writedata_MEM_WB:r2_EX_MEM;

//if rs_SLBI from MEM_WB
assign rs_bypassWB=(w1_reg_MEM_WB==read_reg1_ID_EX &reg_en_MEM_WB & ~(w1_reg_EX_MEM==read_reg1_ID_EX & reg_en_EX_MEM)) ?1:0;
//if rs_SLBI from EX_MEM
assign rs_bypassMEM=(w1_reg_EX_MEM==read_reg1_ID_EX & reg_en_EX_MEM)?1:0;

assign alu_A=(A_bypassWB)?writedata_MEM_WB:(A_bypassMEM)?writedata_EX_MEM:rs_ID_EX;
assign alu_B=(B_bypassWB)?writedata_MEM_WB:(B_bypassMEM)?writedata_EX_MEM:alu_b_mux;
assign  rs_SLBI=(rs_bypassWB)?writedata_MEM_WB:(rs_bypassMEM)?writedata_EX_MEM:rs_ID_EX;

endmodule 
