module memoria(count, inX, insControle);

input wire[3:0] count;
output reg [3:0] inX;
output reg [3:0] insControle;

parameter A = 3;
parameter B = 5;

always begin
	case(count)
		4'b0000 : begin
			insControle <= 4'b0000;
			inX <= 0;
			end
			
		4'b0001 : begin
			insControle <= 4'b0001;
			inX <= A;
			end
			
		4'b0010 : begin
			insControle <= 4'b0010;
			inX <= B;
			end
			
		4'b0011 : begin
			insControle <= 4'b0011;
			inX <= 0;
			end
			
		4'b0100 : begin
			insControle <= 4'b0100;
			inX <= 0;
			end
			
		4'b0101 : begin
			insControle <= 4'b0101;
			inX <= 0;
			end
				
	endcase
end
endmodule