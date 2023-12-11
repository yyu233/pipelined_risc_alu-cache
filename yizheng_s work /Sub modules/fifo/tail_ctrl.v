module tail_ctrl(clk, rst,data_in_valid,fifo_full,curr_tail);

input clk;
input rst;
input data_in_valid;
input fifo_full;
output [1:0] curr_tail;

reg[1:0]next_tail;
wire[1:0]curr_tail_temp;

assign curr_tail=curr_tail_temp;

parameter t_reg0=2'b00, t_reg1=2'b01, t_reg2=2'b10, t_reg3=2'b11;//where tail pointer currently points at 

dff tail_pos [1:0] (.q(curr_tail_temp), .d(next_tail), .clk(clk), .rst(rst));

always@*begin
	next_tail=t_reg0;
	case(curr_tail_temp)
		t_reg0:begin
			next_tail=(fifo_full | ~data_in_valid)?t_reg0:t_reg1;//fifo is full or no write signal, tail does not move 
		end
		t_reg1:begin
			next_tail=(fifo_full | ~data_in_valid)?t_reg1:t_reg2;
		end
		t_reg2:begin
			next_tail=(fifo_full | ~data_in_valid)?t_reg2:t_reg3;
		end
		t_reg3:begin
			next_tail=(fifo_full | ~data_in_valid)?t_reg3:t_reg0;
		end
	endcase

end 

endmodule 
