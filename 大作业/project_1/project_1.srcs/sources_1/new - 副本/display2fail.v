module display(
	// 变量说明见top模块
    input clock, // 148.5MHZ，用于输出1920x1080@60Hz的VGA信号
    input [5:0] apple_x,
    input [5:0] apple_y,
    input [32*6-1:0] snake_x_temp,
    input [32*6-1:0] snake_y_temp,
    input [31:0] snake_piece_is_display,
    input [1:0] game_status,
    
    output h_sync,v_sync,
    output reg [11:0] vga
    );

	localparam LAUNCHING=2'b00;
    localparam PLAYING=2'b01;
    localparam DIE_FLASHING=2'b10;
    localparam INITIALIZING=2'b11;
  
	localparam UP=2'b00;
    localparam RIGHT=2'b01;
    localparam DOWN=2'b10;
    localparam LEFT=2'b11;
    
    localparam h_active_pixels=1920;
    localparam v_active_pixels=1080;
    
	wire [11:0] x_pos;//扫描到的当前x坐标
	wire [11:0] y_pos;//扫描到的当前y坐标
	
	reg [9:0] cur_x;
  	reg [9:0] cur_y;
	
//	wire in_display_area;
	    
	// snake_x：蛇的相对横坐标  snake_y:蛇的相对纵坐标
    reg [5:0] snake_x [31:0];
	reg [5:0] snake_y [31:0];
	
//	reg [11:0] count;
	
//	// 当前x，y坐标，0<=x<=47,0<=y<=26
//	reg [5:0] current_x;
//	reg [5:0] current_y;
    
//	vga_sync_generator(
//	    .clock(clock),
//	    .h_sync(h_sync),
//	    .v_sync(v_sync),
//	    .x_counter(x_counter),
//	    .y_counter(y_counter),
//	    .in_display_area(in_display_area)
//	  );	
	 
	 wire rgb_ena;
//	 vga_driver VGA1024_768(clock,1,rgb_ena,h_sync,v_sync,x_pos,y_pos);
	vga_sync_generator VGA_driver(clock,h_sync,v_sync,x_pos,y_pos,rgb_ena);
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
	
	
	integer myi;
    
    always @(posedge clock)
    begin
    
    cur_x = x_pos / 21;
    cur_y = y_pos / 28;
    
    if(rgb_ena == 1)
    begin
        if(cur_x == 0 || cur_x == 47 || cur_y == 0 || cur_y == 26)
            vga <= 12'b1111_1111_1111;
    
        else if(apple_x == cur_x && apple_y == cur_y)
            vga <= 12'b1011_0100_1001;
        else if(cur_x == snake_x[0] && cur_y == snake_y[0] && snake_piece_is_display[0] == 1)
            vga <= 12'b0000_1000_0010;
//        begin
        
    
//            for(myi = 0;myi < 31; myi = myi + 1)
//            begin
//                if(cur_x == snake_x[myi] && cur_y == snake_y[myi] && snake_piece_is_display[myi] == 1)
//                    vga <= 12'b0000_1000_0010;
//                else
//                    vga <= 12'b0000_0000_0000;
//            end 
        
//        end
    end
    else
        vga <= 12'b0000_0000_0000;
        
//    if(apple_x == cur_x && apple_y == cur_y)
//        vga <= 12'b1011_0100_1001;
//    else
//    begin
    

//        for(i = 0;i < 31; i = i + 1)
//        begin
//            if(cur_x == snake_x[i] && cur_y == snake_y[i] && snake_piece_is_display[i] == 1)
//                vga <= 12'b0000_1000_0010;
//        end 
    
//    end
    
//    if(x_pos < 500)
//        vga <= 12'b0000_1110_0010;
//    else
//        vga <= 12'b1110_0000_0010;
    end
endmodule