module decoder_2x4(
 input [1:0]a,
output reg[3:0] out );

always@ (a)
 begin
   case(a)
	2'b00: out= 4'b0001;
	2'b01: out= 4'b0010;
	2'b10: out= 4'b0100;
	2'b11: out= 4'b1000;
   endcase	
 end
endmodule

////////////////////// Testbench //////////////////////////
module tb_decoder_2x4;
 reg [1:0] a;
 wire [3:0] out;
decoder_2x4 dec1 (.a(a), .out(out));
   initial
    begin
	 a= 4'b00;
	 #10;a=4'b10;
	 #10;a=4'b01;
	 #10;a=4'b11;
	 #10; $finish;
	 end

endmodule
