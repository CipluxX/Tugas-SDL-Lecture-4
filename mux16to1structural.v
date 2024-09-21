//Muhammad Azhar Renaldi
//21120122140121
//Sistem Digital Lanjutan C

module mux16to1structural (
    input [15:0] in, 
    input [3:0] sel, 
    output y
);

    wire mux4to1_out1, mux4to1_out2, mux4to1_out3, mux4to1_out4;

    // 4 MUX 4-to-1
    mux4to1gate mux1 (
        .a(in[0]), 
        .b(in[1]), 
        .c(in[2]), 
        .d(in[3]), 
        .sel(sel[1:0]), 
        .y(mux4to1_out1)
    );
    mux4to1gate mux2 (
        .a(in[4]), 
        .b(in[5]), 
        .c(in[6]), 
        .d(in[7]), 
        .sel(sel[1:0]), 
        .y(mux4to1_out2)
    );
    mux4to1gate mux3 (
        .a(in[8]), 
        .b(in[9]), 
        .c(in[10]), 
        .d(in[11]), 
        .sel(sel[1:0]), 
        .y(mux4to1_out3)
    );
    mux4to1gate mux4 (
        .a(in[12]), 
        .b(in[13]), 
        .c(in[14]), 
        .d(in[15]), 
        .sel(sel[1:0]), 
        .y(mux4to1_out4)
    );

    // Final MUX 4-to-1
    mux4to1gate mux_final (
        .a(mux4to1_out1), 
        .b(mux4to1_out2), 
        .c(mux4to1_out3), 
        .d(mux4to1_out4), 
        .sel(sel[3:2]), 
        .y(y)
    );

endmodule
