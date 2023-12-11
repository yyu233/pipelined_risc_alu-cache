module dir_mux_tb();

reg [15:0]In;
reg Op_high;
wire [15:0]In_stage_1_A;

dir_mux iDUT(.In(In), .Op_high(Op_high), .In_stage_1_A(In_stage_1_A));

initial begin 
In=16'hFF00;
Op_high=1'b1;

#10 Op_high=1'b0;

#20 $finish;

end

endmodule 
