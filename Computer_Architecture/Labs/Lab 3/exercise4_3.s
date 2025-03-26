#ex4_in_riscv.s
.data
#[here your code]Initialize variable output_string: "c is equal to "
    output_string: .asciiz "c is equal to "
.text
    main:
        addi x14, x0, 12 #Initialize variable a
        addi x15, x0, 4 #Initialize variable b
        addi x16, x0, 0 #Initialize variable c
        jal x1, ex_4 #Jump to ex_4, and return back to this position after ex_4() is finished

        add x16, x13, x0 #Load the returned value from Ex_4 in x16; c = ex_4(a,b)

        #[here your code]Print output_string
        addi x10, x0, 4 #function code for print_string
        la x11, output_string #set argument for print_string as output_string
        ecall

        addi x11, x16, 0 #Store value of x15 in x11 for print in ecall
        addi x10, x0, 1 #Store 1 in x10 for printing integers using ecall
        ecall
        j exit

    ex_4:
    #[here your code]Initialize res and i
        addi x5, x0, 100 #Initialize res
        addi x6, x0, 0 #Initialize i

    while:
    #[here your code]Calculate res += a and i = i + 1
        sub x5, x5, x14 #res -= a
        addi x6, x6, 1 #i = i + 1
        
    #[here your code]If i < b, jump to while
        blt x6, x15, while

    #[here your code]Place value of res in x13 for return
        add x13, x5, x0

        jalr x0, 0(x1) #Return back to caller

    exit: