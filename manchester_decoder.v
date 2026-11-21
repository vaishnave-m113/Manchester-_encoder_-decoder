module manchester_decoder (
    input  wire clk,
    input  wire reset,
    input  wire manchester_in,
    input  wire phase,
    output reg  data_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        data_out <= 1'b0;
    end
    else if (!phase) begin
        data_out <= manchester_in;
    end
end

endmodule
