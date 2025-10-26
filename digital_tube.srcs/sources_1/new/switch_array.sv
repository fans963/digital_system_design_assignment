`timescale 1ns / 1ps

module switch_array (
    input  logic [7:0] switch_pins,
    output logic [7:0] switch_array_status
);

  genvar i;
  generate
    for (i = 0; i < 8; i++) begin : gen_switch_array
      switch u_switch (
          .switch_pin(switch_pins[i]),
          .trigger(switch_array_status[i])
      );
    end
  endgenerate

endmodule
