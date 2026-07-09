`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2026 14:11:04
// Design Name: 
// Module Name: permute
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

module permute(
    input  [15:0] in,
    output [15:0] out
);

assign out = {
    in[15], // out[15]
    in[11], // out[14]
    in[7],  // out[13]
    in[3],  // out[12]
    in[14], // out[11]
    in[10], // out[10]
    in[6],  // out[9]
    in[2],  // out[8]
    in[13], // out[7]
    in[9],  // out[6]
    in[5],  // out[5]
    in[1],  // out[4]
    in[12], // out[3]
    in[8],  // out[2]
    in[4],  // out[1]
    in[0]   // out[0]
};

endmodule