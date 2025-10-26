`timescale 1ns / 1ps

module frequency_divider #(
    parameter int MIN_DIV_FACTOR = 2
) (
    input  logic        clk_in,
    input  logic        rst_n,
    input  logic [31:0] div_factor,
    output logic        clk_out
);

  logic [31:0] counter;
  logic [31:0] half_period;

  assign half_period = div_factor >> 1;

  always_ff @(posedge clk_in or negedge rst_n) begin
    if (!rst_n) begin
      counter <= '0;
      clk_out <= 1'b0;
    end else begin
      if (div_factor < MIN_DIV_FACTOR) begin
        counter <= '0;
        clk_out <= 1'b0;
      end else begin
        if (counter >= div_factor - 1) begin
          counter <= '0;
        end else begin
          counter <= counter + 1'b1;
        end
        clk_out <= (counter < half_period);
      end
    end
  end

endmodule
