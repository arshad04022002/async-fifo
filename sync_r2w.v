`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2026 01:54:14
// Design Name: 
// Module Name: sync_r2w
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


module sync_r2w (input wclk, wrst_n, [WIDTH:0]rptr, 
                 output reg [WIDTH:0] wq2_rptr);
                 
     parameter WIDTH=3;
     reg [WIDTH:0] q1;
     
     always@(posedge wclk) begin
       if(!wrst_n) begin
         q1 <= 0;
         wq2_rptr <= 0;
       end
       else begin
         q1 <= rptr;
         wq2_rptr <= q1;
       end
     end
endmodule
