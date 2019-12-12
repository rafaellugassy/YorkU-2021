module labK;
reg a, b, cin, expect;
wire z, cout;
integer i, j, k;

xor (top, a, b);
and (bot, a, b);
xor (z, cin, top);
and (mid, top, cin);
or (cout, bot, mid);

initial
begin
	for (i = 0; i < 2; i = i + 1)
	begin
		a = i;
		for (j = 0; j < 2; j = j + 1)
		begin
			b = j;
			for (k = 0; k < 2; k = k + 1)
			begin
				cin = k;
				#1
				$display("a=%d b=%d cin=%d z=%b cout=%b", a, b, cin, z, cout);
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
