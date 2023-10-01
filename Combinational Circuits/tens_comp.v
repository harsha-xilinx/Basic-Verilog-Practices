module tens_comp #(parameter tens=4'b1010)(
input [3:0] a,
output  [3:0] y
    );
assign y = tens - a;

endmodule

///////////////Testbench/////////////////////////

module tb_tens_comp;
   reg [3:0] a;
   wire [3:0] y;	
tens_comp t1 (.a(a), .y(y));
   initial
    begin
	 a= 4'b0001;
	 #10;a=4'b0010;
	 #10;a=4'b1000;
	 #10;a=4'b0100;
	 #10; $finish;
	 end  
endmodule
