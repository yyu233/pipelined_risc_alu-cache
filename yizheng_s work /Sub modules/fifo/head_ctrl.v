module head_ctrl(clk,rst,pop_fifo, fifo_empty, curr_head);

input clk;
input rst;
input pop_fifo;
input fifo_empty;
output [1:0]curr_head;

reg [1:0]next_head;
wire[1:0]curr_head_temp;

assign curr_head=curr_head_temp;
parameter[1:0] h_reg0=2'b00, h_reg1=2'b01, h_reg2=2'b10, h_reg3=2'b11;//where head pointer currently points at 

dff head_pos [1:0] (.q(curr_head_temp), .d(next_head), .clk(clk), .rst(rst));

always@*begin
	next_head=h_reg0;
	case(curr_head_temp)

	h_reg0:begin//head currently points at reg0 
		next_head=(~pop_fifo|fifo_empty)?h_reg0:h_reg1;//not pop fifo or fifo is empty(pop or not pop fifo doesn't change anything), head points to reg0
	end
	
	h_reg1:begin//head currently points at reg1 
		next_head=(~pop_fifo|fifo_empty)?h_reg1:h_reg2;
	end
	
	h_reg2:begin//head currently points at reg2 
		next_head=(~pop_fifo|fifo_empty)?h_reg2:h_reg3;
	end
	
	h_reg3:begin//head currently points at reg3 
		next_head=(~pop_fifo|fifo_empty)?h_reg3:h_reg0;
	end

	endcase 
end 


endmodule
