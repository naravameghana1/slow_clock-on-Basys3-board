`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 01:38:35 PM
// Design Name: 
// Module Name: led_blink
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_blink(
input clk_in,
output led
    );
    reg [25:0]count=0;
    reg clk_out;
    always @(posedge clk_in)
    begin
    count<=count+1;
    if(count==50000000)
    begin
    clk_out=~clk_out;
    count<=0;
    end
    end
    assign led=clk_out;
endmodule
