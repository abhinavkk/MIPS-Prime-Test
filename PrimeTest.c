/* GroupID-36 (14116013_14119003) - Amit Manchanda & Abhinav Kaushal Keshari
 Date: November 04, 2015
 Addition.asm - Primality test */

#include <stdio.h>

int main(void) {
	int num,f=0;
	printf("Enter a number: ");
	scanf("%d",&num);
	for(int i=2; i<((num/2)+1); i++)
	{
		if(num%i==0)
		{
			f=1; break;
		}
	}
	if(f==0)
		printf("Congratulations! The number is prime.\n");
	else
		printf("We are sorry to announce that the number is not prime.\n");
	return 0;
}
