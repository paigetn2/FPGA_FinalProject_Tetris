//TETROMINO CONTROLLER- entire game logic//
module tetromino_controller (
    input  logic clk,
    input  logic reset,
    input  logic move_left,
    input  logic move_right,
    input  logic rotate_btn,
    input  logic restart_btn,
    output logic [17:0] score,

    output logic [4:0] row_piece,
    output logic signed [4:0] column_piece,
    output logic [2:0] tetromino_type,
    output logic [1:0] rotation_orientation,
    output logic [3:0] board [0:199],
    output logic [2:0] next_piece_type,
    output logic row_cleared,    
    output logic piece_landed,   
    output logic game_over, 
    output logic play_clear
);

    logic [23:0] counter; //# of clock cycles for block falling
    integer filled_up_row; //is a row filled up?
    logic game_over; //when to stop the game
    logic [3:0] temp_board [0:199]; //temporary board for making updates
    localparam int FALL_MAX = 12_000_000;
    logic [17:0] score_next;
    logic [15:0] lfsr; //16-bit Linear Feedback Shift Register, produces a sequence of pseudo-random values to randomly pick the next piece type

    logic [25:0] startup_counter;
    localparam int STARTUP_DELAY = 50_000_000;
    logic usb_ready;
    assign usb_ready = (startup_counter >= STARTUP_DELAY);

    logic [2:0] next_piece_type_reg;
    assign next_piece_type = next_piece_type_reg;
    integer board_index;
    integer r, c;
    integer row_offset_checker, column_offset_checker;
    integer next_row, next_column;
    integer row_index, column_index;
    integer next_tetromino_type;

    logic prev_left, prev_right, prev_rotate, prev_restart;
    logic left_pulse, right_pulse, rotate_pulse, restart_pulse;

    assign left_pulse = move_left & ~prev_left;
    assign right_pulse = move_right & ~prev_right;
    assign rotate_pulse = rotate_btn & ~prev_rotate;
    assign restart_pulse = restart_btn & ~prev_restart;

    function logic filled(input int row, input int col); //checks if the block exists at a particular row and column inside a 4x4 piece
    begin
        filled = 0;
        case (tetromino_type)
        0: case (rotation_orientation) //straight
            0: filled = (row==1 && col<4);
            1: filled = (col==1 && row<4);
            2: filled = (row==2 && col<4);
            3: filled = (col==1 && row<4);
        endcase
        1: filled = (row>=0 && row<=1 && col>=0 && col<=1); //square
        2: case (rotation_orientation) //T
            0: filled = (row==1 && col<3)||(row==0&&col==1);
            1: filled = (col==1 && row<3)||(row==1&&col==2);
            2: filled = (row==1 && col<3)||(row==2&&col==1);
            3: filled = (col==1 && row<3)||(row==1&&col==0);
        endcase
        3: case (rotation_orientation) //right L
            0: filled = (col==0 && row<3)||(row==2 && col<3);
            1: filled = (row==0 && col<3)||(col==0 && row<3);
            2: filled = (col==2 && row<3)||(row==0 && col<3);
            3: filled = (row==2 && col<3)||(col==2 && row<3);
        endcase
        4: case (rotation_orientation) //left L
            0: filled = (col==2 && row<3)||(row==2 && col<3);
            1: filled = (row==2 && col<3)||(col==0 && row<3);
            2: filled = (col==0 && row<3)||(row==0 && col<3);
            3: filled = (row==0 && col<3)||(col==2 && row<3);
        endcase
        5: case (rotation_orientation) //right-zag
            0,2: filled = (row==0 && (col==0||col==1)) ||
                          (row==1 && (col==1||col==2));
            1,3: filled = (col==1 && (row==0||row==1)) ||
                          (col==0 && (row==1||row==2));
        endcase
        6: case (rotation_orientation) //left-zag
            0,2: filled = (row==1 && (col==0||col==1)) ||
                          (row==0 && (col==1||col==2));
            1,3: filled = (col==0 && (row==0||row==1)) ||
                          (col==1 && (row==1||row==2));
        endcase
        7: filled = (row>=0 && row<=1 && col>=0 && col<=1); //powerup block
        endcase
    end
    endfunction

    function logic can_fall(); //checks if a piece can fall down
    begin
        can_fall = 1;
        for (row_offset_checker = 0; row_offset_checker < 4; row_offset_checker++) 
        begin
            for (column_offset_checker = 0; column_offset_checker < 4; column_offset_checker++) 
            begin
                if (filled(row_offset_checker, column_offset_checker)) 
                begin
                    next_row = int'(row_piece) + row_offset_checker + 1;
                    next_column = int'(column_piece) + column_offset_checker;
                    if (next_row >= 20)
                        can_fall = 0;
                    else if (next_column >= 0 && next_column < 10) 
                    begin
                        if (board[next_row * 10 + next_column] != 0)
                            can_fall = 0;
                    end else
                        can_fall = 0;
                end
            end
        end
    end
    endfunction

    function logic can_move_left(); //checks if a piece can move left
    begin
        can_move_left = 1;
        for (row_offset_checker = 0; row_offset_checker < 4; row_offset_checker++) 
        begin
            for (column_offset_checker = 0; column_offset_checker < 4; column_offset_checker++) 
            begin
                if (filled(row_offset_checker, column_offset_checker)) begin
                    next_column = int'(column_piece) + column_offset_checker - 1;
                    next_row = int'(row_piece) + row_offset_checker;
                    if (next_column < 0)
                        can_move_left = 0;
                    else if (board[next_row * 10 + next_column] != 0)
                        can_move_left = 0;
                end
            end
        end
    end
    endfunction

    function logic can_move_right(); //checks if a piece can move right
    begin
        can_move_right = 1;
        for (row_offset_checker = 0; row_offset_checker < 4; row_offset_checker++) 
        begin
            for (column_offset_checker = 0; column_offset_checker < 4; column_offset_checker++) 
            begin
                if (filled(row_offset_checker, column_offset_checker)) 
                begin
                    next_column = int'(column_piece) + column_offset_checker + 1;
                    next_row = int'(row_piece) + row_offset_checker;
                    if (next_column >= 10)
                        can_move_right = 0;
                    else if (board[next_row * 10 + next_column] != 0)
                        can_move_right = 0;
                end
            end
        end
    end
    endfunction

    function logic can_rotate(); //checks if the piece can be rotated safely, also figures out the next rotation and sees if that's also valid
    begin
        integer next_rotation;
        integer cell_filled;
        if (tetromino_type == 5 || tetromino_type == 6)
            next_rotation = (rotation_orientation == 0) ? 1 : 0;
        else
            next_rotation = (rotation_orientation == 3) ? 0 : rotation_orientation + 1;
        can_rotate = 1;
        for (row_offset_checker = 0; row_offset_checker < 4; row_offset_checker++) 
        begin
            for (column_offset_checker = 0; column_offset_checker < 4; column_offset_checker++) 
            begin
                cell_filled = 0;
                case (tetromino_type)
                0: case (next_rotation)
                    0: cell_filled = (row_offset_checker == 1 && column_offset_checker < 4);
                    1: cell_filled = (column_offset_checker == 1 && row_offset_checker < 4);
                    2: cell_filled = (row_offset_checker == 2 && column_offset_checker < 4);
                    3: cell_filled = (column_offset_checker == 1 && row_offset_checker < 4);
                endcase
                1: cell_filled = (row_offset_checker >= 0 && row_offset_checker <= 1 && column_offset_checker >= 0 && column_offset_checker <= 1);
                2: case (next_rotation)
                    0: cell_filled = (row_offset_checker == 1 && column_offset_checker < 3) || (row_offset_checker == 0 && column_offset_checker == 1);
                    1: cell_filled = (column_offset_checker == 1 && row_offset_checker < 3) || (row_offset_checker == 1 && column_offset_checker == 2);
                    2: cell_filled = (row_offset_checker == 1 && column_offset_checker < 3) || (row_offset_checker == 2 && column_offset_checker == 1);
                    3: cell_filled = (column_offset_checker == 1 && row_offset_checker < 3) || (row_offset_checker == 1 && column_offset_checker == 0);
                endcase
                3: case (next_rotation)
                    0: cell_filled = (column_offset_checker == 0 && row_offset_checker < 3) || (row_offset_checker == 2 && column_offset_checker < 3);
                    1: cell_filled = (row_offset_checker == 0 && column_offset_checker < 3) || (column_offset_checker == 0 && row_offset_checker < 3);
                    2: cell_filled = (column_offset_checker == 2 && row_offset_checker < 3) || (row_offset_checker == 0 && column_offset_checker < 3);
                    3: cell_filled = (row_offset_checker == 2 && column_offset_checker < 3) || (column_offset_checker == 2 && row_offset_checker < 3);
                endcase
                4: case (next_rotation)
                    0: cell_filled = (column_offset_checker == 2 && row_offset_checker < 3) || (row_offset_checker == 2 && column_offset_checker < 3);
                    1: cell_filled = (row_offset_checker == 2 && column_offset_checker < 3) || (column_offset_checker == 0 && row_offset_checker < 3);
                    2: cell_filled = (column_offset_checker == 0 && row_offset_checker < 3) || (row_offset_checker == 0 && column_offset_checker < 3);
                    3: cell_filled = (row_offset_checker == 0 && column_offset_checker < 3) || (column_offset_checker == 2 && row_offset_checker < 3);
                endcase
                5: case (next_rotation)
                    0,2: cell_filled = (row_offset_checker == 0 && (column_offset_checker == 0 || column_offset_checker == 1)) || (row_offset_checker == 1 && (column_offset_checker == 1 || column_offset_checker == 2));
                    1,3: cell_filled = (column_offset_checker == 1 && (row_offset_checker == 0 || row_offset_checker == 1)) || (column_offset_checker == 0 && (row_offset_checker == 1 || row_offset_checker == 2));
                endcase
                6: case (next_rotation)
                    0,2: cell_filled = (row_offset_checker == 1 && (column_offset_checker == 0 || column_offset_checker == 1)) || (row_offset_checker == 0 && (column_offset_checker == 1 || column_offset_checker == 2));
                    1,3: cell_filled = (column_offset_checker == 0 && (row_offset_checker == 0 || row_offset_checker == 1)) || (column_offset_checker == 1 && (row_offset_checker == 1 || row_offset_checker == 2));
                endcase
                7: cell_filled = (row_offset_checker >= 0 && row_offset_checker <= 1 && column_offset_checker >= 0 && column_offset_checker <= 1);
                endcase
                if (cell_filled) begin
                    next_row = int'(row_piece) + row_offset_checker;
                    next_column = int'(column_piece) + column_offset_checker;
                    if (next_row < 0 || next_row >= 20 || next_column < 0 || next_column >= 10)
                        can_rotate = 0;
                    else if (board[next_row * 10 + next_column] != 0)
                        can_rotate = 0;
                end
            end
        end
    end
    endfunction

    function logic spawn_blocked_next(); //checks if the next piece overlaps existing blocks at spawn
    begin
        integer cell_filled;
        spawn_blocked_next = 0;
        for (row_offset_checker = 0; row_offset_checker < 4; row_offset_checker++) 
        begin
            for (column_offset_checker = 0; column_offset_checker < 4; column_offset_checker++) 
            begin
                cell_filled = 0;
                case (next_tetromino_type)
                0: cell_filled = (row_offset_checker == 1 && column_offset_checker < 4);
                1: cell_filled = (row_offset_checker >= 0 && row_offset_checker <= 1 && column_offset_checker >= 0 && column_offset_checker <= 1);
                2: cell_filled = (row_offset_checker == 1 && column_offset_checker < 3) || (row_offset_checker == 0 && column_offset_checker == 1);
                3: cell_filled = (column_offset_checker == 0 && row_offset_checker < 3) || (row_offset_checker == 2 && column_offset_checker < 3);
                4: cell_filled = (column_offset_checker == 2 && row_offset_checker < 3) || (row_offset_checker == 2 && column_offset_checker < 3);
                5: cell_filled = (row_offset_checker == 0 && (column_offset_checker == 0 || column_offset_checker == 1)) || (row_offset_checker == 1 && (column_offset_checker == 1 || column_offset_checker == 2));
                6: cell_filled = (row_offset_checker == 1 && (column_offset_checker == 0 || column_offset_checker == 1)) || (row_offset_checker == 0 && (column_offset_checker == 1 || column_offset_checker == 2));
                7: cell_filled = (row_offset_checker >= 0 && row_offset_checker <= 1 && column_offset_checker >= 0 && column_offset_checker <= 1);
                endcase
                if (cell_filled) 
                begin
                    next_row = row_offset_checker;
                    next_column = 3 + column_offset_checker;
                    if (temp_board[next_row * 10 + next_column] != 0)
                        spawn_blocked_next = 1;
                end
            end
        end
    end
    endfunction

    always_ff@(posedge clk)
    begin
        score <= score_next;
    end

    always_ff @(posedge clk)
    begin
        prev_left <= move_left;
        prev_right <= move_right;
        prev_rotate <= rotate_btn;
        prev_restart <= restart_btn; //save the current button states
        play_clear <= 0;
        lfsr <= {lfsr[14:0], lfsr[15] ^ lfsr[13] ^ lfsr[12] ^ lfsr[10]}; //advance the LFSR to generate random piece the next cycle
        if (startup_counter < STARTUP_DELAY)
            startup_counter <= startup_counter + 1;
        if (reset)
        begin //reset all the parameters
            score_next <= 0;
            row_piece <= 0;
            column_piece <= 5'sd3;
            tetromino_type <= 0;
            rotation_orientation <= 0;
            counter <= 0;
            game_over <= 0;
            lfsr <= 16'hACE1;
            startup_counter <= 0;
            next_piece_type_reg <= 0;
            for (board_index = 0; board_index < 200; board_index++) //clear the board
                board[board_index] <= 0;
        end else if (restart_pulse)
        begin //restart the game when R is pressed at any time
            score_next <= 0;
            row_piece <= 0;
            column_piece <= 5'sd3;
            tetromino_type <= 0;
            rotation_orientation <= 0;
            counter <= 0;
            game_over <= 0;
            lfsr <= 16'hACE1;
            next_piece_type_reg <= 0;
            for (board_index = 0; board_index < 200; board_index++) //clear the board
                board[board_index] <= 0;
        end else if (!game_over)
        begin
            if (usb_ready) begin
            if (left_pulse && can_move_left() && can_fall() && counter != FALL_MAX) //movement
                column_piece <= column_piece - 5'sd1;
            if (right_pulse && can_move_right() && can_fall() && counter != FALL_MAX) //movement
                column_piece <= column_piece + 5'sd1;
            if (rotate_pulse && can_fall() && can_rotate() && counter != FALL_MAX) //movement
                if (tetromino_type == 5 || tetromino_type == 6)
                    rotation_orientation <= (rotation_orientation == 0) ? 1 : 0;
                else
                    rotation_orientation <= (rotation_orientation == 3) ? 0 : rotation_orientation + 1;
            if (counter == FALL_MAX) //falling blocks
            begin
                counter <= 0;
                if (can_fall())
                begin
                    row_piece <= row_piece + 1;
                end else
                begin
                    for (board_index = 0; board_index < 200; board_index++)
                        temp_board[board_index] = board[board_index];
                    for (r = 0; r < 4; r++)
                        for (c = 0; c < 4; c++)
                            if (filled(r, c)) begin
                                next_row = int'(row_piece) + r;
                                next_column = int'(column_piece) + c;
                                if (next_row >= 0 && next_row < 20 && next_column >= 0 && next_column < 10)
                                    temp_board[next_row * 10 + next_column] = tetromino_type + 1;
                            end
                    begin
                        integer rows_cleared;
                        rows_cleared = 0;
                        for (row_index = 0; row_index < 20; row_index = row_index + 1)
                        begin
                            filled_up_row = 1; //is a row filled up?
                            for (column_index = 0; column_index < 10; column_index = column_index + 1)
                                if (temp_board[row_index * 10 + column_index] == 0)
                                    filled_up_row = 0;
                            if (filled_up_row)
                            begin
                                //play_clear <= 1;
                                rows_cleared = rows_cleared + 1;
                                for (int shift_row = row_index; shift_row > 0; shift_row = shift_row - 1)
                                    for (column_index = 0; column_index < 10; column_index = column_index + 1)
                                        temp_board[shift_row * 10 + column_index] =
                                            temp_board[(shift_row - 1) * 10 + column_index];
                                for (column_index = 0; column_index < 10; column_index = column_index + 1)
                                    temp_board[column_index] = 0;
                            end
                        
                        end
                        play_clear <= (rows_cleared > 0);
                        score_next <= score_next + rows_cleared;
                    end
                    if (tetromino_type == 7) begin
                        for (row_index = 0; row_index <= 3; row_index = row_index + 1) 
                        begin
                            for (column_index = 0; column_index <= 3; column_index = column_index + 1) 
                            begin
                                next_row = int'(row_piece) + row_index - 1;
                                next_column = int'(column_piece) + column_index - 1;
                                if (next_row >= 0 && next_row < 20 && next_column >= 0 && next_column < 10)
                                    temp_board[next_row * 10 + next_column] = 0;
                            end
                        end
                    end
                    for (board_index = 0; board_index < 200; board_index++)
                        board[board_index] <= temp_board[board_index];
                    row_piece <= 0;
                    column_piece <= 5'sd3;
                    rotation_orientation <= 0;
                    lfsr <= lfsr ^ counter[15:0];
                    next_tetromino_type = int'(next_piece_type_reg);
                    if (spawn_blocked_next())
                        game_over <= 1;
                    else begin
                        tetromino_type <= next_piece_type_reg;
                        case ((lfsr ^ counter[15:0]) % 8) //the preview piece becomes the current piece, then a new random piece is put in the preview display
                            0: next_piece_type_reg <= 3'd0;
                            1: next_piece_type_reg <= 3'd1;
                            2: next_piece_type_reg <= 3'd2;
                            3: next_piece_type_reg <= 3'd3;
                            4: next_piece_type_reg <= 3'd4;
                            5: next_piece_type_reg <= 3'd5;
                            6: next_piece_type_reg <= 3'd6;
                            default: next_piece_type_reg <= 3'd7;
                        endcase
                    end
                end
            end else begin
                counter <= counter + 1;
            end
            end 
        end
    end

endmodule
