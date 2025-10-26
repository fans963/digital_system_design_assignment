`timescale 1ns / 1ps

module digital_tube (
    input  logic       enable,
    input  logic [4:0] display_num,
    output logic       gnd_pin,
    output logic [6:0] seg_pins,
    output logic       p_pin
);

  logic [3:0] digit;
  assign digit = display_num[3:0];

  logic [6:0] seg_lut;

  always_comb begin
    case (digit)
      4'd0: seg_lut = 7'b0111111;
      4'd1: seg_lut = 7'b0000110;
      4'd2: seg_lut = 7'b1011011;
      4'd3: seg_lut = 7'b1001111;
      4'd4: seg_lut = 7'b1100110;
      4'd5: seg_lut = 7'b1101101;
      4'd6: seg_lut = 7'b1111101;
      4'd7: seg_lut = 7'b0000111;
      4'd8: seg_lut = 7'b1111111;
      4'd9: seg_lut = 7'b1100111;
      default: seg_lut = 7'b0000000;
    endcase
  end

  assign seg_pins = enable ? seg_lut : 7'b0000000;
  assign p_pin    = enable ? display_num[4] : 1'b0;
  assign gnd_pin  = enable;

endmodule
