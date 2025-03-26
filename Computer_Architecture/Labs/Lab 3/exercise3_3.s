addi x1, x0, 46 # char a1_c1 = '.'; ASCII 46
addi x2, x0, 15 # int a1_n3 = 15;
addi x3, x0, 9 # int a1_n4 = 9;
sub x4, x2, x3 # int a1_n5 = a1_n3 - a1_n4;
addi x5, x3, -3 # int a1_n6 = a1_n4 - 3;

addi x10, x0, 1 # function code for print_int
add x11, x0, x4 # passes a1_n5 as argument for print_int
ecall # prints a1_n5 as the integer 6
addi x11, x0, 0 # clear x11

addi x10, x0, 11 # function code for print_char
add x11, x0, x1 # passes a1_c1 as argument for print_char
ecall # prints a1_c1 as the ASCII character "."
addi x11, x0, 0 # clear x11

addi x10, x0, 1 # function code for print_int
add x11, x0, x5 # passes a1_n6 as argument for print_int
ecall # prints a1_n6 as the integer 6
addi x11, x0, 0 # clear x11