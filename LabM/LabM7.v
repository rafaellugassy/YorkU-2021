module labM;
   	reg [31:0] PCin;
   	reg        clk;
   	wire [31:0] ins, PCp4;
   	yIF myIF(ins, PCp4, PCin, clk);

   	initial
	begin
        PCin = 128;
        repeat (11)
		begin
			clk = 1; #1;            
			clk = 0; #1;
            $display("instruction = %h", ins);
            PCin = PCp4;
            
        end
  	$finish;
 	end
endmodule
