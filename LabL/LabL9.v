module labL; 
reg signed [31:0] a, b; 
reg [31:0] expect; 
reg [2:0] op; 
wire ex; 
wire [31:0] z; 
reg ok, flag; 
yAlu mine(z, ex, a, b, op); 
initial 
begin 
  repeat  (10)  
  begin  
    a  =  $random;  
    b  =  $random;  
    flag = $value$plusargs("op=%d", op); 
    // The oracle: compute "expect" based on "op"   
	if (op === 0)
		expect = a & b;

	if (op === 1)
		expect = a | b;

	if (op === 2)
		expect = a + b;

	if (op === 6)
		expect = a - b;

	if (op === 7)
		expect = (a < b) ? 1 : 0;
	#1;


    // Compare the circuit's output with "expect" 
    // and set "ok" accordingly 
    // Display ok and the various signals 
	ok = expect === z ? 1 : 0;

	if (ok)
		$display ("PASS: a=%b b=%b z=%b op=%b", a, b, z, op);
	else
		$display ("FAIL: a=%b b=%b z=%b op=%b", a, b, z, op);

	end
    $finish;  
end 
endmodule 

