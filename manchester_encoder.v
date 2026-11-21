module manchester_encoder (
    input  wire data_in,
    input  wire phase,
    output wire manchester_out
);

assign manchester_out = phase ? ~data_in : data_in;

endmodule