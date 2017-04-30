#include <stdio.h>

#define MAX(x,y) (x>y?x:y)
#define RESULT(x,y) (x)*(y);

int main(){
	int x,y,max,result;

	printf("Please input tow digitals:\n");
	scanf("%d%d",&x,&y);
	max=MAX(x,y);
	printf("The max value is: %d\n",max);
	result=RESULT(x+1,y+1);
	printf("The result is: %d\n",result);
	return 0;
}
