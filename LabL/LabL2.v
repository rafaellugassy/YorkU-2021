module labK;
reg [1:0] a, b;
reg c;
wire [1:0] z;


yMux2 name(z, a, b, c);

initial
begin
	a[0] = 1; b[0] = 0; a[1] = 0; b[1] = 1; c = 1;
	#1 $display("a[0]=%d b[0]=%d c=%d z[0]=%b", a[0], b[0], c, z[0]);
	$display("a[1]=%d b[1]=%d c=%d z[1]=%b", a[1], b[1], c, z[1]);
	$finish;
end
endmodule


