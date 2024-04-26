`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/23/2024 10:55:35 PM
// Design Name:
// Module Name: mux
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


module mux_4x1 #(
    parameter DATA_WIDTH = 16
) (
    input wire [DATA_WIDTH-1:0] in_data1,
    input wire [DATA_WIDTH-1:0] in_data2,
    input wire [DATA_WIDTH-1:0] in_data3,
    input wire [DATA_WIDTH-1:0] in_data4,
    input wire [1:0] in_sel,
    output reg [DATA_WIDTH-1:0] out_data
);

    always @(*) begin
        case (in_sel)
            2'd0: out_data = in_data1;
            2'd1: out_data = in_data2;
            2'd2: out_data = in_data3;
            2'd3: out_data = in_data4;
        endcase
    end

endmodule

