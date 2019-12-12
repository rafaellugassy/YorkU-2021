module labK;
reg [31:0] x; // a 32-bit register
reg [0:0] one;
reg [1:0] two;
reg [2:0] three;
initial
begin
	$display("%5d", $time, " %b", x);
	x = 32'hffff0000;
	$display("%5d", $time, " %b", x);
	x = x + 2;
	$display("%5d", $time, " %b", x);
	one = &x;		// and reduction
	$display("%5d", $time, " %b", one);
	two = x[1:0];		// part-select
	$display("%5d", $time, " %b", two);
	three = {one, two};	// concatenate
	$display("%5d", $time, " %b", three);
	
	$finish;
end

endmodule 
