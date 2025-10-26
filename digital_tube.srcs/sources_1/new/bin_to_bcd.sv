`timescale 1ns / 1ps

module integer_bin_to_bcd #(
    parameter int bin_width = 14,
    parameter int bcd_width = $log10(2 ^ bin_width) + 1
) (
    input logic [bin_width-1:0] binary,
    output logic [3:0] bcd[0:bcd_width-1]
);

  logic [bin_width-1:0] shift_binary;
  logic [3:0] shift_bcd[0:bcd_width-1];

  always_comb begin
    shift_binary = binary;
    shift_bcd = '{bcd_width{4'd0}};

    for (int i = bin_width - 1; i >= 0; i--) begin
      for (int j = 0; j < bcd_width; j++) begin
        if (shift_bcd[j] >= 4'd5) shift_bcd[j] = shift_bcd[j] + 4'd3;
      end

      for (int j = bcd_width - 1; j > 0; j--) begin
        shift_bcd[j] = {shift_bcd[j][2:0], shift_bcd[j-1][3]};
      end
      shift_bcd[0] = {shift_bcd[0][2:0], shift_binary[bin_width-1]};
      shift_binary = shift_binary << 1;
    end

    bcd = shift_bcd;
  end

endmodule

module decimal_bin_to_bcd #(
    parameter int bin_width = 8,
    parameter int bcd_width = $log10(2 ^ bin_width) + 1
) (
    input logic [bin_width-1:0] binary_fraction,
    output logic [3:0] bcd[bcd_width-1:0]
);

  logic [bin_width-1:0] shift_binary;
  logic [3:0] shift_bcd[0:bcd_width-1];

  always_comb begin
    shift_binary = binary_fraction;
    shift_bcd = '{default: 4'd0};

    for (int digit = 0; digit < bcd_width; digit++) begin
      logic [bin_width+3:0] temp;
      temp = {shift_binary, 4'b0};
      temp = (temp >> 1) + (temp >> 3);

      shift_bcd[digit] = temp[bin_width+3:bin_width];
      shift_binary = temp[bin_width-1:0];
    end

    bcd = shift_bcd;
  end

endmodule
