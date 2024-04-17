`timescale 1ns / 1ps
/* @file top.v

    The top hierarchy of LongTeng GPU.
    SPDX-License-Identifier: WTFPL
*/

/*
    @module top
    @param clk The input FPGA main clock.
    @param rst The reset signal.
    @param led The generated LED. 
*/
module top (
    input clk,
    input rst,
    output reg [7:0] led
);

always @ (posedge clk or negedge rst) begin
    if(!rst) begin
        led <= 7'b0000001;
    end
    else begin
        led <= {led[6:0],led[7]};
    end
end


endmodule
