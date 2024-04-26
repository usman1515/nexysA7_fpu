`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/23/2024 10:15:56 PM
// Design Name:
// Module Name: demux
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


module demux_1x4 #(
    parameter DATA_WIDTH = 16
) (
    input wire [DATA_WIDTH-1:0] in_data,
    input wire [1:0] in_sel,
    output reg [DATA_WIDTH-1:0] out_data1,
    output reg [DATA_WIDTH-1:0] out_data2,
    output reg [DATA_WIDTH-1:0] out_data3,
    output reg [DATA_WIDTH-1:0] out_data4
);

    always @(*) begin
        case (in_sel)
            2'd0: out_data1 = in_data;
            2'd1: out_data2 = in_data;
            2'd2: out_data3 = in_data;
            2'd3: out_data4 = in_data;
        endcase
    end

endmodule
