
module lock_controller(
    input clk,
    input rst,
    input attempt,
    input match,
    input locked,
    output reg unlock,
    output reg fail
);

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        unlock <= 1'b0;
        fail   <= 1'b0;
    end

    else if(attempt)
    begin
        if(locked)
        begin
            unlock <= 1'b0;
            fail   <= 1'b1;
        end

        else if(match)
        begin
            unlock <= 1'b1;
            fail   <= 1'b0;
        end

        else
        begin
            unlock <= 1'b0;
            fail   <= 1'b1;
        end
    end
end

endmodule
