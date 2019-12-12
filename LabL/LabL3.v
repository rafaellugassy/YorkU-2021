module labK;
reg [31:0] a, b;
reg c;
wire [31:0] z;
integer i, j, k, l;
reg [31:0] expect;
yMux #(.SIZE(32)) my_mux(z, a, b, c);

initial
begin
	i = 0;
	repeat (500) 
	begin 
  		a = $random;  
   		b = $random;  
   		c = $random % 2; 

		if (c == 0)
			expect = a;
		else
			expect = b;
   		#1;   
		if (expect !== z)
			$display("a=%b b=%b c=%d z=%b",a, b, c, z);
		
		
		
	end
	
	$finish;
end
endmodule


