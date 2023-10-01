module nine_s_comp(
  input [3:0] a,
output [3:0] y  );
assign y = 4'b1001 - a;
endmodule

/////////////////// Testbench ///////////////////
module tb_nine;
  reg [3:0] a;
   wire [3:0] y;
   nine_s_comp nines (.a(a), .y(y));
  initial
    begin
	 a= 4'd1;
	 #10;a=4'd3;
	 #10;a=4'd4;
	 #10;a=4'd6;
	 #10; $finish;
	 end 
endmodule
