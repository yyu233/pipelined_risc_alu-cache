/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module rf_bypass (
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

   wire [15:0] rf_out1, rf_out2;
   rf rfile (.clk(clk),.rst(rst), .read1regsel(read1regsel),
	   .read2regsel(read2regsel), .writeregsel(writeregsel),
	   .writedata(writedata), .write(write),
	   //Outputs
	   .read1data(rf_out1), .read2data(rf_out2), .err(err));
   
   wire m1_sel, m2_sel;
   assign m1_sel = ~write | (writeregsel[2] ^ read1regsel[2]) | (writeregsel[1] ^ read1regsel[1]) | (writeregsel[0] ^ read1regsel[0]);
   mux16_2_1 m1(.InA(writedata), .InB(rf_out1), .S(m1_sel), .Out(read1data));

   assign m2_sel = ~write | (writeregsel[2] ^ read2regsel[2]) | (writeregsel[1] ^ read2regsel[1]) | (writeregsel[0] ^ read2regsel[0]);
   mux16_2_1 m2(.InA(writedata), .InB(rf_out2), .S(m2_sel), .Out(read2data));

endmodule
// DUMMY LINE FOR REV CONTROL :1:
