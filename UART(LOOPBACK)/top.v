`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 16:26:46
// Design Name: 
// Module Name: top
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


module top(
    input CLK,
    input RX_IN,
    output TX_OUT
    );
    wire t_active;
    wire t_data_out;
    wire dv;
    wire[7:0] w_rx;
    UARTTX #(.CLK_PER_BITS(1086)) uut(.clk(CLK),
                                          .data_in(w_rx),
                                          .data_out(t_data_out),
                                          .dv(dv),
                                          .count(),
                                          .bitindex(),
                                          .STATE(),
                                          .active(t_active),
                                          .done(t_done),
                                          .register());
UARTRX #( .CLK_PER_BITS(1086)) uutt(
                 .clk(CLK),
  				 .data_in(RX_IN),
  			     .data_out(w_rx),
  			     .dv(dv),
  			     .count(),
  				 .bitindex(),
 				 .STATE());
/*design_1_wrapper( UART1_RX_0(RX_IN),
                  UART1_TX_0(TX_OUT)) ;			*/	 
assign TX_OUT=t_active? t_data_out:1'b1;


endmodule
