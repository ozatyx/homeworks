#include <stdio.h>

int main (void)
{
int num = 20;
int *p;
p = &num;

for (int i = 1; i <= 5; i++) {
*p+=i;
}

printf("num = %d\n", num);
return 0;
}