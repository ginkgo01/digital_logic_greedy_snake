`timescale 1ns / 1ps

module seg(
	// 变量说明见top模块
    input reset,
    input clock,
    input [31:0] score,      //要输出的分数
    input [31:0] total_time,  //要输出的用时
    output reg [7:0] seg,   //八位数码管（的某一位）输出
    output reg [7:0] an     //选择输出为八位数码管其中一个，低电平有效

    );
    
    wire [3:0] score_a,score_b,score_c,score_d; // 分别为千位、百位、十位、个位数字的4位BDC码
    assign score_d = score % 10;
    assign score_c = (score % 100) / 10;
    assign score_b = score / 100;
        
    wire [7:0] b_seg,c_seg,d_seg;
    //依次为百位，十位，个位

    bcdto8segment_dataflow Sc2(.num(score_b),.seg(b_seg));
    bcdto8segment_dataflow Sc1(.num(score_c),.seg(c_seg));
    bcdto8segment_dataflow Sc0(.num(score_d),.seg(d_seg));
    //将它们转换为供八位数码管显示用的格式

    
    wire [3:0] total_time_decs [0:3];   //用时的四位数据
    wire [7:0] total_time_segflow [0:3];//用时的七段数码管流 
    assign total_time_decs[0] = total_time % 10;
    assign total_time_decs[1] = (total_time / 10) % 10;    
    assign total_time_decs[2] = (total_time / 100) % 10;   
    assign total_time_decs[3] = (total_time / 1000);   

    bcdto8segment_dataflow T0(.num(total_time_decs[0]),.seg(total_time_segflow[0]));
    bcdto8segment_dataflow T1(.num(total_time_decs[1]),.seg(total_time_segflow[1]));
    bcdto8segment_dataflow T2(.num(total_time_decs[2]),.seg(total_time_segflow[2]));
    bcdto8segment_dataflow T3(.num(total_time_decs[3]),.seg(total_time_segflow[3]));    
    
/*---------以下为刷新数码管所用代码--------*/    
    reg [18:0] count;
    
    initial
    begin
    count<=0;
    end
    
    always @(posedge clock or posedge reset)
    begin
    	if (reset==1)
    	begin
    		an<=8'b00000000;
    		seg<=8'b10000000;
    		count<=0;
    	end
    	else
    	begin
    		// count每数100000切换数码管，相当于每次切换的时间为100k/100M=1/1000s=1ms
			if (count==800000) 
            begin
                an <= 8'b01111111;
                seg <= total_time_segflow[3];
                count <= 0;
            end
            else if (count==700000)
            begin
                an <= 8'b10111111;
                seg <= total_time_segflow[2];
                count <= count + 1;
            end
            else if (count==600000)
            begin
                an <= 8'b11011111;
                seg <= total_time_segflow[1];
                count <= count + 1;
            end	
            else if (count == 500000)
            begin
                an <= 8'b11101111;
                seg <= total_time_segflow[0];
                count <= count + 1;
            end    
			else if (count==400000) 
			begin
				an<=8'b11111110;
				seg<=d_seg;
				count <= count + 1;
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
