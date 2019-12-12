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
		if (memOut[31:26] == 0)
			$display("%d %d %d %d %d, address=%h", memOut[31:26], memOut[25:21], memOut[20:16], memOut[15:11], memOut[10:0], address);

		else if (memOut[31:26] == 2)
			$display("%d %d, address=%h", memOut[31:26], memOut[25:0], address);

		else
			$display("%d %d %d %d, address=%h", memOut[31:26], memOut[25:21], memOut[20:16], memOut[15:0], address);
		address = address + 4;
		clk = 0;
	end
	$finish;
end
endmodule 
