module labK;
reg [2:0] a0, a1, a2, a3;
reg [1:0] c;
wire [2:0] z;

yMux4to1 #(.SIZE(3)) my_mux(z, a0, a1, a2, a3, c);

initial
begin
	repeat (10) 
	begin 
  		a0 = $random;  
   		a1 = $random;
		a2 = $random;  
   		a3 = $random;  
   		c = $random % 2; 
   		#1;   
		$display("a0=%b a1=%b a2=%b a3=%b c=%b z=%b",a0, a1, a2, a3, c, z);
	end
	
	$finish;
end
endmodule


