`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2026 14:12:53
// Design Name: 
// Module Name: key_mixer
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
module key_mixer(
    input  [15:0] data,
    input  [15:0] key,
    output [15:0] out
);

assign out = data ^ key;

endmodule
