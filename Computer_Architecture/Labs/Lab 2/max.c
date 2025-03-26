#include <stdio.h>

int max(int a[]) {
    int result;
    result = a[0];
    
    for(int i = 1; i <= 6; i++){
        if(a[i] > result){
            result = a[i];
        }
    }
    
    return result;
}


int main(void) {
    int arr[] = {12, -240, 48, 60, 150, -5, 70};
    int maximum = max(arr);
    
    printf("The max of arr is: %d\n", maximum);
return 0;
}

