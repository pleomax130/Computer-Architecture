#include <stdio.h>
#include <stdlib.h>

int main (){
    unsigned long long l1,l2;
    int value;
    const int size = 100000000;
	int *tab = calloc(size, sizeof(int));
	
	int resultSize = 10000;
	int *firstTime = calloc(resultSize, sizeof(int));
	int *secondTime = calloc(resultSize, sizeof(int));
	int counter = 0;
	int i;
	for(i = 0; i < resultSize ; i++){
		l1 = func();
		value = tab[i];
		l2 = func();
		if((l2-l1) < 1000){
			counter++;}
		firstTime[i] = l2-l1;
		
	}
	
	for(i = 0; i < resultSize; i++){
		printf("1: %d \n", firstTime[i]);
	}
	printf("linie: %d", resultSize-counter);
	free(tab);
	free(firstTime);
	free(secondTime);

	return value;
}
