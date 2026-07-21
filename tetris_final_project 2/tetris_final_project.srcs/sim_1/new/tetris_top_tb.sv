//TESTBENCH SIMULATION FOR TETRIS GAME//
`timescale 1ns / 1ps

module tetris_top_tb();
    //inputs
    logic clk = 0;
    logic reset = 0;
    logic move_left = 0;
    logic move_right = 0;
    logic rotate_btn = 0;
    logic restart_btn = 0;
    //outputs
    logic [17:0] score;
    logic [4:0]  row_piece;
    logic signed [4:0] column_piece;
    logic [2:0]  tetromino_type;
    logic [1:0]  rotation_orientation;
    logic [3:0]  board [0:199];
    logic [2:0]  next_piece_type;
    //connect the signals to the module
    tetromino_controller dut (
        .clk(clk),
        .reset(reset),
        .move_left(move_left),
        .move_right(move_right),
        .rotate_btn(rotate_btn),
        .restart_btn(restart_btn),
        .score(score),
        .row_piece(row_piece),
        .column_piece(column_piece),
        .tetromino_type(tetromino_type),
        .rotation_orientation(rotation_orientation),
        .board(board),
        .next_piece_type(next_piece_type)
    );
    always #20 clk = ~clk;
    task wait_cycles(input int n);
        repeat(n) @(posedge clk);
    endtask
    integer i;
    initial begin
        reset = 1;
        wait_cycles(5);
        reset = 0;
        wait_cycles(2);

        force dut.startup_counter = 26'd50_000_000;
        wait_cycles(2); //force the startup counter to the final value to speed up the simulation process

        $display("=== Start Tetris SImulation ===");
        $display("[Init] type=%0d row=%0d col=%0d rot=%0d",
            tetromino_type, row_piece, column_piece, rotation_orientation);

        $display("\n[Test 1] Move Left Twice");
        move_left = 1; wait_cycles(2); move_left = 0; wait_cycles(3);
        $display("  col=%0d", column_piece);
        move_left = 1; wait_cycles(2); move_left = 0; wait_cycles(3);
        $display("  col=%0d", column_piece);

        $display("\n[Test 2] Move Right");
        move_right = 1; wait_cycles(2); move_right = 0; wait_cycles(3);
        $display("  col=%0d", column_piece);

        $display("\n[Test 3] Rotate");
        $display("  rot before=%0d", rotation_orientation);
        rotate_btn = 1; wait_cycles(2); rotate_btn = 0; wait_cycles(3);
        $display("  rot after=%0d", rotation_orientation);

        $display("\n[Test 4] Falling Piece (5 steps)");
        repeat(5) begin
            force dut.counter = 24'd12_000_000;
            wait_cycles(2);
            release dut.counter;
            wait_cycles(3);
            $display("  row=%0d col=%0d", row_piece, column_piece);
        end

        $display("\n[Test 5] Drop to Bottom of Grid");
        repeat(20) begin
            force dut.counter = 24'd12_000_000;
            wait_cycles(2);
            release dut.counter;
            wait_cycles(2);
        end
        $display("  row=%0d score=%0d", row_piece, score);

        wait_cycles(10);
        $display("\n[Test 6] New Piece Spawning After Landing");
        $display("  type=%0d row=%0d col=%0d",
            tetromino_type, row_piece, column_piece);

        $display("\n[Test 7] Restart Game");
        restart_btn = 1; wait_cycles(2); restart_btn = 0; wait_cycles(5);
        $display("  type=%0d row=%0d col=%0d score=%0d",
            tetromino_type, row_piece, column_piece, score);

        $display("\n[Board Check] Bottom row after restart:");
        for(i = 0; i < 10; i++)
            $write("%0d ", board[190+i]);
        $display("");

        $display("\n=== Simulation Complete ===");
        $finish;
    end

    always @(row_piece or column_piece or rotation_orientation or tetromino_type) begin
        if(!reset)
            $display("  t=%0t type=%0d row=%0d col=%0d rot=%0d score=%0d",
                $time, tetromino_type, row_piece, column_piece,
                rotation_orientation, score);
    end

endmodule