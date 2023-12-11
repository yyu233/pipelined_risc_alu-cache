module alu (A, B, Cin, Op, invA, invB, sign, Out, Ofl, Z, Cout);
   
        input [15:0] A;
        input [15:0] B;
        input Cin;
        input [15:0]Op;//instr[15:0]
        input invA;
        input invB;
        input sign;
        output reg [15:0] Out;
        output Ofl;
        output Z;
		output Cout;

   /*
	Your code goes here
   */
	wire C15, C16, Ofl_z,zero;
	wire [15:0] A_afinv, B_afinv, Sum, Out_s;
	wire [1:0] Op_shifter;//bits of instr connect to shifter [12:11] or [1:0] depends on I-format or R-format
	reg [1:0] Op_shifter_temp;// same as Op_shifter, used in always block  
	
	input_inv	inv_A(.In(A), .Flag(invA),  .Out(A_afinv));
	input_inv   inv_B(.In(B), .Flag(invB),  .Out(B_afinv));
    cla16		adder(.C0(Cin),.A(A_afinv),.B(B_afinv),.Sum(Sum),.C15(C15),.C16(C16));
	ofl_detector	ofl_ins(.sign(sign), .C15(C15), .C16(C16), .Ofl(Ofl_z));
	zero_detector	zero_ins(.Sum(Sum), .Ofl(Ofl_z), .Out(zero));

	shifter shift(.In(A_afinv), .Cnt(B_afinv[3:0]), .Op(Op_shifter_temp), .Out(Out_s));
	
	assign Ofl=Ofl_z;
	assign Z=zero;
	assign Op_shifter=Op_shifter_temp;
  	assign Cout = C16;

	always@(*) begin 
		casex(Op[15:11])
			 //I-format
			5'b101??: begin //begin shifter
				Op_shifter_temp=Op[12:11];
				Out=Out_s;
			end
			
			5'b010??:begin //00 ADDI->add, 01 SUBI->add, 10 XORI->xor, 11 ANDNI->and
				Op_shifter_temp=Op[12:11]; // Arbitrary assignment
				Out=(Op[12]==2'b0)?Sum:
					(Op[12:11]==2'b10)?A_afinv ^ B_afinv:
					 A_afinv & B_afinv;
			end 
			
			5'b100??:begin//ST, LD, STU->add, SLBI ->or
				Op_shifter_temp=Op[12:11]; // Arbitrary assignment
				Out=(Op[12:11]!=2'b10)?Sum:A_afinv | B_afinv;
			end
			
			//R-format
			5'b11010:begin//begin shifter, R-format 
				Op_shifter_temp=Op[1:0];
				Out=Out_s;
			end
			5'b11011:begin//00 ADD->add, 01 SUB->add
				Op_shifter_temp=Op[12:11]; // Arbitrary assignment
				Out=((Op[1:0]==2'b00)|(Op[1:0]==2'b01))?Sum:
					(Op[1:0]==2'b10)?A_afinv ^ B_afinv:
					 A_afinv & B_afinv;

			end

			// SEQ, SLT, SLE, SCO
			5'b111??: begin
				Op_shifter_temp=Op[12:11]; // Arbitrary assignment
				Out = Sum;
			end
			
			default: begin 
				Out=Sum;
				Op_shifter_temp=Op[12:11];
			end
		endcase 
	
	
	end 
	
	
endmodule
