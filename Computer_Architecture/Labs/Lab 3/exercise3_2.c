// Ecall example in c (ex3_2.c)
#include <stdio.h>
int main() {
char a1_c1 = '.'; // The ASCII code for ‘.’ is 46
int a1_n3 = 15;
int a1_n4 = 9;
int a1_n5 = a1_n3 - a1_n4;
int a1_n6 = a1_n4 - 3;
printf("%d%c%d\n", a1_n5, a1_c1, a1_n6);
return 0; //no need to convert this line into RISC-V
}