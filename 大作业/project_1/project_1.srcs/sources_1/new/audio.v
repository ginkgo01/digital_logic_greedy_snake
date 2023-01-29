`timescale 1ns / 1ps

module get_wave(
    input clk_in,
    input [31:0]n_2,
    input rst_n,
    
    output reg clk_out //分频后的时钟
);

reg [31:0] counter;
wire [31:0] n;
assign n = n_2 / 2;

initial 
begin
    clk_out <= 0;
    counter <= 32'b0;
end

always@(posedge clk_in or negedge rst_n)
begin
    if(rst_n == 0)
    begin
        clk_out = 0;
        counter = 0;
    end
    else if(n != 32'b0)
    begin
        if(counter < n)
            counter <= counter + 1;
        else
        begin
            clk_out <= ~clk_out;
            counter <= 32'b0;
        end    
    end
    
end

endmodule


module Audio(
    input clk,
//    input rst,
//    input SD_ctrl,
    
    input hit_wall,
    input hit_itself,
    input get_apple,
    input up,right,down,left,

    output AUD_PWM,
    output AUD_SD
    
    );
    
//assign AUD_SD = (hit_wall | hit_itself | get_apple | up | right | down | left);  
    
reg [31:0] n_2;//分频系数
reg [7:0]pitch;
reg counter_ena;    // 用于开始计时
reg [127:0]counter; // 用于计时响多久

assign AUD_SD = counter_ena;

    //控制音高，音长
    always @(posedge clk)
    begin
    if(counter_ena)
    begin
        if(counter == 50000000)
        begin 
            counter_ena = 0;
            counter = 0;
        end
        else
            counter = counter + 1;             
    end
    else
    begin
        if(hit_wall | hit_itself)
        begin
            counter_ena = 1;
            counter = 0;
            pitch = 7;
        end
        else if(get_apple)
        begin
            counter_ena = 1;
            counter = 0;
            pitch = 5;
        end
        else if(up | right | left | down)
        begin
            counter_ena = 1;
            counter = 0;
            pitch = 1;
        end

        case(pitch)
            8'd0:n_2<=32'd0;
            8'd1:n_2<=32'd191095;
            8'd2:n_2<=32'd170270;
            8'd3:n_2<=32'd151676;
            8'd4:n_2<=32'd143163;
            8'd5:n_2<=32'd127551;
            8'd6:n_2<=32'd113636;
            8'd7:n_2<=32'd101235;
            default: n_2<=32'd191095;
        endcase

    end
    end

get_wave Audio(clk, n_2, counter_ena, AUD_PWM);
 
    
endmodule
