`timescale 1ns / 1ps

module hexto7segment(
    input [3:0] x,
    output reg [6:0] r
    );
        
    always @(*)
        case(x)
            4'b0000: r = 7'b0000001;
            4'b0001: r = 7'b1001111;
            4'b0010: r = 7'b0010010;
            4'b0011: r = 7'b0000110;
            4'b0100: r = 7'b1001100;
            4'b0101: r = 7'b0100100;
            4'b0110: r = 7'b0100000;
            4'b0111: r = 7'b0001111;
            4'b1000: r = 7'b0000000;
            4'b1001: r = 7'b0000100;
        endcase
        
endmodule
