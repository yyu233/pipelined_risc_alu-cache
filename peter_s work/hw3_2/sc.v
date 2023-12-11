/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */

module sc( clk, rst, ctr_rst, out, err);
   input clk;
   input rst;
   input ctr_rst;
   output reg[2:0] out;
   output reg err;

   // your code
   parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, 
   S4=3'b100, S5=3'b101, S6=3'b110, S7=3'b111;
   
   reg[2:0]next_state; 
   wire[2:0]curr_state;
   
 
   
   dff state [2:0] (.q(curr_state), .d(next_state), .clk(clk), .rst(rst));
   
   always@(*)begin 
		next_state=S0;
		case(curr_state)
			S0: begin 
				next_state = ~(ctr_rst | rst) ? S1 : S0;
				out = S0;
			end 
			S1: begin 
				next_state = ~(ctr_rst | rst) ? S2 : S0;
				out = S1;
			end 			
			S2: begin 
				next_state = ~(ctr_rst | rst) ? S3 : S0;
				out = S2;
			end 			
			S3: begin 
				next_state = ~(ctr_rst | rst) ? S4 : S0;
				out = S3;
			end
			S4: begin 
				next_state = ~(ctr_rst | rst) ? S5 : S0;
				out = S4;
			end
			S5: begin 
				next_state = ~(ctr_rst | rst) ? S5 : S0;
				out = S5;
			end
			S6: begin 

				err=1'b1;
			end
			S7: begin 

				err=1'b1;
			end
			default:begin
				out=S0;
				err=1'b0;
			end
		endcase 
   end 
endmodule

// DUMMY LINE FOR REV CONTROL :1:
