#include <stdio.h>

int main(){
	int a=0;
	int *b;
	b=&a;
	int c=*b;
	printf("The value is: %d\n",c);
	printf("The address is: %x",b);
	printf("\n");


	int d=100,e=200;
	int *f=&d,*g=&e;
	printf("%d,%d\n",d,e);
	printf("%d,%d\n",*f,*g);
	printf("%x,%x\n",&d,&e);
	printf("%x,%x\n",f,g);
	
	*f=*f*3;
	printf("%d\n",d);
	printf("%d\n\n",*f);
	f=&e;
	printf("%x\n",f);
	printf("%x\n",g);
	
	return 0;
}
