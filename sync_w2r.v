`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2026 02:04:45
// Design Name: 
// Module Name: sync_w2r
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


module sync_w2r(input rclk, rrst_n, [WIDTH:0]wptr, 
                 output reg [WIDTH:0] rq2_wptr );
         parameter WIDTH=3; 
         reg [WIDTH:0] q1;
         
     always@(posedge rclk) begin
       if(!rrst_n) begin
         q1 <= 0;
         rq2_wptr <= 0;
       end
       else begin
         q1 <= wptr;
         rq2_wptr <= q1;
       end
     end
endmodule