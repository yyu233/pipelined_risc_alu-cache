module IF_ID(clk, rst,instr,wrt_IF_ID,pc_add2,instr_IF_ID,pc_add2_IF_ID, is_rst);
input clk;
input rst;
input [15:0]instr;
input wrt_IF_ID;
input [15:0]pc_add2;
output [15:0]instr_IF_ID;
output [15:0]pc_add2_IF_ID;
output is_rst;

register #(16) instr_dff(.writedata(instr),.clk(clk),.rst(rst),.enable(wrt_IF_ID),.regvalue(instr_IF_ID));
dff pc_add2_dff[15:0](.q(pc_add2_IF_ID), .d(pc_add2), .clk(clk), .rst(rst));

dff rst_dff (.q(is_rst), .d(rst), .clk(clk), .rst(1'b0));
endmodule 
