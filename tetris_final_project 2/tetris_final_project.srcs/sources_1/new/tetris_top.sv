//TOP LEVEL MODULE FOR TETRIS GAME
module tetris_top (
    input  logic Clk,
    input  logic reset_rtl_0,
    input  logic [2:0] btn,
    output wire hdmi_tmds_clk_p,
    output wire hdmi_tmds_clk_n,
    output wire [2:0] hdmi_tmds_data_p,
    output wire [2:0] hdmi_tmds_data_n,
    
    //USB signals
    input logic [0:0] gpio_usb_int_tri_i,
    output logic gpio_usb_rst_tri_o,
    input logic usb_spi_miso,
    output logic usb_spi_mosi,
    output logic usb_spi_sclk,
    output logic usb_spi_ss,
    
    //UART
    input logic uart_rtl_0_rxd,
    output logic uart_rtl_0_txd,
    
    //Audio
    output logic SPKL,
    output logic SPKR
);
    logic clk_25MHz;
    logic clk_125MHz;
    logic locked;
    logic [9:0] drawX, drawY;
    logic hsync, vsync, vde;
    logic b0, b1, b2, b3;
    logic move_left, move_right, rotate_btn, restart_btn;
    logic [4:0] row_piece;
    logic signed [4:0] column_piece;
    logic [2:0] tetromino_type;
    logic [1:0] rotation_orientation;
    logic [3:0] board [0:199];
    logic [3:0] red, green, blue;
    logic [17:0] score;
    logic [2:0] next_piece_type;
    
    logic [31:0] keycode0_gpio, keycode1_gpio;
    logic active_high_reset;
    assign active_high_reset = reset_rtl_0;
    
    logic play_rotate;
    logic play_clear;
    logic play_clear_r;

    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(active_high_reset),
        .locked(locked),
        .clk_in1(Clk)
    );
    //MicroBlaze processor block
    design_1 mb_block_i (
        .clk_100MHz(Clk),
        .gpio_usb_int_tri_i(gpio_usb_int_tri_i),
        .gpio_usb_keycode_0_tri_o(keycode0_gpio),
        .gpio_usb_keycode_1_tri_o(keycode1_gpio),
        .gpio_usb_rst_tri_o(gpio_usb_rst_tri_o),
        .reset_rtl_0(~active_high_reset),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(usb_spi_ss)
    );
    //VGA Controller
    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(active_high_reset),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .sync(),
        .drawX(drawX),
        .drawY(drawY)
    );
    //Tetromino Controller (game logic)
    tetromino_controller game (
        .clk(clk_25MHz),
        .reset(active_high_reset),
        .move_left(move_left),
        .move_right(move_right),
        .rotate_btn(rotate_btn),
        .restart_btn(restart_btn),
        .row_piece(row_piece),
        .column_piece(column_piece),
        .tetromino_type(tetromino_type),
        .rotation_orientation(rotation_orientation),
        .board(board),
        .score(score),
        .next_piece_type(next_piece_type),
        .play_clear(play_clear)
    );
    //Color Mapper
    Color_Mapper color (
        .drawX(drawX),
        .drawY(drawY),
        .vde(vde),
        .row_piece(row_piece),
        .column_piece(column_piece),
        .tetromino_type(tetromino_type),
        .rotation_orientation(rotation_orientation),
        .board(board),
        .score(score),
        .next_piece_type(next_piece_type),
        .red(red),
        .green(green),
        .blue(blue)
    );

    //HDMI Transmitter
    hdmi_tx_0 hdmi (
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        .rst(active_high_reset),
        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        .TMDS_CLK_P(hdmi_tmds_clk_p),
        .TMDS_CLK_N(hdmi_tmds_clk_n),
        .TMDS_DATA_P(hdmi_tmds_data_p),
        .TMDS_DATA_N(hdmi_tmds_data_n)
    );
    
    //Audio 
    audio a (
        .clk(Clk),
        .play_rotate(play_rotate),
        .play_clear(play_clear_r),
        .reset(reset_rtl_0),
        .out_left(SPKL),
        .out_right(SPKR)
    );

    //keyboard inputs
    assign b0 = (keycode0_gpio[7:0] == 8'd80); // left arrow (move left)
    assign b1 = (keycode0_gpio[7:0] == 8'd79); // right arrow (move right)
    assign b2 = (keycode0_gpio[7:0] == 8'd82); // up arrow (rotation)
    assign b3 = (keycode0_gpio[7:0] == 8'd21); // R key (restart the game)
    
    //for audio 
    logic b2_p;
    logic b0_p;
    logic b1_p;
    logic clear_p;
    always_ff @(posedge Clk) begin
        b2_p <= b2;
        b1_p <= b1;
        b0_p <= b0;
        clear_p <= play_clear;
    end
    assign play_rotate = (b2 & ~b2_p) | (b1 & ~b1_p) | (b0 & ~b0_p);
    assign play_clear_r = play_clear & ~clear_p;


    //decoded keyboard signals for tetromino_controller
    assign move_left = b0;
    assign move_right = b1;
    assign rotate_btn = b2;
    assign restart_btn = b3;

endmodule
