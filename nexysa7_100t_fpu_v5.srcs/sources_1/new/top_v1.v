`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/23/2024 02:56:47 PM
// Design Name:
// Module Name: top_v1
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


module top_v1(
    input wire clk_100mhz,
    input wire rst_n,
    input wire [1:0] in_sel_fpu,
    input wire in_ena,
    input wire in_wea,
    output wire [15:0] out_data,
    output wire rsta_busy
);

    // counter
    localparam COUNT = 9999999;     // 100ms
    // LFSRs
    // localparam SINGLE_PRECISION = 32;
    // localparam SP_SEED1 = 32'h57f9_3f1c;
    localparam SINGLE_PRECISION1 = 16;
    localparam SP_SEED1 = 16'haee2;
    localparam SINGLE_PRECISION2 = 16;
    localparam SP_SEED2 = 16'he451;
    // BRAM
    localparam BRAM_ADDR_WIDTH = 8;
    localparam BRAM_ADDR_SEED = 8'h95;



    wire out_clk1;
    wire out_rst_n;

    clock_divider #(
        .COUNT(9999999)  // 350ms
    ) dut_clk (
        .clk_100mhz(clk_100mhz),
        .rst_n(rst_n),
        .out_clk1(out_clk1),     // one second enable for counting numbers
        .out_rst_n(out_rst_n)
    );

    wire [SINGLE_PRECISION1-1:0] in_dataX;
    wire [SINGLE_PRECISION1-1:0] in_dataY;

    lfsr #(
        .DATA_WIDTH(SINGLE_PRECISION1),
        .SEED(SP_SEED1)
    ) dut_indataA (
        .clk(out_clk1),
        .rst_n(out_rst_n),
        .out_data(in_dataX)
    );

    lfsr #(
        .DATA_WIDTH(SINGLE_PRECISION2),
        .SEED(SP_SEED2)
    ) dut_indataB (
        .clk(out_clk1),
        .rst_n(out_rst_n),
        .out_data(in_dataY)
    );

    wire [SINGLE_PRECISION1-1 : 0] in_fpu_dataX1;
    wire [SINGLE_PRECISION1-1 : 0] in_fpu_dataX2;
    wire [SINGLE_PRECISION1-1 : 0] in_fpu_dataX3;
    wire [SINGLE_PRECISION1-1 : 0] in_fpu_dataX4;
    wire [SINGLE_PRECISION2-1 : 0] in_fpu_dataY1;
    wire [SINGLE_PRECISION2-1 : 0] in_fpu_dataY2;
    wire [SINGLE_PRECISION2-1 : 0] in_fpu_dataY3;
    wire [SINGLE_PRECISION2-1 : 0] in_fpu_dataY4;

    demux_1x4 #(.DATA_WIDTH(SINGLE_PRECISION1)) dut_demuxA (
        .in_data(in_dataX),
        .in_sel(in_sel_fpu),
        .out_data1(in_fpu_dataX1),
        .out_data2(in_fpu_dataX2),
        .out_data3(in_fpu_dataX3),
        .out_data4(in_fpu_dataX4)
    );

    demux_1x4 #(.DATA_WIDTH(SINGLE_PRECISION2)) dut_demuxB (
        .in_data(in_dataY),
        .in_sel(in_sel_fpu),
        .out_data1(in_fpu_dataY1),
        .out_data2(in_fpu_dataY2),
        .out_data3(in_fpu_dataY3),
        .out_data4(in_fpu_dataY4)
    );

    wire [SINGLE_PRECISION1+1 : 0] out_fpu_dataR1;
    wire [SINGLE_PRECISION1+1 : 0] out_fpu_dataR2;
    wire [SINGLE_PRECISION1+1 : 0] out_fpu_dataR3;
    wire [SINGLE_PRECISION1+1 : 0] out_fpu_dataR4;

    fpu_add dut_fpu_add_hp (
        .X({2'b0, in_fpu_dataX1}),
        .Y({2'b0, in_fpu_dataY1}),
        .R(out_fpu_dataR1)
    );

    fpu_sub dut_fpu_sub_hp (
        .X({2'b0, in_fpu_dataX2}),
        .Y({2'b0, in_fpu_dataY2}),
        .R(out_fpu_dataR2)
    );

    fpu_mul dut_fpu_mul_hp (
        .X({2'b0, in_fpu_dataX3}),
        .Y({2'b0, in_fpu_dataY3}),
        .R(out_fpu_dataR3)
    );

    fpu_div dut_fpu_div_hp (
        .X({2'b0, in_fpu_dataX4}),
        .Y({2'b0, in_fpu_dataY4}),
        .R(out_fpu_dataR4)
    );

    wire [SINGLE_PRECISION1-1:0] out_data_fpu;

    mux_4x1 #(.DATA_WIDTH(SINGLE_PRECISION2 + 1)) dut_mux (
        .in_data1(out_fpu_dataR1),
        .in_data2(out_fpu_dataR2),
        .in_data3(out_fpu_dataR3),
        .in_data4(out_fpu_dataR4),
        .in_sel(in_sel_fpu),
        .out_data(out_data_fpu)
    );

    wire [BRAM_ADDR_WIDTH-1:0] in_addr;

    lfsr #(
        .DATA_WIDTH(BRAM_ADDR_WIDTH),
        .SEED(BRAM_ADDR_SEED)
    ) dut_in_addr (
        .clk(out_clk1),
        .rst_n(out_rst_n),
        .out_data(in_addr)
    );

    xlnx_block_ram dut_xlnx_block_ram(
        .clka(out_clk1),
        .rsta(out_rst_n),
        .ena(in_ena),
        .wea(in_wea),
        .addra(in_addr),
        .dina(out_data_fpu),
        .douta(out_data),
        .rsta_busy(rsta_busy)
    );

    // assign out_data = out_data_fpu[15:0];

endmodule
