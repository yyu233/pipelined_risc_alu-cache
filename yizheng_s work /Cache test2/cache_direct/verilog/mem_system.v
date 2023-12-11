/* $Author: karu $ */
/* $LastChangedDate: 2009-04-24 09:28:13 -0500 (Fri, 24 Apr 2009) $ */
/* $Rev: 77 $ */

module mem_system(/*AUTOARG*/
   // Outputs
   DataOut, Done, Stall, CacheHit, err,
   // Inputs
   Addr, DataIn, Rd, Wr, createdump, clk, rst
   );
   
   input [15:0] Addr;
   input [15:0] DataIn;
   input        Rd;
   input        Wr;
   input        createdump;
   input        clk;
   input        rst;
   
   output [15:0] DataOut;
   output Done;
   output Stall;
   output CacheHit;
   output err;
   
	wire [15:0]c_dout, mem_dout,mem_din, mem_addr, c_din;
	wire c_enable, comp, c_wr, mem_rd, mem_wr, hit, dirty, valid,c_err, m_err,stall;
	wire [2:0] offset;
	wire [4:0]tag_out;
	wire [3:0] busy;
 assign DataOut=c_dout;
   /* data_mem = 1, inst_mem = 0 *
    * needed for cache parameter */
   parameter mem_type = 0;
   cache #(0 + mem_type) c0(// Outputs
                          .tag_out              (tag_out),
                          .data_out             (c_dout),
                          .hit                  (hit),
                          .dirty                (dirty),
                          .valid                (valid),
                          .err                  (err),
                          // Inputs
                          .enable               (c_enable),
                          .clk                  (clk),
                          .rst                  (rst),
                          .createdump           (createdump),
                          .tag_in               (Addr[15:11]),
                          .index                (Addr[10:3]),
                          .offset               (offset),
                          .data_in              (c_din),
                          .comp                 (comp),
                          .write                (c_wr),
                          .valid_in             (valid_in));

   four_bank_mem mem(// Outputs
                     .data_out          (mem_dout),
                     .stall             (stall),
                     .busy              (busy),
                     .err               (m_err),
                     // Inputs
                     .clk               (clk),
                     .rst               (rst),
                     .createdump        (createdump),
                     .addr              (mem_addr),
                     .data_in           (mem_din),
                     .wr                (mem_wr),
                     .rd                (mem_rd));

   
   // your code here

  cache_ctrl ctrl(//input 
				  .clk(clk), .rst(rst), .Rd(Rd), .Wr(Wr),.valid(valid),.hit(hit),.dirty(dirty),
				  .Addr(Addr),
				  .DataIn(DataIn),.c_dout(c_dout),.mem_dout(mem_dout), .tag_out(tag_out),
				 //output 
				 .Done(Done), .Stall(Stall),.CacheHit(CacheHit), .c_enable(c_enable),.comp(comp),
				 .c_wr(c_wr),
				 .mem_rd(mem_rd), .mem_wr(mem_wr), .mem_din(mem_din),.mem_addr(mem_addr), 
				 .offset(offset), .c_din(c_din), .valid_in(valid_in), .err(err));
 
   
endmodule // mem_system

// DUMMY LINE FOR REV CONTROL :9:
