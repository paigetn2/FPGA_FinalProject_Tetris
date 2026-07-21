
`timescale 1ns / 1ps
 
 
module audio (
    input  logic clk,           
    input  logic reset,
    input  logic play_rotate,   
    input  logic play_clear,    
    output logic out_left,
    output logic out_right
);

    localparam int DIV = 2267;   //100MHz / 2267 = 44.1kHz
    localparam int LEN  = 2048;  
    logic [10:0] addr;
    logic [15:0] rotate_data;
    logic [15:0] rd_new;
    assign rd_new = {rotate_data[7:0], rotate_data[15:8]};
    logic [15:0] clear_data;
    //logic [15:0] cd_new;
    //assign cd_new = {clear_data[7:0], clear_data[15:8]};
 
    rotate rotate_sound (
        .clka  (clk),
        .addra (addr),
        .douta (rotate_data)
    );
 
    row_cleared clear_sound (
        .clka  (clk),
        .addra (addr),
        .douta (clear_data)
    );
 
    logic[2:0] state; //0 is no sound, 1 is rotate sound, 2 is clear sound
    logic [11:0] counter; //counts up to SAMPLE_DIV
    logic [10:0] index; //current index of audio clip 
    logic[15:0] current_sample; //switches between both sounds 
 
    always_comb begin
        case (state)
            2'd0: current_sample = 16'h8000; //no sound
            2'd1: current_sample = rd_new + 16'h8000;
            2'd2: current_sample = clear_data[8:0] + 8'h80;
        endcase
    end
 
    logic [16:0] accum; 
 
    always_ff @(posedge clk) begin
        if (reset) begin
            accum <= 0;
        end
        else begin
            accum <= accum[15:0] + current_sample;
        end
    end
 
    assign out_left  = accum[16]; //take MSB
    assign out_right = accum[16];

    always_ff @(posedge clk) begin
        if (reset) begin
            state <= 2'd0;
            counter <= 0;
            index <= 0;
            addr <= 0;
        end 
        
        else begin
            if (play_clear) begin
                state <= 2'd2;
                counter <= 0;
                index <= 0;
                addr <= 0;
            end 
            else if (play_rotate && state == 2'd0) begin
                state <= 2'd1;
                counter <= 0;
                index <= 0;
                addr <= 0;
            end
 
            else if (state != 2'd0) begin
                if (counter == DIV - 1) begin
                    counter <= 0;
                    
                    if (index == LEN - 1) begin 
                        state <= 2'd0;
                        index <= 0;
                        addr <= 0;
                    end 
                    else begin
                        index <= index + 1;
                        addr <= addr + 1;
                    end
                    
                end 
                else begin
                    counter <= counter + 1;
                end
            end
 
        end
    end
 
endmodule