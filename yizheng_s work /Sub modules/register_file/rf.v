
/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module rf (
           // Outputs
           read1data, read2data, err,
           // Inputs
           clk, rst, read1regsel, read2regsel, writeregsel, writedata, write
           );
   input clk, rst;
   input [2:0] read1regsel;
   input [2:0] read2regsel;
   input [2:0] writeregsel;
   input [15:0] writedata;
   input        write;

   output reg[15:0] read1data;
   output reg[15:0] read2data;
   output        err;

   // your code
	wire[15:0]regvalue_0,regvalue_1,regvalue_2,regvalue_3,regvalue_4,regvalue_5
	,regvalue_6,regvalue_7;
	wire sel_0,sel_1,sel_2,sel_3,sel_4,sel_5,sel_6,sel_7;
	
	//select register
	assign sel_0=({write,writeregsel}==4'b1000 )?1:0;
	assign sel_1=({write,writeregsel}==4'b1001 )?1:0;
	assign sel_2=({write,writeregsel}==4'b1010 )?1:0;
	assign sel_3=({write,writeregsel}==4'b1011 )?1:0;
	assign sel_4=({write,writeregsel}==4'b1100 )?1:0;
	assign sel_5=({write,writeregsel}==4'b1101 )?1:0;
	assign sel_6=({write,writeregsel}==4'b1110 )?1:0;
	assign sel_7=({write,writeregsel}==4'b1111 )?1:0;
	
	//8*16 registers
   register #(16) ins0(.writedata(writedata),.clk(clk),.rst(rst),.enable(sel_0),.regvalue(regvalue_0));
   register #(16) ins1(.writedata(writedata),.clk(clk),.rst(rst),.enable(sel_1),.regvalue(regvalue_1));
   register #(16) ins2(.writedata(writedata),.clk(clk),.rst(rst),.enable(sel_2),.regvalue(regvalue_2));
   register #(16) ins3(.writedata(writedata),.clk(clk),.rst(rst),.enable(sel_3),.regvalue(regvalue_3));
   register #(16) ins4(.writedata(writedata),.clk(clk),.rst(rst),.enable(sel_4),.regvalue(regvalue_4));
   register #(16) ins5(.writedata(writedata),.clk(clk),.rst(rst),.enable(sel_5),.regvalue(regvalue_5));
   register #(16) ins6(.writedata(writedata),.clk(clk),.rst(rst),.enable(sel_6),.regvalue(regvalue_6));
   register #(16) ins7(.writedata(writedata),.clk(clk),.rst(rst),.enable(sel_7),.regvalue(regvalue_7));
   
   //read operation 
   always@(*) begin //readdata1
		case(read1regsel)
		3'b000:begin
				read1data=regvalue_0;
		end
		3'b001:begin
				read1data=regvalue_1;
		end
		3'b010:begin
				read1data=regvalue_2;
		end
		3'b011:begin
				read1data=regvalue_3;
		end
		3'b100:begin
				read1data=regvalue_4;
		end
		3'b101:begin
				read1data=regvalue_5;
		end
		3'b110:begin
				read1data=regvalue_6;
		end
		3'b111:begin
				read1data=regvalue_7;
		end
		
		endcase 
   end 
   
   always@(*) begin //readdata2
		case(read2regsel)
		3'b000:begin
				read2data=regvalue_0;
		end
		3'b001:begin
				read2data=regvalue_1;
		end
		3'b010:begin
				read2data=regvalue_2;
		end
		3'b011:begin
				read2data=regvalue_3;
		end
		3'b100:begin
				read2data=regvalue_4;
		end
		3'b101:begin
				read2data=regvalue_5;
		end
		3'b110:begin
				read2data=regvalue_6;
		end
		3'b111:begin
				read2data=regvalue_7;
		end
		
		endcase 
   end 
   
   
   endmodule
// DUMMY LINE FOR REV CONTROL :1:
