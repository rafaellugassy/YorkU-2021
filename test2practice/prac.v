module parityGen(A,B); 
	input [3:0] A; 
	output [4:0] B; 
	assign B[4:1] = A;
	assign B[0] = ^A;
	
endmodule

module lt(Val, A, B);
	input[3:0] A, B;
	output Val;
	assign  = A << 3;
	
endmodule // lt


module adder3_4(Sum,cout,A,B,C,cin); 
	input [3:0] A,B,C; 
	input cin; 
	output [4:0] Sum; 
	output cout; 
	wire[3:0] z;
	wire out, outer, res;
	adder4 first(z, out, A, B, 1'b0);
	adder4 last(Sum[3:0], outer, C, z, 1'b0);
	yAdder1 name(res, cout, out, outer, 1'b0);
	assign Sum[4] = res;

endmodule
module adder4(Sum,cout,a,b,cin); 
	input [3:0] a,b; 
	input cin; 
	output [3:0] Sum; 
	output cout; 
	wire [3:0] in, out;
	yAdder1 my_adder[3:0](Sum, out, a, b, in);
	assign in[0] = cin;
	genvar i;
	for (i = 1; i < 4; i = i + 1)
	begin
		assign in[i] = out[i - 1];
	end
	assign cout = out[3];
	
endmodule

module yAdder1(z, cout, a, b, cin);  
output z, cout; 
input a, b, cin; 
xor left_xor(tmp, a, b); 
xor right_xor(z, cin, tmp); 
and left_and(outL, a, b); 
and right_and(outR, tmp, cin); 
or my_or(cout, outR, outL); 
endmodule

module main;
	reg[3:0] a, b, c;
	wire cout;
	wire [4:0] Sum;
	//adder3_4 my_adder4(Sum, cout, a, b, c, 1'b0);
	parityGen gen(a, Sum);
	initial
	begin
		//a = 4'b1110; b = 4'b0011; c = 4'b0010;
		a = 4'b1110;
		#1;
		//$display("%b, %b, %b, %b, %b", a, b, c, Sum, cout);
		$display("%b, %b", a, Sum);
	end
endmodule
