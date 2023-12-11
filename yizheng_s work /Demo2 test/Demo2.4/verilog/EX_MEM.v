module EX_MEM(clk, rst, w1_reg_ID_EX, reg_en_ID_EX, mem_en_ID_EX, mem_wr_ID_EX, writedata_EX, alu_out, r2_ID_EX, wrt_dmem, halt_ID_EX,
				w1_reg_EX_MEM, reg_en_EX_MEM, mem_en_EX_MEM, mem_wr_EX_MEM, writedata_EX_MEM, alu_out_EX_MEM, r2_EX_MEM,wrt_dmem_EX_MEM,halt_EX_MEM);
input clk;
input rst; 
input [2:0]w1_reg_ID_EX;
input reg_en_ID_EX;
input mem_en_ID_EX;
input mem_wr_ID_EX;
input [15:0]writedata_EX ;
input [15:0]alu_out;
input [15:0]r2_ID_EX;
input wrt_dmem;
input halt_ID_EX;
output[2:0] w1_reg_EX_MEM;
output reg_en_EX_MEM;
output mem_en_EX_MEM;
output mem_wr_EX_MEM;
output [15:0]writedata_EX_MEM;
output [15:0]alu_out_EX_MEM;
output [15:0]r2_EX_MEM;
output wrt_dmem_EX_MEM;
output halt_EX_MEM;

dff w1_reg_dff[2:0](.q(w1_reg_EX_MEM), .d(w1_reg_ID_EX), .clk(clk), .rst(rst));
dff reg_en_dff(.q(reg_en_EX_MEM), .d(reg_en_ID_EX), .clk(clk), .rst(rst));
dff mem_en_dff(.q(mem_en_EX_MEM), .d(mem_en_ID_EX), .clk(clk), .rst(rst));
dff mem_wr_dff(.q(mem_wr_EX_MEM), .d(mem_wr_ID_EX), .clk(clk), .rst(rst));
dff writedataEX_MEM_dff[15:0](.q(writedata_EX_MEM), .d(writedata_EX), .clk(clk), .rst(rst));
dff alu_out_dff[15:0](.q(alu_out_EX_MEM), .d(alu_out), .clk(clk), .rst(rst));
dff r2_dff[15:0](.q(r2_EX_MEM), .d(r2_ID_EX), .clk(clk), .rst(rst));
dff wrt_dmem_dff[15:0](.q(wrt_dmem_EX_MEM), .d(wrt_dmem), .clk(clk), .rst(rst));
dff halt_dff(.q(halt_EX_MEM), .d(halt_ID_EX), .clk(clk), .rst(rst));

endmodule 
