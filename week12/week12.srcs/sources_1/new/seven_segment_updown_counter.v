`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 17:51:11
// Design Name: 
// Module Name: seven_segment_updown_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seven_segment_updown_counter
    #(
        parameter [3: 0]
        S0 = 4'd0,
        S1 = 4'd1,
        S2 = 4'd2,
        S3 = 4'd3,
        S4 = 4'd4,
        S5 = 4'd5,
        S6 = 4'd6,
        S7 = 4'd7,
        S8 = 4'd8,
        S9 = 4'd9
    )
    (
        input clk, rst_n, up, down,
        output [6: 0] result
    );
    
    reg [3: 0] state, next_state;
    wire A, B, C, D, E, F, G;
    
    always @(posedge clk, negedge rst_n) begin:update_state
        if(!rst_n) state <= S0;
        else       state <= next_state;
    end
    
    always @(*) begin:update_next_state
        case(state)
        S0:
            if(up == 1 && down == 0)        next_state = S1;
            else if(up == 0 && down == 1)   next_state = S9;
            else                            next_state = S0;
        S1:
            if(up == 1 && down == 0)        next_state = S2;
            else if(up == 0 && down == 1)   next_state = S0;
            else                            next_state = S1;
        S2:
            if(up == 1 && down == 0)        next_state = S3;
            else if(up == 0 && down == 1)   next_state = S1;
            else                            next_state = S2;
        S3:
            if(up == 1 && down == 0)        next_state = S4;
            else if(up == 0 && down == 1)   next_state = S2;
            else                            next_state = S3;
        S4:
            if(up == 1 && down == 0)        next_state = S5;
            else if(up == 0 && down == 1)   next_state = S3;
            else                            next_state = S4;
        S5:
            if(up == 1 && down == 0)        next_state = S6;
            else if(up == 0 && down == 1)   next_state = S4;
            else                            next_state = S5;
        S6:
            if(up == 1 && down == 0)        next_state = S7;
            else if(up == 0 && down == 1)   next_state = S5;
            else                            next_state = S6;
        S7:
            if(up == 1 && down == 0)        next_state = S8;
            else if(up == 0 && down == 1)   next_state = S6;
            else                            next_state = S7;
        S8:
            if(up == 1 && down == 0)        next_state = S9;
            else if(up == 0 && down == 1)   next_state = S7;
            else                            next_state = S8;
        S9:
            if(up == 1 && down == 0)        next_state = S0;
            else if(up == 0 && down == 1)   next_state = S8;
            else                            next_state = S9;
        endcase
    end
    
    assign A = (state != S1) && (state != S4);
    assign B = (state != S5) && (state != S6);
    assign C = (state != S2);
    assign D = (state != S1) && (state != S4) && (state != S7);
    assign E = (state == S0) || (state == S2) || (state == S6) || (state == S8);
    assign F = (state != S1) && (state != S2) && (state != S3);
    assign G = (state != S0) && (state != S1) && (state != S7);
    
    assign result = {A, B, C, D, E, F, G};
endmodule
