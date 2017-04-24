/*
×程序名:sizeof_test.c
*功能：演示sizeof()函数的用法，sizeof()函数用来确定各种数据类型所占内存的字节数
*通常short或short int变量占用2个字节,即16位，int或long int占用4个字节,即32位
*short或short int，int 或long int型变量默认情况下都是带符号的，如果想使用不带符号的整型变量，则可以在short或short int，int或long int前面加上unsigned标识符。
*如果想使用带符号的整型变量，则可以加signed标识符，但可以省略不加。
*/
#include <stdio.h>

int main(){
	short int i;
	int j;
	long int k;
	int a,b,c;
	
	a=sizeof(i);
	b=sizeof(j);
	c=sizeof(k);

	printf("a is %d\n",a);
	printf("b is %d\n",b);
	printf("c is %d\n",c);
}
