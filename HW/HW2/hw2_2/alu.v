module alu (A, B, Cin, Op, invA, invB, sign, Out, Ofl, Z);
   
        input [15:0] A;
        input [15:0] B;
        input Cin;
        input [2:0] Op;
        input invA;
        input invB;
        input sign;
        output reg[15:0] Out;
        output Ofl;
        output Z;

   /*
	Your code goes here
   */
	wire C15, C16, Ofl_z,zero;
	wire [15:0] A_afinv, B_afinv, Sum, Out_s;
	input_inv	inv_A(.In(A), .Flag(invA),  .Out(A_afinv));
	input_inv   inv_B(.In(B), .Flag(invB),  .Out(B_afinv));
    cla16		adder(.C0(Cin),.A(A_afinv),.B(B_afinv),.Sum(Sum),.C15(C15),.C16(C16));
	ofl_detector	ofl_ins(.sign(sign), .C15(C15), .C16(C16), .Ofl(Ofl_z));
	zero_detector	zero_ins(.Sum(Sum), .Ofl(Ofl_z), .Out(zero));
	shifter shift(.In(A_afinv), .Cnt(B_afinv[3:0]), .Op(Op[1:0]), .Out(Out_s));
	assign Ofl=Ofl_z;
	assign Z=zero;
	always@(*) begin 
	
		case(Op[2])
			1'b0: begin //shifter
				Out=Out_s;
			end
			
			1'b1:begin
				Out=(Op[1:0]==2'b00)?Sum:(Op[1:0]==2'b01)?A_afinv | B_afinv:
					(Op[1:0]==2'b10)?A_afinv ^ B_afinv:A_afinv & B_afinv;

			end
		endcase 
	
	
	end 
	
endmodule
