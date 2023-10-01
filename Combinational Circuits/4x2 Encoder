module encoder_4x2(
input [3:0] a,
output reg [1:0]out    );
always@ (a)
begin
if (a==4'b0001)
  out = 2'b0;
else if(a==4'b0010)
  out = 2'b01;
else if (a==4'd0100)
  out =2'b10;
else if (a==4'd1000)
  out =2'b11;  
end

endmodule

//////////////////////////Testbench////////////////////////////////


module tb_encoder_4x2;
  reg [3:0] a;
   wire [1:0] out;
  encoder_4x2 encd1 (.a(a), .out(out));
  initial
    begin
	 a= 4'b0001;
	 #10;a=4'b0010;
	 #10;a=4'b1000;
	 #10;a=4'b0100;
	 #10; $finish;
	 end
endmodule

