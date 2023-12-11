
module sign_extend (in [10:0], mode [1:0], out [15:0]);
	input [10:0] in;
	input [1:0] mode;
	/* The modes are: 
	* 	00 - 5 bit zero extension
	* 	01 - 5 bit sign extension
	* 	10 - 8 bit sign extension
	* 	11 - 11 bit sign extension
	*/

	output [15:0] out;

	wire extend;
	mux_4_1 extension (.InA(1'b0), .InB(in[4]), .InC(in[7]), .InD(in[10]),
		.S(mode), .Out(extend));
	assign out[4:0] = in[4:0];
	assign out[7:5] = (~mode[1]) ? {3{extend}} : in[7:5];
	assign out[10:8] = (mode != 2'b11) ? {3{extend}} : in[10:8];
	assign out[15:11] = {5{extend}};

endmodule
