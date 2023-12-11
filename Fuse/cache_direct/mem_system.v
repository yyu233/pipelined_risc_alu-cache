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

   wire [4:0] tag_in = Addr[15:11];
   wire [7:0] index_in = Addr[10:3];
   wire [2:0] offset_in = Addr[2:0];

   wire [3:0] state;
   reg [3:0] next_state;
   reg [2:0] cache_offset, mem_offset;
   reg write_mem, read_mem;
   reg en_cache, comp, write_cache, valid_in;

   // Cache wires
   wire [4:0] tag_out;
   wire [15:0] Cdata_out, Cdata_in;
   wire cache_hit, cache_valid, cache_dirty, cache_err;
   // Mem wires
   wire [15:0] Mdata_out;
   wire [4:0] mem_tag;
   wire mem_stall, mem_err;
   wire [3:0] mem_busy;

   /* data_mem = 1, inst_mem = 0 *
    * needed for cache parameter */
   parameter mem_type = 0;
   cache #(0 + mem_type) c0(// Outputs
                          .tag_out              (tag_out),
                          .data_out             (Cdata_out),
                          .hit                  (cache_hit),
                          .dirty                (cache_dirty),
                          .valid                (cache_valid),
                          .err                  (cache_err),
                          // Inputs
                          .enable               (en_cache),
                          .clk                  (clk),
                          .rst                  (rst),
                          .createdump           (createdump),
                          .tag_in               (tag_in),
                          .index                (index_in),
                          .offset               (cache_offset),
                          .data_in              (Cdata_in),
                          .comp                 (comp),
                          .write                (write_cache),
                          .valid_in             (valid_in));

   four_bank_mem mem(// Outputs
                     .data_out          (Mdata_out),
                     .stall             (mem_stall),
                     .busy              (mem_busy),
                     .err               (mem_err),
                     // Inputs
                     .clk               (clk),
                     .rst               (rst),
                     .createdump        (createdump),
                     .addr              ({mem_tag, index_in, mem_offset}),
                     .data_in           (Cdata_out),
                     .wr                (write_mem),
                     .rd                (read_mem));

   
   // your code here
   // FSM state names
   parameter Idle = 4'b0000;
   parameter DoneHit = 4'b0001;
   parameter W0 = 4'b0010;
   parameter W1 = 4'b0011;
   parameter W2 = 4'b0100;
   parameter W3 = 4'b0101;
   parameter R0 = 4'b0110;
   parameter R1 = 4'b0111;
   parameter R2 = 4'b1000;
   parameter R3 = 4'b1001;
   parameter S1 = 4'b1010;
   parameter S2 = 4'b1011;
   parameter WCache = 4'b1100;
   parameter RCache = 4'b1101;
   parameter DoneMiss = 4'b1110;
   // 4'b1111 unused

   wire [15:0] data_store_in, data_store_out;
   assign data_store_in = (state == RCache) ? Cdata_out : data_store_out;

   assign Cdata_in = ((state == Idle) | (state == DoneHit) | (state == DoneMiss) | (state == WCache)) ? DataIn : Mdata_out;
   //assign DataOut = (state == DoneMiss) ? data_store_out : Cdata_out;
   assign DataOut = Cdata_out;
   /*assign DataOut = ((state == Idle) | (state == DoneHit))
   					? Cdata_out : data_store_out;*/
   assign mem_tag = ((state == R0) | (state == R1) | (state == R2) | (state == R3)) ? tag_in : tag_out;

   dff FSM_state [3:0] (.d(next_state), .q(state), .clk(clk), .rst(rst));
   dff Data_Store [15:0] (.d(data_store_in), .q(data_store_out),
	   				      .clk(clk), .rst(rst));

   assign Done = ((state == DoneHit) | (state == DoneMiss)) ? 1 : 0;
   //assign Stall = ((state == Idle) | (state == DoneHit) | (state == DoneMiss)) ? 0 : 1 ;
   assign Stall = (state == Idle) ? 0 : 1;
   assign CacheHit = (state == DoneHit) ? 1 : 0;

   wire nop = ~Wr & ~Rd;
   wire c_hit = cache_hit & cache_valid;
   wire c_replace = ~cache_hit & cache_valid & cache_dirty;
   wire c_fetch = (~cache_hit & cache_valid & ~cache_dirty) | (~cache_valid);

   always@(*) begin
	   case (state)
		   Idle: begin
			   next_state = nop ? Idle : c_hit ? DoneHit : c_replace ? W0 : R0;
			   // Cache signals
			   en_cache = 1;
			   comp = 1;
			   write_cache = Wr;
			   valid_in = 0;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end
		   DoneHit: begin
			   //next_state = nop ? Idle : c_hit ? DoneHit : c_replace ? W0 : R0;
			   next_state = Idle;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end
		   DoneMiss: begin
			   //next_state = nop ? Idle : c_hit ? DoneHit : c_replace ? W0 : R0;
			   next_state = Idle;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end
		   W0: begin
			   next_state = mem_stall ? W0 : W1;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = 3'b000;
			   // Memory signals
			   write_mem = 1;
			   read_mem = 0;
			   mem_offset = 3'b000;
		   end
		   W1: begin
			   next_state = mem_stall ? W1 : W2;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = 3'b010;
			   // Memory signals
			   write_mem = 1;
			   read_mem = 0;
			   mem_offset = 3'b010;
		   end
		   W2: begin
			   next_state = mem_stall ? W2 : W3;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = 3'b100;
			   // Memory signals
			   write_mem = 1;
			   read_mem = 0;
			   mem_offset = 3'b100;
		   end
		   W3: begin
			   next_state = mem_stall ? W3 : R0;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = 3'b110;
			   // Memory signals
			   write_mem = 1;
			   read_mem = 0;
			   mem_offset = 3'b110;
		   end
		   R0: begin
			   next_state = mem_stall ? R0 : R1;
			   // Cache signals
			   en_cache = 0;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 1;
			   mem_offset = 3'b000;
		   end
		   R1: begin
			   next_state = mem_stall ? R1 : R2;
			   // Cache signals
			   en_cache = 0;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 1;
			   mem_offset = 3'b010;
		   end
		   R2: begin
			   next_state = mem_stall ? R2 : R3;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 1;
			   valid_in = 1;
			   cache_offset = 3'b000;
			   // Memory signals
			   write_mem = 0;
			   read_mem = 1;
			   mem_offset = 3'b100;
		   end
		   R3: begin
			   next_state = mem_stall ? R3 : S1;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 1;
			   valid_in = 1;
			   cache_offset = 3'b010;
			   // Memory signals
			   write_mem = 0;
			   read_mem = 1;
			   mem_offset = 3'b110;
		   end
		   S1: begin
			   next_state = S2;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 1;
			   valid_in = 1;
			   cache_offset = 3'b100;
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end
		   S2: begin
			   next_state = Wr ? WCache : RCache;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 1;
			   valid_in = 1;
			   cache_offset = 3'b110;
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end
		   WCache: begin
			   next_state = DoneMiss;
			   // Cache signals
			   en_cache = 1;
			   comp = 1;
			   write_cache = 1;
			   valid_in = 1;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end
		   RCache: begin
			   next_state = DoneMiss;
			   // Cache signals
			   en_cache = 1;
			   comp = 0;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end
	   endcase
   end

   assign err = cache_err | mem_err;
endmodule // mem_system

// DUMMY LINE FOR REV CONTROL :9:
