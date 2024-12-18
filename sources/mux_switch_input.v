module bf_demux(
    input [1:4] message_sw,  // Adjusted width
    input [1:3] key1_sw,     // Adjusted width
    input [1:3] key2_sw,     // Adjusted width
    output reg [1:64] y,
    output reg [1:64] z,
    output reg [1:64] x
);

    // Message selection
    always @(*) begin
        case (message_sw)
            4'b0000: y = 64'h85abcd1a98876543;
            4'b0001: y = 64'h4421ABFA3745DECA;
            4'b0010: y = 64'h543289CDBAFF6732;
            4'b0011: y = 64'hAB11BC2234DD56AF;
            4'b0100: y = 64'h123433DD44FF9851;
            4'b0101: y = 64'hEFEFFAFABCBCDADB;
            4'b0110: y = 64'hBA14FA6523416857;
            4'b0111: y = 64'hDC78BA6512EF3443;
            4'b1000: y = 64'h69a571d5c7825c13;
            4'b1001: y = 64'h9e52ac9a5e373470;
            4'b1010: y = 64'hfa27f0f80cd2c953;
            4'b1011: y = 64'h4f5ef3c50140371d;
            4'b1100: y = 64'h2051a9e31576d1ee;
            4'b1101: y = 64'h6d86577974a3cb54;
            4'b1110: y = 64'h8e643980f4d3aa47;
            4'b1111: y = 64'hfc0ed2f995c90934;
            default: y = 64'b0;
        endcase
    end

    // Key1 selection
    always @(*) begin
        case (key1_sw)
            3'b000: z = 64'b0001001000110100010101101010101111001101000100110010010100110110;
            3'b001: z = 64'b0100010000100001101010111111101000110111010001011101111011001010;
            3'b010: z = 64'b0101010000110010100010011100110110111010111111110110011100110010;
            3'b011: z = 64'b1010101100010001101111000010001000110100110111010101011010101111;
            3'b100: z = 64'b0001001000110100001100111101110101000100111111111001100001010001;
            3'b101: z = 64'b1110111111101111111110101111101010111100101111001101101011011011;
            3'b110: z = 64'b1011101000010100111110100110010100100011010000010110100001010111;
            3'b111: z = 64'b1101110001111000101110100110010100010010111011110011010001000011;
            default: z = 64'b0;
        endcase
    end

    // Key2 selection
    always @(*) begin
        case (key2_sw)
            3'b000: x = 64'b0001001000110100010101101010101111001101000100110010010100110110;
            3'b001: x = 64'b0100010000100001101010111111101000110111010001011101111011001010;
            3'b010: x = 64'b0101010000110010100010011100110110111010111111110110011100110010;
            3'b011: x = 64'b1010101100010001101111000010001000110100110111010101011010101111;
            3'b100: x = 64'b0001001000110100001100111101110101000100111111111001100001010001;
            3'b101: x = 64'b1110111111101111111110101111101010111100101111001101101011011011;
            3'b110: x = 64'b1011101000010100111110100110010100100011010000010110100001010111;
            3'b111: x = 64'b1101110001111000101110100110010100010010111011110011010001000011;
            default: x = 64'b0;
        endcase
    end

endmodule
