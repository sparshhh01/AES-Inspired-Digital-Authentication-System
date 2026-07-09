`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2026 14:10:14
// Design Name: 
// Module Name: substitute
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

module substitute(
    input  [15:0] in,
    output [15:0] out
);

    // Instantiate four S-Boxes

    sbox4 S0 (
        .in(in[15:12]),
        .out(out[15:12])
    );

    sbox4 S1 (
        .in(in[11:8]),
        .out(out[11:8])
    );

    sbox4 S2 (
        .in(in[7:4]),
        .out(out[7:4])
    );

    sbox4 S3 (
        .in(in[3:0]),
        .out(out[3:0])
    );

endmodule