module labK;
reg a, b, cin;
wire z, cout;
integer i, j, k;

yAdder1 my_adder(z, cout, a, b, cin);

initial
begin
	
	for (i = 0; i < 2; i = i + 1)
	begin
		for (j = 0; j < 2; j = j + 1)
		begin
			for (k = 0; k < 2; k = k + 1)
			begin
				a = i; b = j; cin = k;
				#1;
				if (a + b + cin !== cout)
					$display("a = %b b = %b cin = %b cout = %b z = %b", a, b, cin, cout, z);
				else
				begin
					if (a + b + cin !== z)
						$display("a = %b b = %b cin = %b cout = %b z = %b", a, b, cin, cout, z);
				end
			end
		end
	end
	
	$finish;
end
endmodule


