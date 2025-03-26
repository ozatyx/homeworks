# directives_new.s
.data
    arr: .word 11, 22, 33, 44, 55, 66
.text
    main:
        la x5, arr # load base address of arr into x5
        addi x6, x0, 6 # load number of elements in arr into x6
        addi x4, x0, 4 # sizeof(word) = 4 bytes
        addi x7, x0, 0 # stores sum of elements in arr

        addi x8, x0, 0 # int i = 0;
        loop: # for(int i = 0; i < 6; i++)
            bge x8, x6, end # i>=6;

            mul x9, x8, x4 # calculate offset
            add x13, x5, x9 # set address arr[i] into x13
            lw x12, 0(x13) # load address arr[i] into x12
            add x7, x7, x12 # sum += arr[i]

            addi x8, x8, 1 # i++;
            j loop
        end:

        addi x10, x0, 1 # function code for print_int
        add x11, x0, x7 # passes sum in x7 as argument for print_int
        ecall # prints sum
