module labK;
reg a, b, c;
wire z;
integer i, j;
not (nc, b);
and (top, a, nc);
and (bot, b, c);
or (z, top, bot);
initial
begin
	a = 1; b = 0; c = 0;
	#1 $display("a=%d b=%d c=%d z=%b", a, b, c, z);
	$finish;
end
endmodule

/* 
(a n ~c) v (c n b)
assume c = 0
(a n 1) v (0 n b)
a v (0)
a
*/
