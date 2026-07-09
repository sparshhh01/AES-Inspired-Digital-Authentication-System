
module encryptor(
    input  [15:0] password,
    input  [15:0] key,
    output [15:0] cipher
);

    
    wire [15:0] r1_sub;
    wire [15:0] r1_perm;
    wire [15:0] r1_key;

   
    wire [15:0] r2_sub;
    wire [15:0] r2_perm;
    substitute SUB1 (
        .in(password),
        .out(r1_sub)
    );

    permute PERM1 (
        .in(r1_sub),
        .out(r1_perm)
    );

    key_mixer KM1 (
        .data(r1_perm),
        .key(key),
        .out(r1_key)
    );

    //---------------- Round 2 ----------------

    substitute SUB2 (
        .in(r1_key),
        .out(r2_sub)
    );

    permute PERM2 (
        .in(r2_sub),
        .out(r2_perm)
    );

    key_mixer KM2 (
        .data(r2_perm),
        .key(key),
        .out(cipher)
    );

endmodule
