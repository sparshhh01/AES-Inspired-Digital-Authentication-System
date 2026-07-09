
module comparator(
    input  [15:0] user_cipher,
    input  [15:0] stored_cipher,
    output match
);

assign match = (user_cipher == stored_cipher);

endmodule