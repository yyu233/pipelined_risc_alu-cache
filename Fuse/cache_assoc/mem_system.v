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

   wire nop;
   wire [3:0] state;
   reg [3:0] next_state;
   reg [2:0] cache_offset, mem_offset;
   reg write_mem, read_mem;
   reg en_cache, comp, write_cache, valid_in;

   // Cache wires
   wire [4:0] tag_out, tag_out0, tag_out1;
   wire [15:0] Cdata_out, Cdata_out0, Cdata_out1, Cdata_in;
   wire cache_hit0, cache_hit1, cache_valid0, cache_valid1,
	   cache_dirty0, cache_dirty1, cache_err0, cache_err1;
   wire write_cache0, write_cache1;
   // Mem wires
   wire [15:0] Mdata_out;
   wire [4:0] mem_tag;
   wire mem_stall, mem_err;
   wire [3:0] mem_busy;


   wire vic_in, vic_out, inst_in, inst_out;
   dff victimway(.d(vic_in), .q(vic_out), .clk(clk), .rst(rst));
   dff installway(.d(inst_in), .q(inst_out), .clk(clk), .rst(rst));
   /* data_mem = 1, inst_mem = 0 *
    * needed for cache parameter */
   parameter mem_type = 0;
   cache #(0 + mem_type) c0(// Outputs
                          .tag_out              (tag_out0),
                          .data_out             (Cdata_out0),
                          .hit                  (cache_hit0),
                          .dirty                (cache_dirty0),
                          .valid                (cache_valid0),
                          .err                  (cache_err0),
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
                          .write                (write_cache0),
                          .valid_in             (valid_in));
   cache #(2 + mem_type) c1(// Outputs
                          .tag_out              (tag_out1),
                          .data_out             (Cdata_out1),
                          .hit                  (cache_hit1),
                          .dirty                (cache_dirty1),
                          .valid                (cache_valid1),
                          .err                  (cache_err1),
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
                          .write                (write_cache1),
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
   //parameter DoneHit = 4'b0001;
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
   //parameter DoneMiss = 4'b1110;
   // 4'b1111 unused


   assign tag_out = (inst_out == 1'b0) ? tag_out0 : tag_out1;
   assign Cdata_out = (inst_out == 1'b0) ? Cdata_out0 : Cdata_out1;
   assign write_cache0 = (state == Idle) ? write_cache : (~inst_out & write_cache);
   assign write_cache1 = (state == Idle) ? write_cache : (inst_out & write_cache);

   assign Cdata_in = ((state == Idle) | (state == WCache))
   			? DataIn : Mdata_out;
   // Mux between the two cache data_out s
   assign DataOut = cache_hit0 ? Cdata_out0 : Cdata_out1;
   assign mem_tag = ((state == R0) | (state == R1) | (state == R2) | (state == R3)) ? tag_in : tag_out;
   assign vic_in = ((state == Idle) & ~nop) ? ~vic_out : vic_out;
   assign inst_in = ~((state == Idle) & ~nop) ? inst_out : ~cache_valid0 ? 0 :
	   ~cache_valid1 ? 1 : ~vic_out;

   dff FSM_state [3:0] (.d(next_state), .q(state), .clk(clk), .rst(rst));

   wire c_hit = (cache_hit0 & cache_valid0) | (cache_hit1 & cache_valid1);
   assign Done = (((state == Idle) & c_hit & (Wr | Rd)) | (state == WCache)
   			| (state == RCache)) ? 1 : 0;
   assign Stall = (((state == Idle) & nop) | ((state == Idle) & c_hit & (Wr
	   | Rd)) /*| (state == WCache) | (state == RCache)*/) ? 0 : 1;
   assign CacheHit = ((state == Idle) & c_hit & (Wr | Rd)) ? 1 : 0;

   assign nop = ~Wr & ~Rd;
   wire c_replace0 = (~cache_hit0 & cache_valid0 & cache_dirty0);
   wire c_replace1 = (~cache_hit1 & cache_valid1 & cache_dirty1);
   wire c_replace = inst_in ? c_replace1 : c_replace0;
   wire c_fetch0 = (~cache_hit0 & cache_valid0 & ~cache_dirty0) | (~cache_valid0);
   wire c_fetch1 = (~cache_hit1 & cache_valid1 & ~cache_dirty1) | (~cache_valid1);
   wire c_fetch = inst_in ? c_fetch1 : c_fetch0;


   always@(*) begin
	   case (state)
		   Idle: begin
			   next_state = nop ? Idle : c_hit ? Idle : c_fetch ? R0 : W0;
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
		   /*DoneHit: begin
			   next_state = Idle;
			   // Cache signals
			   en_cache = 1;
			   comp = 1;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end*/
		   /*DoneMiss: begin
			   next_state = Idle;
			   // Cache signals
			   en_cache = 1;
			   comp = 1;
			   write_cache = 0;
			   valid_in = 0;
			   cache_offset = Addr[2:0];
			   // Memory signals
			   write_mem = 0;
			   read_mem = 0;
			   mem_offset = Addr[2:0];
		   end*/
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
			   next_state = Idle;
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
			   next_state = Idle;
			   // Cache signals
			   en_cache = 1;
			   comp = 1;
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

   assign err = cache_err0 | cache_err1 | mem_err;
endmodule // mem_system

   


// DUMMY LINE FOR REV CONTROL :9:
