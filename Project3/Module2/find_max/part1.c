#include <stdio.h>
#include <stdint.h>

#define ARRAY_SIZE 7

int main(void){
    
	int32_t integerArray[ARRAY_SIZE] = {3, -5, 10, 20, -12, 25, 17};
	
	int32_t max = integerArray[0];
	size_t i;
    for (i = 1; i < ARRAY_SIZE; ++i) {
        if (integerArray[i] > max) {
            max = integerArray[i];
        }
    }
	
	printf("Largest number in a list of at least 7 32-bit integers that is stored in the memory: %d\n", max);
    
    return 0;
}






