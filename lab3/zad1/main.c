#include <stdio.h>
#include <stdlib.h>
#include <time.h>



int main (){
	unsigned long long l1,l2;
	struct timespec t, t1;
	int i = 0,n=20,c=0;
	clock_gettime(CLOCK_MONOTONIC, &t);
	l1 = func('0');
	for(i =0; i<=n; i++){
		printf("%d", f(c));
		c++;
	}
	l2 = func('1');
	clock_gettime(CLOCK_MONOTONIC, &t1);
	printf ("\nrekurencja:%llu", l2-l1);
	printf ("\nuptime:%llu\n", (unsigned long long)t1.tv_nsec- (unsigned long long)t.tv_nsec);
	
	int first = 0, second =1, next;
	l1 = func('0');
	for(i =0; i<=n; i++){
		if(i<=1)
			next = i;
		else{
			next = first + second;
			first = second;
			second = next;
		}
		printf("%d", next);
	}
	l2 = func('1');
	printf ("\npetla:%llu\n", l2-l1);
	exit(0);
}

int f(int n) 
{
  if (n == 0 || n == 1)
    return n;
  else
    return (f(n-1) + f(n-2));
}

