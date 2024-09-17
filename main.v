`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: N/A
// Engineer: Aditya
// 
// Create Date: 17.09.2024 11:37:41
// Design Name: 
// Module Name: main
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


module main(
    input clk,
    input rst,
    output reg[3:0] leds
    );

reg[30:0] counter;
reg[3:0] binary;
always@(posedge clk) begin
if(rst) begin
leds<=4'b0;
counter<=0;
binary<=4'b0;
end else begin
if(counter<125000000-1)   begin 
counter<=counter+1;
end else begin
binary<=binary+1;
leds<=binary;
counter<=0;
end
end
end


endmodule
