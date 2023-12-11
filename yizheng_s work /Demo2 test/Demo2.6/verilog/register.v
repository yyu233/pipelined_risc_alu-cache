module register(writedata,clk,rst,enable,regvalue);
parameter WIDTH=1;
input [WIDTH-1:0]writedata;
input clk;
input rst;
input enable;
output[WIDTH-1:0]regvalue;

wire [WIDTH-1:0]d;
wire[WIDTH-1:0]q;

assign q=regvalue;

mux_2_1 write_enable[WIDTH-1:0](.InA(q),.InB(writedata),.S(enable),.Out(d));
dff bits[WIDTH-1:0](.q(regvalue), .d(d), .clk(clk), .rst(rst));

endmodule 
