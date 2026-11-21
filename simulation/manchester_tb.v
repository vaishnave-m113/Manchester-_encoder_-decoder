`timescale 1ns/1ps

module tb_manchester;

reg clk;
reg reset;
reg data_in;
reg enable;

wire manchester_out;
wire data_out;

manchester_top uut (
    .clk(clk),
    .reset(reset),
    .data_in(data_in),
    .enable(enable),
    .manchester_out(manchester_out),
    .data_out(data_out)
);

// Clock: 10 ns period
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset  = 1;
    enable = 0;
    data_in = 0;

    // Reset
    #20;
    reset = 0;
    enable = 1;

    // Data = 0
    data_in = 0;
    #20;

    // Data = 1
    data_in = 1;
    #20;

    // Data = 0
    data_in = 0;
    #20;

    // Data = 1
    data_in = 1;
    #20;

    // Data = 1
    data_in = 1;
    #20;

    enable = 0;

    #20;
    $finish;
end

endmodule

