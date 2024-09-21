//Muhammad Azhar Renaldi
//21120122140121
//Sistem Digital Lanjutan C

module mux2to1gate (
    input a, 
    input b, 
    input sel, 
    output y
);
    wire sel_not, a_and, b_and;

    // Membalik sinyal selektor
    not (sel_not, sel);

    // Memilih input 'a' jika selektor = 0
    and (a_and, a, sel_not);

    // Memilih input 'b' jika selektor = 1
    and (b_and, b, sel);

    // Output berdasarkan nilai selektor
    or (y, a_and, b_and);

endmodule
