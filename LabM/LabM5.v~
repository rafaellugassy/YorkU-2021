module labM; 
reg clk, read, write; 
reg [31:0] address, memIn; 
wire [31:0] memOut; 
mem data(memOut, address, memIn, clk, read, write); 
initial 
begin        
	address = 128; write = 0; read = 1; 
	repeat   (11)   
	begin
		#1 clk = 1;
		$display("out=%h, address=%h", memOut, address);
		address = address + 4;
		clk = 0;
	end
	$finish;
end
endmodule 
