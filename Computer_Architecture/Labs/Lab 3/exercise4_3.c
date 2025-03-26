//ex4_in_c.c
#include <stdio.h>
int ex_4(int a, int b) {
int res = 100, i = 0;
do{
res -= a;
i++;
}while(i < b);
return res;
}
int main() {
int a = 12, b = 4, c = 0;
c = ex_4(a, b);
printf("c is equal to ");
printf("%d", c);
return 0;
}