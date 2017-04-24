/*
函数指针做形参:
我们知道函数的参数可以是指针，那么当然也可以是一个指向函数的指针。以下就是一个含有函数指针参数的函数。
int get_max(int i,int j,int k,int (*p)(int,int));
该函数接收4个参数,第4个参数为一个指向函数的指针。在函数内可以通过该指针调用其它函数。在第8章介绍信号处理时会使用这种技术。以下例子演示了函数指针做形参的用法。
*/
#include <stdio.h>
int get_big(int i,int j){
	return i>j?i:j;
}
int get_max(int i,int j,int k,int (*p)(int,int)){
	int ret;
	ret=p(i,j);
	ret=p(ret,k);

	return ret;
}
int main(){
	int i=5,j=10,k=15,ret;
	ret=get_max(i,j,k,get_big);
	printf("The MAX is %d\n",ret);
	return 0;
}
/*
程序说明：
函数get_big用来获得两个数种的较大者。get_max函数用来获取3个数中的最大者，它的第4个形参为一个指向函数的指针。主函数main中以函数名get_big来作为参数，调用了get_max。
*/
