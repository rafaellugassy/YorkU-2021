module labM; 
reg[31:0] address, memIn;
wire[31:0] memOut;
reg clk, read,write;
mem data(memOut, address, memIn, clk, read, write);  
initial 
begin 
	write = 0; read = 1; address = 16; 
	repeat (3) 
	begin 
   		#1 $display("Address %d contains %h", address, memOut); 
   		address = address + 4; 
	end 

	clk = 0; memIn = 20;
    address = 19; write = 1; clk = 1;
    #1 $display("Address %d contains %h", address, memOut);	

	$finish;   
end 
endmodule


