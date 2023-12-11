/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module fifo(/*AUTOARG*/
   // Outputs
   data_out, fifo_empty, fifo_full, err,
   // Inputs
   data_in, data_in_valid, pop_fifo, clk, rst
   );
   input [63:0] data_in;
   input        data_in_valid;
   input        pop_fifo;

   input        clk;
   input        rst;
   output [63:0] data_out;
   output        fifo_empty;
   output        fifo_full;
   output        err;

   //your code here
   wire [63:0] r0_out, r1_out, r2_out, r3_out;
   reg [63:0] r0_in, r1_in, r2_in, r3_in;

   // r0 is the head of the FIFO
   dff r0 [63:0] (.q(r0_out), .d(r0_in), .clk(clk), .rst(rst));
   dff r1 [63:0] (.q(r1_out), .d(r1_in), .clk(clk), .rst(rst));
   dff r2 [63:0] (.q(r2_out), .d(r2_in), .clk(clk), .rst(rst));
   dff r3 [63:0] (.q(r3_out), .d(r3_in), .clk(clk), .rst(rst));

   // The dff stores the number of data elements stored.
   wire [2:0] count;
   reg [2:0] new_count;
   dff counter [2:0] (.q(count), .d(new_count), .clk(clk), .rst(rst));

   reg [63:0] out_reg;
   reg empty, full, err_reg;
   assign data_out = out_reg;
   assign fifo_full = full;
   assign fifo_empty = empty;
   assign err = err_reg;

   always@(*) begin
	   case(count) 
		   3'b000: begin
			   r0_in = data_in_valid ? data_in : r0_out;
			   r1_in = r1_out;
			   r2_in = r2_out;
			   r3_in = r3_out;
			   new_count = data_in_valid;
			   empty = 1'b1;
			   full = 1'b0;
			   out_reg = 64'b0;
			   err_reg = 1'b0;
		   end
		   3'b001: begin
			   r0_in = ({data_in_valid, pop_fifo} == 2'b11) ? data_in : r0_out;
			   r1_in = data_in;
			   r2_in = r2_out;
			   r3_in = r3_out;
			   new_count = ((data_in_valid ^ pop_fifo) == 1'b0) ? 3'b001 : 
				   pop_fifo ? 3'b000 : 3'b010;
			   empty = 1'b0;
			   full = 1'b0;
			   out_reg = r0_out;
			   err_reg = 1'b0;
		   end
		   3'b010: begin
			   r0_in = (pop_fifo == 1'b1) ? r1_out : r0_out;
			   r1_in = ({data_in_valid, pop_fifo} == 2'b11) ? data_in : r1_out;
			   r2_in = data_in;
			   r3_in = r3_out;
			   new_count = ((data_in_valid ^ pop_fifo) == 1'b0) ? 3'b010 : 
				   pop_fifo ? 3'b001 : 3'b011;
			   empty = 1'b0;
			   full = 1'b0;
			   out_reg = r0_out;
			   err_reg = 1'b0;
		   end
		   3'b011: begin
			   r0_in = (pop_fifo == 1'b1) ? r1_out : r0_out;
			   r1_in = (pop_fifo == 1'b1) ? r2_out : r1_out;
			   r2_in = ({data_in_valid, pop_fifo} == 2'b11) ? data_in : r2_out;
			   r3_in = data_in;
			   new_count = ((data_in_valid ^ pop_fifo) == 1'b0) ? 3'b011 : 
				   pop_fifo ? 3'b010 : 3'b100;
			   empty = 1'b0;
			   full = 1'b0;
			   out_reg = r0_out;
			   err_reg = 1'b0;
		   end
		   3'b100: begin
			   r0_in = (pop_fifo == 1'b1) ? r1_out : r0_out;
			   r1_in = (pop_fifo == 1'b1) ? r2_out : r1_out;
			   r2_in = (pop_fifo == 1'b1) ? r3_out : r2_out;
			   r3_in = r3_out;
			   new_count = pop_fifo ? 3'b011 : 3'b100;
			   empty = 1'b0;
			   full = 1'b1;
			   out_reg = r0_out;
			   err_reg = 1'b0;
		   end
		   3'b101: begin
			   r0_in = r0_out; r1_in = r1_out; r2_in = r2_out; r3_in = r3_out;
			   new_count = count; out_reg = r0_out;
			   empty = 1'b0; full = 1'b0;
			   err_reg = 1'b1;
		   end
		   3'b110: begin
			   r0_in = r0_out; r1_in = r1_out; r2_in = r2_out; r3_in = r3_out;
			   new_count = count; out_reg = r0_out;
			   empty = 1'b0; full = 1'b0;
			   err_reg = 1'b1;
		   end
		   3'b111: begin
			   r0_in = r0_out; r1_in = r1_out; r2_in = r2_out; r3_in = r3_out;
			   new_count = count; out_reg = r0_out;
			   empty = 1'b0; full = 1'b0;
			   err_reg = 1'b1;
		   end
		   default: begin
			   r0_in = r0_out; r1_in = r1_out; r2_in = r2_out; r3_in = r3_out;
			   new_count = count; out_reg = r0_out;
			   empty = 1'b0; full = 1'b0;
			   err_reg = 1'b1;
		   end
	   endcase
   end

endmodule
// DUMMY LINE FOR REV CONTROL :1:
