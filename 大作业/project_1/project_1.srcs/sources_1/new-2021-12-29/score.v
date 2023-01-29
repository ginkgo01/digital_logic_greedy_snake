`timescale 1ns / 1ps

module score(
	// ����˵����topģ��
	input clock,
	input reset,
	input get_apple,
	input [1:0] game_status,
	
	output [7:0] an,
	output [7:0] seg
    );
    
    localparam LAUNCHING=2'b00;
    localparam PLAYING=2'b01;
    localparam DIE_FLASHING=2'b10;
    localparam INITIALIZING=2'b11;
    
    wire real_enable;
    wire real_reset;
    
    assign real_enable = (get_apple==1) && (game_status==PLAYING); // ��counterʹ��
    assign real_reset = (reset==1) | (game_status==INITIALIZING); // ��counter���
    
    reg [31:0]Myscore;
    
    always @(posedge clock)
    begin
         if(real_reset == 1)
            Myscore = 0; 
         else if(real_enable == 1)
            Myscore = Myscore + 1;           
         
    end
    

    
    // ��ǧλ����λ��ʮλ����λ���ֵ�4λBDC�������������ʾ
    seg (
        .reset(reset),
        .clock(clock),
        .an(an),
        .seg(seg),
    	.score(Myscore)
        );
        
endmodule
