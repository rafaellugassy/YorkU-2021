module labK;
reg a, b, c, flag, null;
wire z;
integer i, j;
not (nc, b);
and (top, a, nc);
and (bot, b, c);
or (z, top, bot);
initial
begin
	flag = $value$plusargs("a=%b", a);
	if (a === null)
		$display("a isn't specified");

	flag = $value$plusargs("b=%b", b);
	if (b === null)
		$display("b isn't specified");

	flag = $value$plusargs("c=%b", c);
	if (c === null)
		$display("c isn't specified");

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
