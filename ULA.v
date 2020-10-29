module ULA(funcULA, A, B, outULA);

input wire [3:0] A, B;
input wire [2:0] funcULA;
output reg [3:0] outULA;

parameter ADD = 3'b000;
parameter SUB = 3'b001;
parameter MAIOR  = 3'b010;
parameter MENOR = 3'b011;
parameter IGUAL = 3'b100;
parameter XOR = 3'b101;
parameter AND = 3'b110;

always begin
	case(funcULA)
		ADD:
			outULA <= (A + B);
		SUB:
			outULA <= (A - B);
		MAIOR:
			outULA <= (A > B);
		MENOR:
			outULA <= (A < B);
		IGUAL:
			outULA <= (A == B);
		XOR:
			outULA <= (A ^ B);
		AND:
			outULA <= (A & B);
	endcase
end
endmodule