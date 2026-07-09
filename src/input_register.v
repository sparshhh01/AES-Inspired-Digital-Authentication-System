module input_register(
    input clk,
    input rst,
    input load,
    input [15:0] password_in,
    output reg [15:0] password_out
);
always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        password_out <= 16'h0000;
    end
    else if(load)
    begin
        password_out <= password_in;
    end
end
endmodule