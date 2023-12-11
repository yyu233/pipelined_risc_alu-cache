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
wire [15:0] writedata;
assign writedata=(flush)?16'h0800:instr;


register #(16) instr_dff(.writedata(writedata),.clk(clk),.rst(rst),.enable(wrt_IF_ID),.regvalue(instr_IF_ID));

register #(16) pc_add2_dff(.writedata(pc_add2),.clk(clk),.rst(rst),.enable(wrt_IF_ID),.regvalue(pc_add2_IF_ID));
dff rst_dff (.q(is_rst), .d(rst), .clk(clk), .rst(1'b0));


endmodule 
