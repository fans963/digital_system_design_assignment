`timescale 1ns / 1ps

module switch (
    input  logic switch_pin,    
    output logic trigger     
);

  assign trigger = switch_pin;

endmodule
