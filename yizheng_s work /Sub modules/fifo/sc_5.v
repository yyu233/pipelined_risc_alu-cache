module sc_5(data_in_valid, pop_fifo, clk, rst, fifo_empty, fifo_full, err);

input data_in_valid;
input pop_fifo;
input clk;
input rst;
output reg fifo_empty;
output reg fifo_full;
output reg err;

//staturated when count=4, curr_stat=S4
parameter IDLE=3'b000, S1=3'b001, S2=3'b010,S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b110, S7=3'b111;

reg[2:0]next_state; 
wire[2:0]curr_state;

dff state [2:0] (.q(curr_state), .d(next_state), .clk(clk), .rst(rst));

always@*begin
	next_state=IDLE;
	case(curr_state)
		IDLE:begin //empty fifo, count=0;
			next_state=(data_in_valid)?S1:IDLE;//write  ->count++ 
			fifo_empty=1;
			fifo_full=0;
		end
		S1:begin //count=1;
			next_state=(data_in_valid& ~pop_fifo)?S2://write && not pop ->count++
			((~data_in_valid & ~pop_fifo)|(data_in_valid & pop_fifo))?S1:IDLE;//(not write && not pop)||(write && pop)->count=count,else pop count--;
			fifo_empty=0;
			fifo_full=0;
		end
		S2:begin //count=2
			next_state=(data_in_valid& ~pop_fifo)?S3:
			((~data_in_valid & ~pop_fifo)|(data_in_valid & pop_fifo))?S2:S1;
			fifo_empty=0;
			fifo_full=0;
		end
		S3:begin //count=3
			next_state=(data_in_valid& ~pop_fifo)?S4:
			((~data_in_valid & ~pop_fifo)|(data_in_valid & pop_fifo))?S3:S2;
			fifo_empty=0;
			fifo_full=0;
		end
		S4:begin //count=4
			next_state=(~pop_fifo)?S4:S3;//not popfifo(don't care if write or not write)->count=count, else pop count--
			fifo_empty=0;
			fifo_full=1;
		end
		S5: begin //error state
			err=1;
		end
		S6: begin //error state
			err=1;
		end
		S7: begin //error state
			err=1;
		end
		default:begin 
			fifo_empty=0;
			fifo_full=0;
			err=0;
		end 
	endcase 
end 


endmodule 