module cache_ctrl(//input 
				  clk, rst, Rd, Wr,valid,hit,dirty,Addr,
				  DataIn,c_dout,mem_dout,tag_out,
				 //output 
				 Done, Stall,CacheHit, c_enable,comp,c_wr,
				 mem_rd, mem_wr, mem_din,mem_addr, offset, c_din, valid_in,err);
input clk; 
input rst; 
input Rd;
input Wr;
input valid;
input hit;
input dirty;
input [15:0]Addr;
input [15:0]DataIn;
input [15:0]c_dout;
input [15:0]mem_dout;
input [4:0]tag_out;
output reg Done;
output reg Stall;
output reg CacheHit;
output reg c_enable; 
output reg comp;
output reg c_wr;
output reg mem_rd;
output reg mem_wr;
output reg [15:0] mem_din;
output reg [15:0]mem_addr; 
output reg [2:0]offset; 
output reg [15:0]c_din;// data written to cache can be from request or mem 
output reg valid_in;
output reg err;


parameter IDLE=4'b0000, CR=4'b0001, WB_0=4'b0010, WB_1=4'b0011,WB_2=4'b1100, WB_3=4'b1101,
		  CW=4'b0100, F_C0=4'b0101, F_C1=4'b0110, F_C2=4'b0111,
		  F_C3=4'b1000, F_C4=4'b1001, F_C5=4'b1010, END=4'b1011,ERROR=4'b1111;
		  
reg [3:0]next_state; 
wire [3:0]curr_state; 


wire wb_fc;

wire fc_wb;

assign wb_fc=(Rd & ~hit & valid & dirty)?1:0;
assign fc_wb=(Wr & (~valid |(~hit & ~dirty)))?1:0;

dff state [3:0] (.q(curr_state), .d(next_state), .clk(clk), .rst(rst));

always@(*)begin
		next_state=IDLE;
		Done=0;
		CacheHit=0;
		Stall=0;
		c_enable=0;
		comp=0;
		c_wr=0;
		mem_rd=0;
		mem_wr=0;
		mem_din=16'h0;
		mem_addr=16'h0;
		c_din=DataIn;
		valid_in=0;
		offset=Addr[2:0];
		err=0;
		
	case(curr_state)

		IDLE:begin
			next_state=(Rd & ~Wr)? CR: (Wr & ~ Rd)? CW:IDLE;//Rd ->Cache Read, Wr->Cache Write 
		end 
		
		CW:begin//compare write
			comp=1;
			c_wr=1;
			c_enable=1;
			Done=hit & valid;
			CacheHit=hit & valid;
      Stall=1;
			//next_state=(hit & valid)?IDLE:(~hit & valid & dirty)? WB_0: (~valid)?F_C0:(valid & ~hit & ~dirty)?END:ERROR;
	  next_state=(hit & valid)?IDLE:(~hit & valid & dirty)? WB_0: (~valid|(~hit & ~dirty))?F_C0:ERROR;

    end	

		WB_0:begin//access read, write back to mem 
			comp=0;
			c_wr=0;
			c_enable=1;
			mem_wr=1;
		 	mem_addr={tag_out, Addr[10:0]};
      //mem_addr=Addr;
			mem_din=c_dout;
			Stall=1;
			next_state=WB_1;
      c_enable=1;
		end 
		
		WB_1:begin
			Stall=1;
      Done=(wb_fc)?0:1;
			next_state=(wb_fc)?WB_2:IDLE;
      c_enable=1;
		end
   
   WB_2:begin
     Stall=1;
     next_state=WB_3;
     c_enable=1;
   
   end 
   
   WB_3:begin 
    Stall=1;
    next_state=F_C0;
    c_enable=1;
   
   end 

		CR:begin//compare read 
			comp=1;
			c_wr=0;
			c_enable=1;
			Done=hit & valid; 
			CacheHit=hit & valid;
      Stall=1;
			next_state=(hit & valid)?IDLE:(~hit & valid & dirty)? WB_0:(~valid | (~hit & ~dirty))?F_C0:ERROR;
		end	
		F_C0:begin //access write  fetch block 0
   			comp=0;
			c_wr=1;
			c_enable=1;
      mem_rd=1;
			mem_addr={Addr[15:3], 2'b00,Addr[0]};
			Stall=1;
			next_state=F_C1;
		end
		F_C1:begin //fetch block 1
   			comp=0;
			c_wr=1;
			c_enable=1;
      mem_rd=1;
			mem_addr={Addr[15:3], 2'b01, Addr[0]};
			Stall=1;
			next_state=F_C2;
		end
		F_C2:begin //fetch block 2, write block 0 to cache 
			mem_rd=1;
			mem_addr={Addr[15:3], 2'b10, Addr[0]};
			Stall=1;
			
			comp=0;
			c_wr=1;
			//c_enable=(~Wr|(Wr & Addr[2:1]!=2'b00))?1:0;
      c_enable=1;
			offset={2'b00, Addr[0]};
			c_din=(~Wr|(Wr & Addr[2:1]!=2'b00))?mem_dout:DataIn;
			valid_in=1;
			next_state=F_C3;
		end
		F_C3:begin //fectch block 3, write block 1 to cache 
			mem_rd=1;
			mem_addr={Addr[15:3], 2'b11, Addr[0]};
			Stall=1;
			
			comp=0;
			c_wr=1;
			//c_enable=(~Wr|(Wr & Addr[2:1]!=2'b01))?1:0;
      c_enable=1;
			offset={2'b01, Addr[0]};
			c_din=(~Wr|(Wr & Addr[2:1]!=2'b01))?mem_dout:DataIn;
			valid_in=1;
			next_state=F_C4;
		end
		F_C4:begin //write block 2 to cache 
			Stall=1;
			
			comp=0;
			c_wr=1;
			//c_enable=(~Wr|(Wr & Addr[2:1]!=2'b10))?1:0;
      c_enable=1;
			offset={2'b10, Addr[0]};
			c_din=(~Wr|(Wr & Addr[2:1]!=2'b10))?mem_dout:DataIn;
			valid_in=1;
			next_state=F_C5;	
		end
		F_C5:begin //write block 3 to cache, the current cacheline should be filled 
      Stall=1;
			
			comp=0;
			c_wr=1;
			//c_enable=(~Wr|(Wr & Addr[2:1]!=2'b11))?1:0;
      c_enable=1;
			offset={2'b11, Addr[0]};
			c_din=(~Wr|(Wr & Addr[2:1]!=2'b11))?mem_dout:DataIn;
			valid_in=1;
			next_state=(fc_wb)?WB_0:END;	

		end
    
    END:begin
      Stall=1; 
      Done=1;
      comp=0;
      c_wr=0;
      offset=Addr[2:0];
      c_enable=1;
      next_state=IDLE;
    end 
		ERROR:begin
			next_state=ERROR;
			err=1;
		end
		default:begin
		next_state=ERROR;
		Done=0;
		CacheHit=0;
		Stall=0;
		c_enable=0;
		comp=0;
		c_wr=0;
		mem_rd=0;
		mem_wr=0;
		mem_din=16'h0;
		mem_addr=16'h0;
		c_din=DataIn;
		valid_in=0;
		offset=Addr[2:0];
		err=1;
		end 

	endcase  
end 


endmodule 

