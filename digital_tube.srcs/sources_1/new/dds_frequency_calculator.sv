`timescale 1ns / 1ps

module dds_frequency_calculator #(
    parameter int CLK_FREQUENCY = 10000000,
    parameter int DDS_PHASE_BIT_WIDTH = 8
) (
    input logic [DDS_PHASE_BIT_WIDTH-1:0] k,
    output logic [DDS_PHASE_BIT_WIDTH-1:0] frequency_decimal,  //Khz
    output logic [$clog2(CLK_FREQUENCY/1000+1)-1:0] frequency_integer 
);

  logic [$clog2(
(CLK_FREQUENCY/1000) * (2**DDS_PHASE_BIT_WIDTH) + 1
)-1:0] frequency; 

  always_comb begin
    frequency = k * ($clog2(CLK_FREQUENCY) + DDS_PHASE_BIT_WIDTH + 1)'(CLK_FREQUENCY / 1000);
    frequency_decimal = frequency[DDS_PHASE_BIT_WIDTH-1:0];
    frequency_integer =
        frequency[$clog2((CLK_FREQUENCY/1000)*(2**DDS_PHASE_BIT_WIDTH)+1)-1:DDS_PHASE_BIT_WIDTH];
  end

endmodule
