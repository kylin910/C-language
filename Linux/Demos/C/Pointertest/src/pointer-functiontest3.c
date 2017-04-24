/*
指向函数的指针
指向函数的指针是一个指针变量，这个指针比较特殊，它指向一个函数。一个函数的函数名是一个指针，它指向函数的代码。函数的调用可以通过函数名来调用也可以通过指向函数的指针来调用。
指向函数的指针其定义的一般形式为：
类型名 (*指针变量名)();
例如:
int (*p)(int i,int j);
p是一个指针，它指向的一个函数，这个函数有两个整型参数，返回类型为int。我们注意到p首先和*结合，表明p是一个指针。然后再与()结合，表明它指向的是一个函数。指向函数的指针也称为函数指针，下面的例子实现了指向函数的指针的功能。
*/
#include <stdio.h>
#define	GET_MAX 0
#define GET_MIN 1

int get_max(int i,int j){
	return i>j?i:j;
}
int get_min(int i,int j){
	return i>j?j:i;
}
int compare(int i,int j,int flag){
	int ret;
	int (*p)(int,int);
	if(flag==GET_MAX){
		p=get_max;
	}else{
		p=get_min;
	}
	ret=p(i,j);
	return ret;
}
int main(){
	int i=5,j=10,ret;
	ret=compare(i,j,GET_MAX);
	printf("The MAX is %d\n",ret);
	return 0;
}
/*
程序说明：
1)程序首先使用预编译命令define定义了两个常量，然后定义了两个函数，分别用来获取两个数的较大者和较小者。
2)在compare函数中，定义了一个指向函数的指针p。根据flag的值来给该指针赋值。如果flag的值为GET_MAX即0,就把函数名get_max赋给p，否则把get_min赋给p。注意语句p=get_max，只是把函数名赋给p。以下赋值方法是错误的：
p=get_max(int,int);
之后通过p来调用相应的函数，获取较大值或较小值。主函数main调用了compare函数。
3)不能对指向函数的指针做任何运算，如p++、p--、p+n、p-n都是错误的。
4)指向函数的指针能通过同类型的函数(即参数相同、返回类型相同)名、函数指针或NULL来进行初始化或赋值。将函数指针初始化或赋值为NULL，标识该指针目前不指向任何函数。
注意：区别：前者是返回指针的函数，它是一个函数的声明，后者是指向函数的指针，它定义了一个指针。
int *f(int i,int j);
int (*p)(int i,int j);

*/
