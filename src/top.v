module top(
    input clk,
    input rst,
    input load,
    input attempt,
    input [15:0] user_password,

    output unlock,
    output fail,
    output locked,
    output [1:0] count
);

parameter SECRET_KEY = 16'h3F29;

wire [15:0] password_reg;
wire [15:0] stored_password;
wire [15:0] user_cipher;
wire [15:0] stored_cipher;
wire match;

input_register IR(
    .clk(clk),
    .rst(rst),
    .load(load),
    .password_in(user_password),
    .password_out(password_reg)
);

password_memory PM(
    .stored_password(stored_password)
);

encryptor ENC_USER(
    .password(password_reg),
    .key(SECRET_KEY),
    .cipher(user_cipher)
);

encryptor ENC_STORE(
    .password(stored_password),
    .key(SECRET_KEY),
    .cipher(stored_cipher)
);

comparator CMP(
    .user_cipher(user_cipher),
    .stored_cipher(stored_cipher),
    .match(match)
);

attempt_counter AC(
    .clk(clk),
    .rst(rst),
    .attempt(attempt),
    .match(match),
    .count(count),
    .locked(locked)
);
lock_controller LC(
    .clk(clk),
    .rst(rst),
    .attempt(attempt),
    .match(match),
    .locked(locked),
    .unlock(unlock),
    .fail(fail)
);
endmodule