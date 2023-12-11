

module reg_16 (
	//Inputs
	clk, rst, writedata, write,
	//Outputs
	data
	);
	input clk, rst, write;
	input [15:0] writedata;
	output [15:0] data;

	dff ff0 (.d((writedata[0] & write) | (data[0] & ~write)), .q(data[0]), .clk(clk), .rst(rst));
	dff ff1 (.d((writedata[1] & write) | (data[1] & ~write)), .q(data[1]), .clk(clk), .rst(rst));
	dff ff2 (.d((writedata[2] & write) | (data[2] & ~write)), .q(data[2]), .clk(clk), .rst(rst));
	dff ff3 (.d((writedata[3] & write) | (data[3] & ~write)), .q(data[3]), .clk(clk), .rst(rst));
	dff ff4 (.d((writedata[4] & write) | (data[4] & ~write)), .q(data[4]), .clk(clk), .rst(rst));
	dff ff5 (.d((writedata[5] & write) | (data[5] & ~write)), .q(data[5]), .clk(clk), .rst(rst));
	dff ff6 (.d((writedata[6] & write) | (data[6] & ~write)), .q(data[6]), .clk(clk), .rst(rst));
	dff ff7 (.d((writedata[7] & write) | (data[7] & ~write)), .q(data[7]), .clk(clk), .rst(rst));
	dff ff8 (.d((writedata[8] & write) | (data[8] & ~write)), .q(data[8]), .clk(clk), .rst(rst));
	dff ff9 (.d((writedata[9] & write) | (data[9] & ~write)), .q(data[9]), .clk(clk), .rst(rst));
	dff ff10 (.d((writedata[10]&write) | (data[10] & ~write)), .q(data[10]), .clk(clk), .rst(rst));
	dff ff11 (.d((writedata[11]&write) | (data[11] & ~write)), .q(data[11]), .clk(clk), .rst(rst));
	dff ff12 (.d((writedata[12]&write) | (data[12] & ~write)), .q(data[12]), .clk(clk), .rst(rst));
	dff ff13 (.d((writedata[13]&write) | (data[13] & ~write)), .q(data[13]), .clk(clk), .rst(rst));
	dff ff14 (.d((writedata[14]&write) | (data[14] & ~write)), .q(data[14]), .clk(clk), .rst(rst));
	dff ff15 (.d((writedata[15]&write) | (data[15] & ~write)), .q(data[15]), .clk(clk), .rst(rst));
endmodule

