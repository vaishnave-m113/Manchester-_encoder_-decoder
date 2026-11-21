module manchester_top (
    input  wire clk,
    input  wire reset,
    input  wire data_in,
    input  wire enable,
    output wire manchester_out,
    output wire data_out
);

    reg phase;
    wire manchester_signal;

    always @(posedge clk or posedge reset) begin
        if (reset)
            phase <= 1'b0;
        else if (enable)
            phase <= ~phase;
        else
            phase <= 1'b0;
    end

    manchester_encoder encoder_inst (
        .data_in(data_in),
        .phase(phase),
        .manchester_out(manchester_signal)
    );

    manchester_decoder decoder_inst (
        .clk(clk),
        .reset(reset),
        .manchester_in(manchester_signal),
        .phase(phase),
        .data_out(data_out)
    );

    assign manchester_out = manchester_signal;

endmodule