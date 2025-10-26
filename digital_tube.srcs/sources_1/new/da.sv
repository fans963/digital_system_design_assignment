`timescale 1ns / 1ps

module da #(
    parameter int WIDTH = 14
) (
    input logic clk,
    input logic [WIDTH-1:0] digital_input,
    output logic [WIDTH-1:0] da_input_pin
);

  always_ff @(posedge clk) begin
    da_input_pin = digital_input;
  end

endmodule  //da
