module MEM_WB(clk, rst, w1_reg_EX_MEM,reg_en_EX_MEM,writedata,
				w1_reg_MEM_WB,reg_en_MEM_WB,writedata_MEM_WB);
input clk;
input rst;
input [2:0]w1_reg_EX_MEM;
input reg_en_EX_MEM;
input [15:0]writedata;
output [2:0]w1_reg_MEM_WB;
output reg_en_MEM_WB;
output [15:0]writedata_MEM_WB;

dff w1_reg_dff[2:0](.q(w1_reg_MEM_WB), .d(w1_reg_EX_MEM), .clk(clk), .rst(rst));
dff reg_en_dff(.q(reg_en_MEM_WB), .d(reg_en_EX_MEM), .clk(clk), .rst(rst));
dff writedata_dff[15:0](.q(writedata_MEM_WB), .d(writedata), .clk(clk), .rst(rst));

endmodule 
