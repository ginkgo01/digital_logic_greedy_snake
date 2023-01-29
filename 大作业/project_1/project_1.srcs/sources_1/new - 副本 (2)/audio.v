`timescale 1ns / 1ps

module get_wave(
    input clk_in,
    input [31:0]n_2,
    input rst,
    
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

always@(posedge clk_in or posedge rst)
begin
    if(rst == 1)
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
    
    input SD_ctrl,
    
    output wave,
    output AUD_SD
    
    );
    
reg [31:0] n_2;//分频系数
reg pitch = 1;

reg rst;
    //下面是分频常数
    always@(pitch)
    begin
        case(pitch)
            3'd0:n_2<=32'd0;
            3'd1:n_2<=32'd191095;
            3'd2:n_2<=32'd170270;
            3'd3:n_2<=32'd151676;
            3'd4:n_2<=32'd143163;
            3'd5:n_2<=32'd127551;
            3'd6:n_2<=32'd113636;
            3'd7:n_2<=32'd101235;
        endcase
        rst<=1;
    end
    

get_wave Audio(clk, n_2, SD_ctrl, wave);
assign AUD_SD = ~SD_ctrl;   
    
endmodule
