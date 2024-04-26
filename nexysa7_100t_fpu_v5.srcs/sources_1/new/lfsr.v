`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/23/2024 02:59:27 PM
// Design Name:
// Module Name: lfsr
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////



module lfsr #(
    parameter DATA_WIDTH = 32,
    parameter SEED = 32'h57f9_3f1c
) (
    input wire  clk,
    input wire  rst_n,
    output wire [DATA_WIDTH-1:0] out_data
);

    reg     [DATA_WIDTH-1:0] curr_data;
    wire    [DATA_WIDTH-1:0] next_data;

    always @(posedge clk) begin
        if (rst_n) begin
            curr_data <= SEED;
        end
        else begin
            curr_data <= next_data;
        end
    end

    assign feedback = ~{curr_data[DATA_WIDTH-1] ^ curr_data[DATA_WIDTH-2] ^ curr_data[DATA_WIDTH-4] ^ curr_data[DATA_WIDTH-5]};
    assign next_data = {curr_data[DATA_WIDTH-2:0], feedback};

    assign out_data = curr_data;

endmodule