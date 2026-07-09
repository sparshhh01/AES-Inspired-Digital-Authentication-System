
module attempt_counter(
    input clk,
    input rst,
    input attempt,
    input match,
    output reg [1:0] count,
    output reg locked
);

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        count  <= 2'd0;
        locked <= 1'b0;
    end

    else if(!locked && attempt)
    begin
        if(match)
        begin
     
            count <= 2'd0;
        end
        else
        begin
           
            if(count < 2'd3)
                count <= count + 1'b1;

            if(count == 2'd2)
                locked <= 1'b1;
        end
    end
end

endmodule