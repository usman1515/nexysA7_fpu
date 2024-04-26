`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/23/2024 02:56:58 PM
// Design Name:
// Module Name: clock_divider
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


module clock_divider #(
    // parameter COUNT = 99999999 // 1 sec
    parameter COUNT = 9999999  // 100ms
) (
    input wire clk_100mhz,
    input wire rst_n,
    output wire out_rst_n,
    output wire out_clk1     // one second enable for counting numbers
);

    reg [26:0] counter_one_sec;     // counter for generating 1 second clock enable

    // one second counter
    always @(posedge clk_100mhz) begin
        if(rst_n)
            counter_one_sec <= 0;
        else begin
            if(counter_one_sec <= COUNT)
                counter_one_sec <= counter_one_sec + 1;
            else
                counter_one_sec <= 0;
        end
    end

    assign out_clk1 = (counter_one_sec == COUNT)? 1 : 0;
    assign out_rst_n = (rst_n)? 1 : 0;


endmodule

