`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 21:42:42
// Design Name: 
// Module Name: S4
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


module S4(
    output reg [1:4] out,
    input [1:6] in
    );
    always @* case (in)
    0 : out = 7;
    1 : out = 13;
    2 : out = 13;
    3 : out = 8;
    4 : out = 14;
    5 : out = 11;
    6 : out = 3;
    7 : out = 5;
    8 : out = 0;
    9 : out = 6;
    10 : out = 6;
    11 : out = 15;
    12 : out = 9;
    13 : out = 0;
    14 : out = 10;
    15 : out = 3;
    16 : out = 1;
    17 : out = 4;
    18 : out = 2;
    19 : out = 7;
    20 : out = 8;
    21 : out = 2;
    22 : out = 5;
    23 : out = 12;
    24 : out = 11;
    25 : out = 1;
    26 : out = 12;
    27 : out = 10;
    28 : out = 4;
    29 : out = 14;
    30 : out = 15;
    31 : out = 9;
    32 : out = 10;
    33 : out = 3;
    34 : out = 6;
    35 : out = 15;
    36 : out = 9;
    37 : out = 0;
    38 : out = 0;
    39 : out = 6;
    40 : out = 12;
    41 : out = 10;
    42 : out = 11;
    43 : out = 1;
    44 : out = 7;
    45 : out = 13;
    46 : out = 13;
    47 : out = 8;
    48 : out = 15;
    49 : out = 9;
    50 : out = 1;
    51 : out = 4;
    52 : out = 3;
    53 : out = 5;
    54 : out = 14;
    55 : out = 11;
    56 : out = 5;
    57 : out = 12;
    58 : out = 2;
    59 : out = 7;
    60 : out = 8;
    61 : out = 2;
    62 : out = 4;
    63 : out = 14;
  endcase
endmodule
