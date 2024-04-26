`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/23/2024 04:09:58 PM
// Design Name:
// Module Name: tb_xlnx_block_ram
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


module tb_xlnx_block_ram;

    localparam T=2;
    localparam WEA_WIDTH = 1;
    localparam ADDR_WIDTH = 8;
    localparam DATA_WIDTH = 16;

    localparam MIN = 16'h0;
    localparam MAX = 16'hffff;

    reg clka;
    reg rsta;
    reg ena;
    reg [WEA_WIDTH-1:0]     wea;
    reg [ADDR_WIDTH-1:0]    addra;
    reg [DATA_WIDTH-1:0]    dina;
    wire [DATA_WIDTH-1:0]   douta;
    wire rsta_busy;

    xlnx_block_ram dut_xlnx_block_ram(
        .clka(clka),            // synchronous clk
        .rsta(rsta),            // reset port A mem
        .ena(ena),              // enable read, write, reset operations in port A
        .wea(wea),              // enable write operation in port A
        .addra(addra),          // port A addr
        .dina(dina),            // port A data input
        .douta(douta),          // port A data output
        .rsta_busy(rsta_busy)   // bram port A shouldnt be accessed when this signal high
    );

    always begin
        #T clka=1'b0; #T clka=1'b1;
    end

    initial begin
        repeat(5) @(posedge clka) begin
            rsta = 1'b0;
        end

        // * disabled
        repeat(10) @(posedge clka) begin
            rsta = 'd0;
            ena = 'd0;
            wea = 'd0;
            addra = $urandom_range(MIN, MAX);
            dina = $urandom_range(MIN, MAX);
        end

        // * write first
        repeat(10) @(posedge clka) begin
            rsta = 'd0;
            ena = 'd1;
            wea = 'd1;
            addra = $urandom_range(MIN, MAX);
            dina = $urandom_range(MIN, MAX);
        end

        // * read mode
        repeat(10) @(posedge clka) begin
            rsta = 'd0;
            ena = 'd1;
            wea = 'd0;
            addra = $urandom_range(MIN, MAX);
            dina = $urandom_range(MIN, MAX);
        end

        $finish;
    end

endmodule

// disabled:       ena=0 wea=0
// read mode:      ena=1 wea=0
// write first:    ena=1 wea=1
