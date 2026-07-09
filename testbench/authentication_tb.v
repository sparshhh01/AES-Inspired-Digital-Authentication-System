`timescale 1ns/1ps

module top_tb;

reg clk;
reg rst;
reg load;
reg attempt;
reg [15:0] user_password;

wire unlock;
wire fail;
wire locked;
wire [1:0] count;



top DUT(
    .clk(clk),
    .rst(rst),
    .load(load),
    .attempt(attempt),
    .user_password(user_password),
    .unlock(unlock),
    .fail(fail),
    .locked(locked),
    .count(count)
);


initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end


initial
begin


    rst = 1;
    load = 0;
    attempt = 0;
    user_password = 16'h0000;

    #15;
    rst = 0;



    $display("\n========== TEST CASE 1 ==========");

    user_password = 16'h25F1;

    load = 1;
    #10;
    load = 0;

    attempt = 1;
    #10;
    attempt = 0;

    #10;

    $display("Password : 25F1");
    $display("Unlock=%b Fail=%b Count=%d Locked=%b",
              unlock,fail,count,locked);

    $display("\n========== TEST CASE 2 ==========");

    user_password = 16'h1234;

    load = 1;
    #10;
    load = 0;

    attempt = 1;
    #10;
    attempt = 0;

    #10;

    $display("Password : 1234");
    $display("Unlock=%b Fail=%b Count=%d Locked=%b",
              unlock,fail,count,locked);


    $display("\n========== TEST CASE 3 ==========");

    user_password = 16'h1111;

    load = 1;
    #10;
    load = 0;

    attempt = 1;
    #10;
    attempt = 0;

    #10;

    $display("Password : 1111");
    $display("Unlock=%b Fail=%b Count=%d Locked=%b",
              unlock,fail,count,locked);


    $display("\n========== TEST CASE 4 ==========");

    user_password = 16'h2222;

    load = 1;
    #10;
    load = 0;

    attempt = 1;
    #10;
    attempt = 0;

    #10;

    $display("Password : 2222");
    $display("Unlock=%b Fail=%b Count=%d Locked=%b",
              unlock,fail,count,locked);

    rst = 1;
    #10;
    rst = 0;

    #20;

    $display("\nSimulation Completed Successfully.");

    $finish;

end

endmodule