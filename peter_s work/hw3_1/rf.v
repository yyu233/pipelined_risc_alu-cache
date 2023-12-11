/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module rf (
           // Outputs
           read1data, read2data, err,
           // Inputs
           clk, rst, read1regsel, read2regsel, writeregsel, writedata, write
           );
   input clk, rst;
   input [2:0] read1regsel;
   input [2:0] read2regsel;
   input [2:0] writeregsel;
   input [15:0] writedata;
   input        write;

   output [15:0] read1data;
   output [15:0] read2data;
   output        err;

   wire [7:0] writesel;
   decoder_3_8 write_decode (.In(writeregsel), .Out(writesel));

   wire [15:0] reg0_data, reg1_data, reg2_data, reg3_data, reg4_data,
	   reg5_data, reg6_data, reg7_data;
   reg_16 reg0 (.clk(clk),.rst(rst),.write(writesel[0] & write),.writedata(writedata),
	   .data(reg0_data));
   reg_16 reg1 (.clk(clk),.rst(rst),.write(writesel[1] & write),.writedata(writedata),
	   .data(reg1_data));
   reg_16 reg2 (.clk(clk),.rst(rst),.write(writesel[2] & write),.writedata(writedata),
	   .data(reg2_data));
   reg_16 reg3 (.clk(clk),.rst(rst),.write(writesel[3] & write),.writedata(writedata),
	   .data(reg3_data));
   reg_16 reg4 (.clk(clk),.rst(rst),.write(writesel[4] & write),.writedata(writedata),
	   .data(reg4_data));
   reg_16 reg5 (.clk(clk),.rst(rst),.write(writesel[5] & write),.writedata(writedata),
	   .data(reg5_data));
   reg_16 reg6 (.clk(clk),.rst(rst),.write(writesel[6] & write),.writedata(writedata),
	   .data(reg6_data));
   reg_16 reg7 (.clk(clk),.rst(rst),.write(writesel[7] & write),.writedata(writedata),
	   .data(reg7_data));


   mux16_8_1 read1(.InA(reg0_data),.InB(reg1_data),.InC(reg2_data),
	   .InD(reg3_data),.InE(reg4_data),.InF(reg5_data),.InG(reg6_data),
	   .InH(reg7_data),
	   .S(read1regsel),.Out(read1data));
   mux16_8_1 read2(.InA(reg0_data),.InB(reg1_data),.InC(reg2_data),
	   .InD(reg3_data),.InE(reg4_data),.InF(reg5_data),.InG(reg6_data),
	   .InH(reg7_data),
	   .S(read2regsel),.Out(read2data));

   assign err = 1'b0;


endmodule
// DUMMY LINE FOR REV CONTROL :1:
