`timescale 1ns / 1ps

module digital_tube_array (
    input  logic       enable,
    input  logic       refresh_clk,
    input  logic [4:0] display_numbers[0:3],
    output logic [3:0] gnd_pins,
    output logic [6:0] seg_pins,
    output logic       p_pin
);

  logic [1:0] counter;
  logic [3:0] enable_status;

  always_ff @(posedge refresh_clk) begin
    if (enable) begin
      counter <= counter + 2'b01;
      case (counter + 2'b01)
        2'd0: enable_status <= 4'b0001;
        2'd1: enable_status <= 4'b0010;
        2'd2: enable_status <= 4'b0100;
        2'd3: enable_status <= 4'b1000;
      endcase
    end else begin
      counter       <= '0;
      enable_status <= '0;
    end
  end

  logic [6:0] seg_out [3:0];
  logic       p_out   [3:0];
  logic [3:0] gnd_out;

  genvar i;
  generate
    for (i = 0; i < 4; i++) begin : gen_displays
      digital_tube u_tube (
          .enable     (enable_status[i]),
          .display_num(display_numbers[i]),
          .gnd_pin    (gnd_out[i]),
          .seg_pins   (seg_out[i]),
          .p_pin      (p_out[i])
      );
    end
  endgenerate

  always_comb begin
    if (!enable) begin
      seg_pins = 7'b0000000;  
      p_pin    = 1'b0;  
      gnd_pins = 4'b0000;  
    end else begin
      case (counter)
        2'd0: begin
          seg_pins = seg_out[0];
          p_pin    = p_out[0];
          gnd_pins = gnd_out;
        end
        2'd1: begin
          seg_pins = seg_out[1];
          p_pin    = p_out[1];
          gnd_pins = gnd_out;
        end
        2'd2: begin
          seg_pins = seg_out[2];
          p_pin    = p_out[2];
          gnd_pins = gnd_out;
        end
        2'd3: begin
          seg_pins = seg_out[3];
          p_pin    = p_out[3];
          gnd_pins = gnd_out;
        end
        default: begin
          seg_pins = 7'b1111111;
          p_pin    = 1'b1;
          gnd_pins = 4'b0000;
        end
      endcase
    end
  end

endmodule
