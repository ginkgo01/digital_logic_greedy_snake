`timescale 1ns / 1ps

module fsm(
	// ����˵����topģ��
    input reset,
    input clock,
    input hit_wall,
    input hit_itself,
    input up,right,down,left,
    input pause,
    output reg [1:0] game_status
    );
	
	localparam PAUSED=2'b00;       //��ͣ
    localparam PLAYING=2'b01;      //��Ϸ��
    localparam DIE_FLASHING=2'b10; //������˸
    localparam INITIALIZING=2'b11; //��ʼ��

    reg [27:0] count_two; // count_two������������˸����ʱ
    
    // ��ʼ��״̬�ͼ�����
	initial
	begin
	game_status<=INITIALIZING;
    
	count_two<=0;
	end
	
    always @(posedge clock)
    begin
    	//�κ�״̬�£�����reset�ָ���INITIALIZING
    	if (reset==1) 
    	    game_status<=INITIALIZING;
        else if (pause == 1)
            game_status <= PAUSED;
		else if (game_status==PLAYING && (hit_wall==1 || hit_itself==1))
		begin
		game_status<=DIE_FLASHING;
		count_two<=0;
		end
		
		else if (game_status==DIE_FLASHING)
		begin
			if (count_two==200000000) begin game_status<=INITIALIZING; count_two<=0; end
			else count_two <= count_two+1; // count_two������������˸����ʱ
		end
		
		else if (game_status == INITIALIZING && ( up==1 || right==1 || down==1 || left==1))
		begin
		game_status <= PLAYING; // �������ⰴ��ʱ��Ϸ��ʼ
		end
		else if (game_status == PAUSED && ( up==1 || right==1 || down==1 || left==1))
        begin
        game_status <= PLAYING; // ��ͣ״̬�£��������ⰴ��ʱ��Ϸ����
        end
    end
endmodule
