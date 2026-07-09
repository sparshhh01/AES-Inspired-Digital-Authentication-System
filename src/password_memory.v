module password_memory #(
    parameter PASSWORD = 16'h25F1
)(
    output [15:0] stored_password
);

assign stored_password = PASSWORD;

endmodule