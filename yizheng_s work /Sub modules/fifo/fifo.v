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

   wire [63:0]buffer_out;
   assign data_out=(fifo_empty==1)?64'h0:buffer_out;//empty fifo, data_out is driven by 0;
   
   wire w_enable;
   assign w_enable=(data_in_valid& ~fifo_full)?1:0;//only if fifo is not full and write signal asserted, then write to the fifo;
   
   wire [1:0]head;//point at where to pop 
   head_ctrl head_ptr(.clk(clk),.rst(rst),.pop_fifo(pop_fifo), .fifo_empty(fifo_empty), .curr_head(head));
   
   wire[1:0]tail;//point at where to write 
   tail_ctrl tail_ptr(.clk(clk), .rst(rst),.data_in_valid(data_in_valid),.fifo_full(fifo_full),.curr_tail(tail));
   
   buffer4x64 buffer(.w_addr(tail),.w_data(data_in),.r_addr(head),.clk(clk),.rst(rst),.w_enable(w_enable),.r_data(buffer_out));
   sc_5 sc(.data_in_valid(data_in_valid), .pop_fifo(pop_fifo), .clk(clk), .rst(rst), .fifo_empty(fifo_empty), .fifo_full(fifo_full), .err(err));
   

endmodule
// DUMMY LINE FOR REV CONTROL :1:
