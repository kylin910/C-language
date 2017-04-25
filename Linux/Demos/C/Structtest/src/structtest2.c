/*
结构体和指针
我们已经知道结构体中各个成员按顺序连续存放在内存中。一个结构体指针指向结构体变量，结构体指针所保存的值是它所指向的结构体变量所占内存的首地址。
以上面的student结构体为例：
struct student s1;
struct student *p;
s1.number=10002;
s1.sex='m';
s1.age=22;
strcpy(s1.name,"Liu");
strcpy(s1.addr,"Guang Dong");
p=&s1;
printf("%d,%s,%c,%d,%s\n",p->number,p->name,p->sex,p->age,p->addr);
这段代码的输出与例5-3的输出是一样的。
在C语言种，为了方便使用和直观，把(*p).number改为p->number。前面一种在语法上也是正确的，但一般不使用。
对于指针，访问它所指向的结构体的成员一般形式为：
指针->结构体成员
下面表达式的含义如下所示：
p->number++:得到p所指向的结构体变量中成员number的值，使用该值后再加1。
++p->number:得到p所指向的结构体变量中成员number的值，先加1,再使用。
例5-4 指向结构体数组的指针
*/
#include <stdio.h>
struct student{
	int number;
	char name[20];
	char sex;
	int age;
	char addr[30];
};
void print_struct(struct student *p){
	p->age ++;
	printf("%d,%s,%c,%d,%s\n",p->number,p->name,p->sex,p->age,p->addr);
}
int main(){
	struct student s[3]={
	{10000,"Zhang",'m',21,"Shang Hai"},
	{10001,"Li",'f',20,"Bei Jing"},
	{10002,"Liu",'m',22,"Guang Dong"}
	};
	printf("%d,%d,%d\n",s[0].age,s[1].age,s[2].age);
	struct student *p;
	for(p=s;p<s+3;p++){
		print_struct(p);
	}
	printf("%d,%d,%d\n",s[0].age,s[1].age,s[2].age);
	return 0;
}
/*
程序说明。
print_struct函数以结构体指针为参数。在函数中对age成员执行了加1操作。由于使用了指针作为参数，因此在函数内部对age值作的改变，使得数组的实际值也改变了。这是可以从第一行输出和第五行输出的不同看出来。
*/
