// COLOR MAPPER (determines what color each pixel on the screen will be) //

module Color_Mapper (
    input logic [9:0] drawX,           
    input logic [9:0] drawY,           
    input logic vde,                   
    input logic [4:0] row_piece,      
    input logic signed [4:0] column_piece, 
    input logic [2:0] tetromino_type,  
    input logic [1:0] rotation_orientation, 
    input logic [3:0] board [0:199],   
    input logic [17:0] score,          
    input logic [2:0] next_piece_type, 

    output logic [3:0] red,
    output logic [3:0] green,
    output logic [3:0] blue
);

    logic [9:0] offsetX = 220; //the board is 200x400 pixels but we want the board to be centered 
    logic [9:0] offsetY = 40; //board game is displayed at pixel (220, 40) on the HDMI display to make it centered

    logic [5:0] col, row;
    assign col = (drawX - offsetX) / 20;
    assign row = (drawY - offsetY) / 20;
    
    logic [5:0] font_num;
    logic [5:0] font_row; 
    logic [5:0] font_col; 
    logic score_bit;      
    
    font_rom fr (
        .number(font_num),
        .row(font_row),
        .col(font_col),
        .out_bit(score_bit)
    );

    // maps a board value (1-7) to a 12-bit RGB color
    // board stores tetromino_type + 1, so we subtract 1 implicitly via the case values
    function automatic [11:0] get_color(input logic [2:0] val); //maps the board 
        case(val)
            3'd1: get_color = 12'h0FF; // cyan (straight)
            3'd2: get_color = 12'hFF0; // yellow (square)
            3'd3: get_color = 12'hF0F; // purple (T)
            3'd4: get_color = 12'hF80; // orange (right L)
            3'd5: get_color = 12'h00F; // blue (left L)
            3'd6: get_color = 12'h0F0; // green (right-zag)
            3'd7: get_color = 12'hF00; // red (left-zag)
            default: get_color = 12'h000; // black (default)
        endcase
    endfunction
    
    //this function returns a value of 1 if the cell (r,c) is filled for the falling 
    //piece at its particular rotation
    function automatic logic filled(input int r, input int c);
    begin
        filled = 0;
        case (tetromino_type)
        0: case (rotation_orientation) //straight
            0: filled = (r==1 && c<4);
            1: filled = (c==1 && r<4);
            2: filled = (r==2 && c<4);
            3: filled = (c==1 && r<4);
        endcase
        1: filled = (r>=0 && r<=1 && c>=0 && c<=1); //square
        2: case (rotation_orientation) //T
            0: filled = (r==1 && c<3)||(r==0 && c==1);
            1: filled = (c==1 && r<3)||(r==1 && c==2);
            2: filled = (r==1 && c<3)||(r==2 && c==1);
            3: filled = (c==1 && r<3)||(r==1 && c==0);
        endcase
        3: case (rotation_orientation) //right L
            0: filled = (c==0 && r<3)||(r==2 && c<3);
            1: filled = (r==0 && c<3)||(c==0 && r<3);
            2: filled = (c==2 && r<3)||(r==0 && c<3);
            3: filled = (r==2 && c<3)||(c==2 && r<3);
        endcase
        4: case (rotation_orientation) //left L
            0: filled = (c==2 && r<3)||(r==2 && c<3);
            1: filled = (r==2 && c<3)||(c==0 && r<3);
            2: filled = (c==0 && r<3)||(r==0 && c<3);
            3: filled = (r==0 && c<3)||(c==2 && r<3);
        endcase
        5: case (rotation_orientation) //right-zag
            0,2: filled = (r==0 && (c==0||c==1))||(r==1 && (c==1||c==2));
            1,3: filled = (c==1 && (r==0||r==1))||(c==0 && (r==1||r==2));
        endcase
        6: case (rotation_orientation) //left-zag
            0,2: filled = (r==1 && (c==0||c==1))||(r==0 && (c==1||c==2));
            1,3: filled = (c==0 && (r==0||r==1))||(c==1 && (r==1||r==2));
        endcase
        7: filled = (r>=0 && r<=1 && c>=0 && c<=1); // powerup block (2x2 square in our game)
        endcase
    end
    endfunction

    // draws one pixel of a letter from the word "TETRIS"
    function automatic logic letter_pixel(input int letter_id, input int row_pixel, input int column_pixel);
    begin
        logic [4:0] row_bits;
        letter_pixel = 0;
        if (row_pixel >= 0 && row_pixel < 7 && column_pixel >= 0 && column_pixel < 5) begin
            case (letter_id)
            0: case (row_pixel) // T
                0: row_bits = 5'b11111; 1: row_bits = 5'b00100;
                2: row_bits = 5'b00100; 3: row_bits = 5'b00100;
                4: row_bits = 5'b00100; 5: row_bits = 5'b00100;
                default: row_bits = 5'b00100;
               endcase
            1: case (row_pixel) // E
                0: row_bits = 5'b11111; 1: row_bits = 5'b10000;
                2: row_bits = 5'b10000; 3: row_bits = 5'b11110;
                4: row_bits = 5'b10000; 5: row_bits = 5'b10000;
                default: row_bits = 5'b11111;
               endcase
            2: case (row_pixel) // R
                0: row_bits = 5'b11110; 1: row_bits = 5'b10001;
                2: row_bits = 5'b10001; 3: row_bits = 5'b11110;
                4: row_bits = 5'b10100; 5: row_bits = 5'b10010;
                default: row_bits = 5'b10001;
               endcase
            3: case (row_pixel) // I
                0: row_bits = 5'b11111; 1: row_bits = 5'b00100;
                2: row_bits = 5'b00100; 3: row_bits = 5'b00100;
                4: row_bits = 5'b00100; 5: row_bits = 5'b00100;
                default: row_bits = 5'b11111;
               endcase
            4: case (row_pixel) // S
                0: row_bits = 5'b01111; 1: row_bits = 5'b10000;
                2: row_bits = 5'b10000; 3: row_bits = 5'b01110;
                4: row_bits = 5'b00001; 5: row_bits = 5'b00001;
                default: row_bits = 5'b11110;
               endcase
            default: row_bits = 5'b00000;
            endcase
            // MSB of row_bits is the leftmost pixel, so we index from the right
            letter_pixel = row_bits[4 - column_pixel];
        end
    end
    endfunction

    // preview tetromino piece box position and cell size on the HDMI Display
    localparam int PREV_X = 450; 
    localparam int PREV_Y = 80;
    localparam int PREV_CELL = 10; 

    // same concept as filled() function but doing it for the preview box
    function automatic logic filled_preview(input int r, input int c, input logic [2:0] t);
    begin
        filled_preview = 0;
        case (t)
        0: filled_preview = (r==1 && c<4);
        1: filled_preview = (r>=0 && r<=1 && c>=0 && c<=1);
        2: filled_preview = (r==1 && c<3)||(r==0 && c==1);
        3: filled_preview = (c==0 && r<3)||(r==2 && c<3);
        4: filled_preview = (c==2 && r<3)||(r==2 && c<3);
        5: filled_preview = (r==0 && (c==0||c==1))||(r==1 && (c==1||c==2));
        6: filled_preview = (r==1 && (c==0||c==1))||(r==0 && (c==1||c==2));
        7: filled_preview = (r>=0 && r<=1 && c>=0 && c<=1);
        endcase
    end
    endfunction

    logic is_piece;       
    logic is_preview;    
    logic is_preview_box;
    logic is_border;      
    logic is_score;       
    logic is_title;      
    logic [2:0] title_letter_idx; 
    logic [5:0] xtile;    
    logic [5:0] ytile;    
    logic [11:0] color;        
    logic [11:0] border_color; 
    logic [11:0] score_color; 

    always_comb begin
        red = 0; green = 0; blue = 0; //everything on the display is initially black
        is_piece = 0; is_border = 0; is_score = 0; is_title = 0;
        is_preview = 0; is_preview_box = 0;
        color = 12'h000;
        border_color = 12'h000;
        score_color = 12'h000;
        title_letter_idx = 0;
        font_num = 0; font_row = 0; font_col = 0;
        // check if the pixel is in the left border, right border, or bottom border
        if ((drawX >= offsetX - 20 && drawX < offsetX) || (drawX >= offsetX + 200 && drawX < offsetX + 220) || (drawY >= offsetY + 400 && drawY < offsetY + 420))
            is_border = 1;
        xtile = drawX / 20;
        ytile = drawY / 20;
        if (xtile >= 5'd4 && xtile <= 5'd8 && ytile == 5'd3)
            is_score = 1;
        begin //render the TETRIS title on the top of the screen
            int rel_x, rel_y, letter_idx, letter_x, pixel_row, pixel_column;
            int letter_ids[6];
            letter_ids[0]=0; //map each position to a letter ID
            letter_ids[1]=1; 
            letter_ids[2]=0; 
            letter_ids[3]=2; 
            letter_ids[4]=3; 
            letter_ids[5]=4;
            rel_x = int'(drawX) - 285;
            rel_y = int'(drawY) - 12;
            if (rel_x >= 0 && rel_x < 70 && rel_y >= 0 && rel_y < 14) 
            begin
                pixel_row = rel_y / 2;
                letter_idx = rel_x / 12;      
                letter_x = rel_x % 12;      
                pixel_column = letter_x / 2;    
                if (letter_idx >= 0 && letter_idx < 6) 
                begin
                    if (letter_pixel(letter_ids[letter_idx], pixel_row, pixel_column)) 
                    begin
                        is_title = 1;
                        title_letter_idx = letter_idx[2:0];
                    end
                end
            end
        end
        // border checkerboard pattern
        if (is_border) 
        begin
            int tile_x = drawX / 20;
            int tile_y = drawY / 20;
            if ((tile_x + tile_y) % 2 == 0) 
                border_color = 12'hAAA; // light gray
            else                             
                border_color = 12'h666; // dark gray
        end

        // look up which score digit to show at this pixel position
        if (is_score) begin
            font_row = drawY % 5'd20; 
            font_col = drawX % 5'd20; 
            unique case (xtile)
                5'd8: font_num = score % 10;
                5'd7: font_num = (score / 10) % 10;
                5'd6: font_num = (score / 100) % 10;
                5'd5: font_num = (score / 1000) % 10;
                5'd4: font_num = (score / 10000) % 10;
            endcase
            score_color = score_bit ? 12'hFFF : 12'h000; //white score display
        end

        // check if the pixel is inside the 40x40 preview box area
        if (drawX >= PREV_X && drawX < PREV_X + 40 && drawY >= PREV_Y && drawY < PREV_Y + 40)
            is_preview_box = 1;

        // check if the pixel lands on a filled cell of the preview piece
        for (int pr = 0; pr < 4; pr++)
            for (int pc = 0; pc < 4; pc++)
                if (filled_preview(pr, pc, next_piece_type)) 
                begin
                    int px = PREV_X + (pc * PREV_CELL); 
                    int py = PREV_Y + (pr * PREV_CELL);
                    if (drawX >= px && drawX < px + PREV_CELL && drawY >= py && drawY < py + PREV_CELL)
                        is_preview = 1;
                end

        // check if the pixel is part of the currently falling piece
        for (int r = 0; r < 4; r++)
            for (int c = 0; c < 4; c++)
                if (filled(r, c)) begin
                    int board_col = int'(column_piece) + c; //signed arithmetic for handling negative col values
                    int board_row = int'(row_piece) + r;
                    //draw if the cell is within the board range
                    if (board_row >= 0 && board_row < 20 && board_col >= 0 && board_col < 10)
                        if (row == board_row[5:0] && col == board_col[5:0])
                            is_piece = 1;
                end

        if (vde) 
        begin
            if (is_border)
                color = border_color;
            else if (is_score)
                color = score_color;
            else if (is_preview)
                color = (next_piece_type == 7) ? 12'hFFF : get_color(next_piece_type + 1); //the powerup block is set as white in the game
            else if (is_preview_box)
                color = 12'h111; // the preview piece is put on top of a dark background 
            else if (is_title) 
            begin
                case (title_letter_idx)
                    3'd0: color = 12'hF00; //red
                    3'd1: color = 12'hF80; //orange
                    3'd2: color = 12'hFF0; //yellow
                    3'd3: color = 12'h0F0; //green
                    3'd4: color = 12'h0FF; //cyan
                    3'd5: color = 12'hF0F; //magenta
                    default: color = 12'hFFF;
                endcase
            end
            else if (drawX >= offsetX && drawX < offsetX + 200 && drawY >= offsetY  && drawY < offsetY  + 400) 
            begin
                if (is_piece)
                    color = (tetromino_type == 7) ? 12'hFFF : get_color(tetromino_type + 1);
                else if (col < 10 && row < 20 && board[row * 10 + col] == 4'd8)
                    color = 12'hFFF;
                else if (col < 10 && row < 20 && board[row * 10 + col] != 0)
                    color = get_color(board[row * 10 + col][2:0]);
                else
                    color = 12'h000;
            end
            else
                color = 12'h000;
            //12-bit color is split into 3 4-bit channels
            red   = color[11:8];
            green = color[7:4];
            blue  = color[3:0];
        end
    end
endmodule