module for_unit2(read_reg1,rs,w1_reg_EX_MEM,reg_en_EX_MEM,writedata_EX_MEM,
				w1_reg_MEM_WB,reg_en_MEM_WB,writedata_MEM_WB,rs_bypass);
input [2:0]read_reg1;
input [15:0]rs;
input [2:0]w1_reg_EX_MEM;
input reg_en_EX_MEM;
input [15:0]writedata_EX_MEM;
input [2:0]w1_reg_MEM_WB;
input reg_en_MEM_WB;
input [15:0]writedata_MEM_WB;
output [15:0]rs_bypass;

wire rsbypassWB, rsbypassMEM;

//rs_bypass from WB;
assign rsbypassWB=(w1_reg_MEM_WB==read_reg1 &reg_en_MEM_WB & ~(w1_reg_EX_MEM==read_reg1 & reg_en_EX_MEM))?1:0;

//rs_bypass from MEM;
assign rsbypassMEM=(w1_reg_EX_MEM==read_reg1& reg_en_EX_MEM)?1:0;

assign rs_bypass=(rsbypassWB)?writedata_MEM_WB:(rsbypassMEM)?writedata_EX_MEM:rs;

endmodule 
