module labK;
reg a, b, c, flag, null, expect;
wire z;
integer i, j, k;
not (nc, c);
and (top, a, nc);
and (bot, b, c);
or (z, top, bot);
initial
begin
	i = 0; j = 0; k = 0;
	for (i = 0; i < 2; i = i + 1)
	begin
		a = i;
		for (j = 0; j < 2; j = j + 1)
		begin
			b = j;
			for (k = 0; k < 2; k = k + 1)
			begin
				c = k;
				expect = (a & ~c) | (c & b);
				#1
				if (expect === z)
					$display("PASS: a=%d b=%d c=%d z=%b", a, b, c, z);
				else
					$display("FAIL: a=%d b=%d c=%d z=%b", a, b, c, z);
			end
		end
	end
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
