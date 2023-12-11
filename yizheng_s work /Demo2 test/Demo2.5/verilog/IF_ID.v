module IF_ID(flush, clk, rst,instr,wrt_IF_ID,pc_add2,instr_IF_ID,pc_add2_IF_ID, is_rst);
input flush;
input clk;
input rst;
input [15:0]instr;
input wrt_IF_ID;
input [15:0]pc_add2;
output [15:0]instr_IF_ID;
output [15:0]pc_add2_IF_ID;
output is_rst;

wire rst_in=flush | rst;
register #(16) instr_dff(.writedata(instr),.clk(clk),.rst(rst_in),.enable(wrt_IF_ID),.regvalue(instr_IF_ID));
dff pc_add2_dff[15:0](.q(pc_add2_IF_ID), .d(pc_add2), .clk(clk), .rst(rst_in));

dff rst_dff (.q(is_rst), .d(rst), .clk(clk), .rst(1'b0));
endmodule 
