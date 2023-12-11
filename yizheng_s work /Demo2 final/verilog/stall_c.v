module stall_c(clk, rst,stall_count, pause_pc,wrt_IF_ID,err);
input clk;
input rst;
input [1:0]stall_count;
output reg pause_pc;
output err;
output reg wrt_IF_ID;

parameter S0=1'b0, S1=1'b1;

reg next_state;
wire curr_state;

assign err=(stall_count==2'b11)?1:0;
dff state (.q(curr_state), .d(next_state), .clk(clk), .rst(rst));

always@* begin
	next_state=S0;
	case(curr_state)
		S0:begin
		{pause_pc, wrt_IF_ID}=(stall_count==2'b00)?2'b01:2'b10;
  
		next_state=(stall_count==2'b10)?S1:S0;
		end
		S1:begin
		{pause_pc,wrt_IF_ID}=2'b10;
		next_state=S0;
		end
	endcase 
end 
endmodule 
