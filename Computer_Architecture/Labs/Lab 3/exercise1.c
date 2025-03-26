#include <stdio.h>
#include <stdlib.h> 

int main() {
    int *arr = (int *)malloc(6 * sizeof(int));
    int k = 6;

    arr[0] = 11;
    arr[1] = 22;
    arr[2] = 33;
    arr[3] = 44;
    arr[4] = 55;
    arr[5] = 66;

    for(int i = 0; i < k; i++){
        printf("%d ", arr[i]);
    }
    printf("\n");

    arr = (int *)realloc(arr, 4 * sizeof(int));
    k = 4;

    arr[0] = 10;
    arr[1] = 20;
    arr[2] = 30;
    arr[3] = 40;

    for(int i = 0; i < k; i++){
        printf("%d ", arr[i]);
    }

    free(arr);
    return 0;
}