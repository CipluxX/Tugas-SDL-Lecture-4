//Muhammad Azhar Renaldi
//21120122140121
//Sistem Digital Lanjutan C

module mux4to1gate (
    input a, 
    input b, 
    input c, 
    input d, 
    input [1:0] sel, 
    output y
);
    wire mux1_out, mux2_out;

    // MUX 2-to-1 pertama memilih antara a dan b
    mux2to1gate mux1 (
        .a(a), 
        .b(b), 
        .sel(sel[0]), 
        .y(mux1_out)
    );

    // MUX 2-to-1 kedua memilih antara c dan d
    mux2to1gate mux2 (
        .a(c), 
        .b(d), 
        .sel(sel[0]), 
        .y(mux2_out)
    );

    // MUX 2-to-1 ketiga memilih output dari mux1_out dan mux2_out
    mux2to1gate mux3 (
        .a(mux1_out), 
        .b(mux2_out), 
        .sel(sel[1]), 
        .y(y)
    );

endmodule
