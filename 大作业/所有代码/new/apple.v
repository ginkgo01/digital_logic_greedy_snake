`timescale 1ns / 1ps

module apple(
	// ����˵����topģ��
    input clock,
    input get_apple,
    input [1:0] game_status,
    
    // ���ƻ������
    output reg [5:0] apple_x,
    output reg [5:0] apple_y
    );
    
	localparam LAUNCHING=2'b00;
    localparam PLAYING=2'b01;
    localparam DIE_FLASHING=2'b10;
    localparam INITIALIZING=2'b11;
    
    // ���������α������ƻ������
    reg [11:0] random_for_x;
    reg [11:0] random_for_y;

    initial 
    begin
		random_for_x<=521;
		random_for_y<=133;
    end
    
    always @(posedge clock)
    begin
    	random_for_x<=random_for_x+997;
    	random_for_y<=random_for_x+793;
    	
    	if (game_status==INITIALIZING)
			begin
			apple_x<=20;
			apple_y<=13;
			random_for_x<=521;
			random_for_y<=133;
			end
    	else
    	if (game_status==PLAYING && get_apple==1)
		begin
			// ��ֹƻ��x��y���곬��Χ
			apple_x<=(random_for_x[5:0]+1>46?(random_for_x[5:0]+1-20):(random_for_x[5:0]+1));
			apple_y<=(random_for_y[4:0]+1>25?(random_for_y[4:0]+1-10):(random_for_y[4:0]+1));
		end
    	else 
    	begin
			apple_x<=apple_x;
			apple_y<=apple_y;
    	end

    end
endmodule
