module stall_counter(stall_count, clk, rst, stall, err);
	input [1:0] stall_count; // Number of cycles to stall the processor 
	input clk, rst;
	output reg stall;	// Asserted if the processor needs to continue to stall
	output reg err;

	reg stall_in;
	wire stall_out, stalle_out;
	dff stall_dff (.d(stall_in), .q(stall_out), .clk(clk), .rst(rst));
	dff stall_echo (.d(stall_out), .q(stalle), .clk(clk), .rst(rst));
	always@(*) begin
		case(stall_out)
			1'b0: begin
				stall = (stall_count != 2'b00) ? 1'b1 : 1'b0;
				stall_in = (stall_count == 2'b10) ? 1'b1 : 1'b0;
				err = (stall_count == 2'b11) ? 1'b1 : 1'b0;
			end
			1'b1: begin
				stall_in = 1'b0;
				stall = 1'b1;
				err = 1'b0;
			end
		endcase
	end
endmodule
