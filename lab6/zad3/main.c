#include <stdio.h>
#include <stdlib.h>

extern unsigned long long int func();

const int MATRIX_SIZE = 1000;

int main(){
	unsigned long long int counter = 0;
	int i,j,it, value;

	int **matrix = calloc(MATRIX_SIZE*MATRIX_SIZE,sizeof(int*));

	int iterations = 5;
	printf("Wiersze: \n");
	for(it=0; it<iterations; it++){
		counter = func();
		for(i = 0; i < MATRIX_SIZE ; i++){
			for(j = 0; j < MATRIX_SIZE ; j++){
				value = matrix[i*MATRIX_SIZE+j];
			}
		}
		counter = func() - counter;
		printf("Wynik: %llu \n",counter);
	}
	printf("Kolumny:  \n");
	for(it=0; it<iterations; it++){
		counter = func();
		for(i = 0; i < MATRIX_SIZE ; i++){
			for(j = 0; j < MATRIX_SIZE ; j++){
				value = matrix[j*MATRIX_SIZE+i];
			}
		}
		counter = func() - counter;
		printf("Wynik: %llu \n",counter);
	}
	free(matrix);
	return value;
}
