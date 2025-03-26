li x5, 0x10000100 # li: load instant value. x5 stores the beginning address of the array

addi a0, x0, 2
sw a0, 0(x5) # store 2 into memory 0x10000100; arr[0]
addi a1, x0, 15
sw a1, 4(x5) # store 15 into memory 0x10000104; arr[1]
addi a2, x0, 0
sw a2, 8(x5) # store 0 into memory 0x10000108; arr[2]
addi a3, x0, 0
sw a3, 12(x5) # store 0 into memory 0x1000010C; arr[3]

add a2, a0, a1 # add the entries; a2 = a0 + a1;

srl a3, a2, a0 # logical right shift; a3 = a2 >> a0;


sw a2, 8(x5) # store the result of the addition
sw a3, 12(x5) # store the result of the right shift
