`timescale 1ns / 1ps

module tb_HLSM;

reg clk;
reg toggle;
reg reset;
reg [7:0] sw;
reg [1:0] mode;
wire dp;
wire [3:0] an;
wire [6:0] sseg;

time_multiplex_main ul (
.clk(clk),
.toggle(toggle),
.reset(reset),
.sw(sw),
.mode(mode),
.dp(dp),
.an(an),
.sseg(sseg)
);

initial begin

clk = 0;
toggle =0;
reset = 1;
mode = 0;
sw = 16'h0000;

#10
reset = 0;
toggle =1;
sw = 16'h0001;

#10
toggle =0;
mode =1;
sw = 16'h0051;

#10

reset = 1;

#10

reset = 0;
toggle =1;
sw = 16'h0951;

#10
toggle =0;
sw = 16'hC951;

end

always
#5 clk = ~clk;


endmodule
