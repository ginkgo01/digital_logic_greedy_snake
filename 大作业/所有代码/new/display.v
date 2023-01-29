module display(
	// 变量说明见top模块
    input clock, // 148.5MHZ，用于输出1920x1080@60Hz的VGA信号
    input [5:0] apple_x,
    input [5:0] apple_y,
    input [32*6-1:0] snake_x_temp,
    input [32*6-1:0] snake_y_temp,
    input [31:0] snake_piece_is_display,
    input [1:0] game_status,
    
    input [2:0] snake_color, //蛇的颜色(低位至高位分别为R、G、B) 
    
    output h_sync,v_sync,
    output reg [11:0] vga
    );
    
    wire VGA_CLK[1:0];
    my_clk_wiz_1 (clock,VGA_CLK[1]);
	localparam PAUSED=2'b00;
    localparam PLAYING=2'b01;
    localparam DIE_FLASHING=2'b10;
    localparam INITIALIZING=2'b11;
  
	localparam UP=2'b00;
    localparam RIGHT=2'b01;
    localparam DOWN=2'b10;
    localparam LEFT=2'b11;
    
    localparam h_active_pixels=1920;
    localparam v_active_pixels=1080;
    
	wire [11:0] x_counter;
	wire [10:0] y_counter;
	wire in_display_area;
	    
	// snake_x[0]：头的横坐标  snake_y[0]:头的纵坐标
    reg [5:0] snake_x [31:0];
	reg [5:0] snake_y [31:0];
	
	// 当前x，y坐标，0<=x<=47,0<=y<=26
	reg [5:0] current_x;
	reg [5:0] current_y;
    
	vga_sync_generator(
	    .clock(VGA_CLK[1]),
	    .h_sync(h_sync),
	    .v_sync(v_sync),
	    .x_counter(x_counter),
	    .y_counter(y_counter),
	    .in_display_area(in_display_area)
	  );	
	 
	
	// 用于模块间传递二维数组 [5:0] snake_x/y [31:0]
	// 参考自 https://stackoverflow.com/questions/16369698/how-to-pass-array-structure-between-two-verilog-modules
	integer i;
	always @(snake_x_temp,snake_y_temp)
	begin
	for (i=0;i<32;i=i+1)
		begin
			// 片选
			snake_x[i]<=snake_x_temp[6*i+:6];
			snake_y[i]<=snake_y_temp[6*i+:6];
		end
	end
	
	always @(x_counter or y_counter)
	begin
		current_x<=x_counter/21;
		current_y<=y_counter/28;
	end 
	
	wire [11:0]RGB_snake_head;
	wire [11:0]RGB_snake_body;	
	
	assign RGB_snake_head[0] = snake_color[0];
	assign RGB_snake_head[1] = snake_color[0];
	assign RGB_snake_head[2] = 1;	
	assign RGB_snake_head[3] = snake_color[0];
	assign RGB_snake_head[4] = snake_color[1];
    assign RGB_snake_head[5] = snake_color[1];
    assign RGB_snake_head[6] = 1;    
    assign RGB_snake_head[7] = snake_color[1];	
	assign RGB_snake_head[8] = snake_color[2];
    assign RGB_snake_head[9] = snake_color[2];
    assign RGB_snake_head[10] = 1;    
    assign RGB_snake_head[11] = snake_color[2];

	assign RGB_snake_body[0] = snake_color[0];
	assign RGB_snake_body[1] = snake_color[0];
	assign RGB_snake_body[2] = snake_color[0];	
	assign RGB_snake_body[3] = 0;
	assign RGB_snake_body[4] = snake_color[1];
    assign RGB_snake_body[5] = snake_color[1];
    assign RGB_snake_body[6] = snake_color[1];    
    assign RGB_snake_body[7] = 0;	
	assign RGB_snake_body[8] = snake_color[2];
    assign RGB_snake_body[9] = snake_color[2];
    assign RGB_snake_body[10] = snake_color[2];   
    assign RGB_snake_body[11] = 0;
    
        		
    always @(posedge VGA_CLK[1])
    begin
			begin
				if (in_display_area==0) vga<=0;
				else if (current_x==0 || current_x==47 || current_y==0 || current_y == 26) vga<=12'b1111_1111_1111; //边框
				else if (current_x == apple_x && current_y == apple_y) vga<=12'b1011_0100_1001; //苹果
				else if (current_x == snake_x[0] && current_y == snake_y[0] && snake_piece_is_display[0]==1) vga <= RGB_snake_head; //蛇头
				else if
				(
				(current_x == snake_x[1] && current_y == snake_y[1] && snake_piece_is_display[1]==1) ||
				(current_x == snake_x[2] && current_y == snake_y[2] && snake_piece_is_display[2]==1) ||
				(current_x == snake_x[3] && current_y == snake_y[3] && snake_piece_is_display[3]==1) ||
				(current_x == snake_x[4] && current_y == snake_y[4] && snake_piece_is_display[4]==1) ||
				(current_x == snake_x[5] && current_y == snake_y[5] && snake_piece_is_display[5]==1) ||
				(current_x == snake_x[6] && current_y == snake_y[6] && snake_piece_is_display[6]==1) ||
				(current_x == snake_x[7] && current_y == snake_y[7] && snake_piece_is_display[7]==1) ||
				(current_x == snake_x[8] && current_y == snake_y[8] && snake_piece_is_display[8]==1) ||
				(current_x == snake_x[9] && current_y == snake_y[9] && snake_piece_is_display[9]==1) ||
				(current_x == snake_x[10] && current_y == snake_y[10] && snake_piece_is_display[10]==1) ||
				(current_x == snake_x[11] && current_y == snake_y[11] && snake_piece_is_display[11]==1) ||
				(current_x == snake_x[12] && current_y == snake_y[12] && snake_piece_is_display[12]==1) ||
				(current_x == snake_x[13] && current_y == snake_y[13] && snake_piece_is_display[13]==1) ||
				(current_x == snake_x[14] && current_y == snake_y[14] && snake_piece_is_display[14]==1) ||
				(current_x == snake_x[15] && current_y == snake_y[15] && snake_piece_is_display[15]==1) ||
				(current_x == snake_x[16] && current_y == snake_y[16] && snake_piece_is_display[16]==1) ||
				(current_x == snake_x[17] && current_y == snake_y[17] && snake_piece_is_display[17]==1) ||
				(current_x == snake_x[18] && current_y == snake_y[18] && snake_piece_is_display[18]==1) ||
				(current_x == snake_x[19] && current_y == snake_y[19] && snake_piece_is_display[19]==1) ||
				(current_x == snake_x[20] && current_y == snake_y[20] && snake_piece_is_display[20]==1) ||
				(current_x == snake_x[21] && current_y == snake_y[21] && snake_piece_is_display[21]==1) ||
				(current_x == snake_x[22] && current_y == snake_y[22] && snake_piece_is_display[22]==1) ||
				(current_x == snake_x[23] && current_y == snake_y[23] && snake_piece_is_display[23]==1) ||
				(current_x == snake_x[24] && current_y == snake_y[24] && snake_piece_is_display[24]==1) ||
				(current_x == snake_x[25] && current_y == snake_y[25] && snake_piece_is_display[25]==1) ||
				(current_x == snake_x[26] && current_y == snake_y[26] && snake_piece_is_display[26]==1) ||
				(current_x == snake_x[27] && current_y == snake_y[27] && snake_piece_is_display[27]==1) ||
				(current_x == snake_x[28] && current_y == snake_y[28] && snake_piece_is_display[28]==1) ||
				(current_x == snake_x[29] && current_y == snake_y[29] && snake_piece_is_display[29]==1) ||
				(current_x == snake_x[30] && current_y == snake_y[30] && snake_piece_is_display[30]==1) ||
				(current_x == snake_x[31] && current_y == snake_y[31] && snake_piece_is_display[31]==1)
				)
				vga <= RGB_snake_body;//身子
				else vga<=0;
			end
    end
endmodule