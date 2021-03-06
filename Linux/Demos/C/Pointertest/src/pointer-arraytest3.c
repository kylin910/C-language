#include <stdio.h>
int main(){
	int a[2][5]={1,3,5,7,9,2,4,6,8,10};
	int (*p)[5],i;
	p=a;
	for(i=0;i<5;i++){
		printf("%d",(*p)[i]);
	}
	printf("\n");
	p++;
	for(i=0;i<5;i++){
		printf("%d",(*p)[i]);
	}
	printf("\n");
	return 0;
}
/*
程序说明：
1)int (*p)[5]，表示p是一个指针，它指向含有5个元素的一维数组。p也只能指向一个包含5个元素的一维数组，p就是该一维数组的首地址。这里*p两边的括号是不可少的，因为[]的优先级比*高。
2)p=a,使得p指向二维数组a的第一行。而后通过(*p)[i]访问该行的每一个元素。
3)p++，使p指向二维数组a的第二行。
注意：区别int (*p)[5]和int *p[5]，前者是一个指针，它指向一个含有5个元素的数组，后者是一个数组，它的长度为5,数组种每一个元素指向一个整型变量。
*/
