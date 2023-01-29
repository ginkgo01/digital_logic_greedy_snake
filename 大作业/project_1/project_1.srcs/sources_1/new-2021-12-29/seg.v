`timescale 1ns / 1ps

module seg(
	// ����˵����topģ��
    input reset,
    input clock,
    input [31:0] score,      //Ҫ����ķ���
    output reg [7:0] seg,   //��λ����ܣ���ĳһλ�����
    output reg [7:0] an     //ѡ�����Ϊ��λ���������һ�����͵�ƽ��Ч

    );
    
    wire [3:0] score_a,score_b,score_c,score_d; // �ֱ�Ϊǧλ����λ��ʮλ����λ���ֵ�4λBDC��
    assign score_d = score % 10;
    assign score_c = (score % 100) / 10;
    assign score_b = score / 100;

    
    wire [7:0] b_seg,c_seg,d_seg;
    //����Ϊ��λ��ʮλ����λ

    bcdto8segment_dataflow Sc2(.num(score_b),.seg(b_seg));
    bcdto8segment_dataflow Sc1(.num(score_c),.seg(c_seg));
    bcdto8segment_dataflow Sc0(.num(score_d),.seg(d_seg));
    //������ת��Ϊ����λ�������ʾ�õĸ�ʽ
    
    reg [18:0] count;
    
    initial
    begin
    count<=0;
    end
    
    always @(posedge clock or posedge reset)
    begin
    	if (reset==1)
    	begin
    		an<=8'b11110000;
    		seg<=8'b10000000;
    		count<=0;
    	end
    	else
    	begin
    		// countÿ��100000�л�����ܣ��൱��ÿ���л���ʱ��Ϊ100k/100M=1/1000s=1ms
			if (count==400000) 
			begin
				an<=8'b11111110;
				seg<=d_seg;
				count<=0;
			end
			else if (count==300000)
			begin
				an<=8'b11111101;
				seg<=c_seg;
				count<=count+1;
			end
			else if (count==200000)
			begin
				an<=8'b11111011;
				seg<=b_seg;
				count<=count+1;
			end

			else count<=count+1;
		end
    end
endmodule
