module labK;
reg a, b, c;
wire z;


yMux1 name(z, a, b, c);

initial
begin
	a = 1; b = 0; c = 1;
	#1 $display("a=%d b=%d c=%d z=%b", a, b, c, z);
	$finish;
end
endmodule


