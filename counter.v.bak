module counter(clock, outCounter);

input wire clock;
output reg[3:0] outCounter;

parameter START = 4'b0000;
parameter END = 4'b0100;

always @(posedge clock) begin
	if(outCounter > END)
		outCounter = START;
	else
		outCounter = (outCounter + 1);
end

endmodule