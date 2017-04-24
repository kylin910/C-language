/*
返回指针的函数
函数可以返回整型值、字符型值、实型值，也可以返回指针，即地址。返回指针的函数的一般定义形式为：
类型名 *函数名(参数表);
例如:
int *f(int i,int j);
调用该函数后，返回一个指向整型变量的指针。()的优先级要高于*,因此f先与()结合，这表示f是一个函数。函数名前有一个*,表示此函数的返回值类型为指针，例4-13演示了返回指针的函数功能实现。
*/
#include <stdio.h>
char *name[7]={"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};
char *message="Wrong input";
char *week(int day){
	if(day<0||day>7){
		return message;
	}else{
		return name[day-1];
	}
}
int main(){
	int day;
	char *p;
	printf("Input a number of a week:\n");
	scanf("%d",&day);
	
	p=week(day);
	printf("%s\n",p);
	return 0;
}
/*
程序说明：
1)程序首先定义了一个名为name的指针数组，用于保存一周内每天的英文名。数组元素的类型为指向字符串的指针，每个数组元素都指向一个字符串。
2)函数week，接收一个整型参数，返回一个指向字符串的指针。如果参数值不再1~7之间，就返回一条错误提示信息，否则返回一个数组元素。
3)主函数中调用了week函数，将返回的指针赋给p，然后打印出p所指向的字符串。
*/
