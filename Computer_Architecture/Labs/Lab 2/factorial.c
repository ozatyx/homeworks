#include <stdio.h>

int factorial(int x) {
    int result = 1;
    
    for(x; x >= 1; x--){
        result = x*result;
    }
    return result;
}


int main(void) {
    int x = 4;
    
    x = factorial(x);
    printf("The value of x is: %d\n", x);
return 0;
}

