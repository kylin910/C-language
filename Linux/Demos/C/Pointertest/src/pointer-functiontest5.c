/*
返回函数指针的函数
本部分对于初学者可能比较难以理解，如果不能理解也没有关系，因为本部分所介绍的内容实际项目种用得很少，它一般只出现在知名公司招牌时的笔试面试中，实例4-16演示了返回函数指针的用法。
*/
#include <stdio.h>
int get_big(int i,int j){
	return i>j?i:j;
}
int (*get_function(int a))(int,int){
	printf("the number is %d\n",a);
	return get_big;
}
int main(){
	int i=5,j=10,max;
	int (*p)(int,int);
	p=get_function(100);
	max=p(i,j);
	printf("The MAX is %d\n",max);
	return 0;
}
/*
程序说明:
1)程序首先定义了一个函数get_big,用来获取两个数中的较大者。
2)int (*get_function(int a))(int,int)是一个返回函数指针的函数。这个可能比较难以理解。我们首先抓住get_function，因为运算符()的优先级比*高，所以get_function先于()结合。get_function(int a)是含有一个整型参数的函数。这个函数的返回值比较特殊，它的返回值是int(*)(int,int)，也就是它返回的是一个指向函数的指针。该指针所指向的函数有两个整型参数。get_function中，将get_big作为函数的返回值。get_big是一个函数名，也是函数get_big的入口地址，它是一个指针。
3)主函数中，定义了一个指向函数的指针p，p所指向的函数有两个整型参数。然后调用get_function，将返回值赋给p。函数get_funciton有一个整型形参，调用时以100作为实参。函数get_function返回一个指向函数的指针。调用get_function结束后，p就指向了get_big函数。之后通过p调用get_big函数，将调用的返回值赋给变量max。
*/
