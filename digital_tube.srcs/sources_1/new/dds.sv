`timescale 1ns / 1ps
module dds #(
    parameter int PHASE_WIDTH = 8,
    parameter int DATA_WIDTH  = 8
) (
    input  logic                   clk,
    input  logic                   rst_n,
    input  logic [PHASE_WIDTH-1:0] K,             // 频率控制字
    output logic [ DATA_WIDTH-1:0] da_input_data
);

  logic [PHASE_WIDTH-1:0] address_reg;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      address_reg <= '0;
    end else begin
      address_reg <= address_reg + K;
    end
  end

  da_amplitude_data u_da_amplitude_data (
      .clka (clk),
      .ena  (1'b1),
      .wea  (1'b0),
      .addra(address_reg),
      .dina ('0),
      .douta(da_input_data)
  );

endmodule
