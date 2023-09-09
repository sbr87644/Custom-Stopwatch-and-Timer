`timescale 1ns / 1ps
module clk_div_disp(
    input clk,
    input reset,
    output slow_clk,
    output time_clk
    );
    
    reg [16:0] slow;
    reg [19:0] time_count;
    reg slow_reg;
    reg time_c;
    assign slow_clk = slow_reg;
    assign time_clk = time_c;
    
    always @(posedge clk) begin
        if (time_count < 500000) begin 
            time_count <= time_count + 1;
          end
        else begin
            time_c <= ~time_c;
            time_count <= 0;
          end
    end
    
    always @(posedge clk) begin
        if (slow < 100000) begin 
            slow <= slow + 1;
          end
        else begin
            slow_reg <= ~slow_reg;
            slow <= 0;
          end
    end
    
endmodule
