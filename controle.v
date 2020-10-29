module controle(clock, count, Tx, Ty, Tz, Tula);

input wire clock;

input wire [3:0] count;

output reg [2:0] Tula;
output reg [2:0] Tx;
output reg [2:0] Ty;
output reg [2:0] Tz;

parameter HOLD = 3'b000;
parameter LOAD = 3'b001;
parameter SHIFTR = 3'b010;
parameter SHIFTL = 3'b011;
parameter RESET = 3'b100;

parameter ADD = 3'b000;
parameter SUB = 3'b001;
parameter MAIOR  = 3'b010;
parameter MENOR = 3'b011;
parameter IGUAL = 3'b100;
parameter XOR = 3'b101;
parameter AND = 3'b110;

always @(posedge clock) begin
	case(count)
		4'b0000 : begin
			Ty <= RESET;
			Tx <= LOAD;
			Tz <= RESET;
			Tula <= ADD;
			end
			
		4'b0001 : begin
			Ty <= LOAD;
			Tx <= LOAD;
			Tz <= HOLD;
			Tula <= ADD;
			end
			
		4'b0010 : begin
			Ty <= LOAD;
			Tx <= RESET;
			Tz <= RESET;
			Tula <= ADD;
			end
			
		4'b0011 : begin
			Tx <= RESET;
			Ty <= SHIFTR;
			Tz <= RESET;
			Tula <= ADD;
			end
			
		4'b0100 : begin
			Tx <= RESET;
			Ty <= RESET;
			Tz <= LOAD;
			Tula <= ADD;
			end
		4'b0101 : begin
			Tx <= HOLD;
			Ty <= HOLD;
			Tz <= HOLD;
			Tula <= ADD;
			end	
				
	endcase
end
endmodule