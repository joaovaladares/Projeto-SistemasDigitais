module CPU(clock, Tx, Ty, Tz, Tula, outULA, outX, outY, outZ, inX, count, insControle);

input wire clock;
output wire [3:0] outX;
output wire [3:0] outY;
output wire [3:0] outZ;
output wire [3:0] outULA;
output wire [2:0] Tx;//funcao do registrador X
output wire [2:0] Ty;//funcao do registrador Y
output wire [2:0] Tz;//funcao do registrador Z
output wire [2:0] Tula;//funcao da ULA

output wire [3:0] insControle;
output wire [3:0] count;
output wire [3:0] inX;

counter(clock, count);

memoria(count, inX, insControle);
controle cont(clock, insControle, Tx, Ty, Tz, Tula);

registradorX registX(clock, Tx, inX, outX);
registradorY registY(clock, Ty, outULA, outY);
registradorZ registZ(clock, Tz, outY, outZ);
ULA ula(Tula, outX, outY, outULA);

endmodule