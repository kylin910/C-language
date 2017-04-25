/*
到目前为止，我们介绍了基本数据类型：整型、字符型、浮点型，还介绍了一种复合数据类型：数组。但在实际开发中，只有这些数据类型往往是不够的。例如，在一个人事管理系统中，人员的信息有：姓名(字符串)、年龄(整型)、性别(字符型)、联系电话(字符串)等。如果单独定义它们，难以反映它们之间的内在联系。C语言中有一种被称为结构体的构造数据类型可以较好地完成这一任务。

5.2.1 声明和引用结构体
声明结构体的一般形式为：
struct 结构体名
{
成员列表
};
struct是声明结构体的关键词。结构体名用来标识一个结构体。成员可以是任何C语言的数据类型，如整型、字符型、浮点型、数组、指针、结构体，以及后面将要介绍的共用体、枚举类型。
例如：
struct person{
	char name[20];
	int age;
	char sex;
	char phone[15];
};
注意：声明结构体也是一个C语言语句，因此要以分号作为该语句的结束，声明结构体时漏写分号是一种常见的语法错误。
声明了一个结构体，相当于构造了一种新的数据类型。此时系统并不为它们分配内存空间，只是有定义了结构体类型的变量，系统才为该变量分配内存空间。声明了结构体后，就可以定义结构体类型的变量，定义的一般形式为：
结构体名 变量名;
例如：
struct person p1,p2;
以person为数据类型，定义了两个变量p1、p2，struct为定义结构体变量的关键词。定义了结构体变量后，系统为它分配内存。p1所占的字节为：20+4+1+15=40。
printf("%d\n",sizeof(p1));
上述语句将打印出40。
如果把char phone[15]改为char phone[16]，上面的printf语句是否会打印出41呢？实际上打印的数值为44。这是因为结构体的各个成员是按顺序连续存放在内存中的。
内存为了提高访问效率有一个规则：4字节对齐。虽然修改后的person结构体所占的字节数为41,但分配内存时系统为它分配44个字节。因此，上面的printf语句打印出的值是44而不是41。
在声明结构体类型时也可以定义变量，例如：
struct person{
	char name[20];
	int age;
	char sex;
	char phone[15];
}p1,p2;
在声明的同时定义了两个结构体变量p1、p2。
或者也可以这样定义：
struct{
	char name[20];
	int age;
	char sex;
	char phone[15];
}p1,p2;
这种方式没有声明结构体名，因此不能再定义其他变量，只有p1、p2两个变量。
结构体的成员可以是结构体、指针等类型，例如：
struct date{
	int year;
	int month;
	int day;
};
struct person{
	char name[20];
	int age;
	char sex;
	char phone[15];
	struct date birthday;
	char *string;
};
先声明了struct date结构体，它有3个成员：year、month、day，用来表示人员出生的年月日。在声明结构体person时，birthday指定为struct date类型，同时还声明了一个char型指针。

2.引用和初始化结构体变量
引用结构体变量中的成员的一般方式为。
结构体变量.成员名
例如：
struct person p1;
strcpy(p1.name,"John");
p1.age=24;
p1.sex='m';
strcpy(p1.phone,"123456789");
printf("%s",p1.name);
“.”是成员运算符，用于取得结构体中的成员，它在所有运算符中优先级最高。语句：
p1.age=24;
把24赋给结构体变量p1的age成员变量。
对于person结构体中的birthday成员的赋值方式是：
p1.birthday.year=1985;
在定义的同时也可以进行初始化，例如：
struct person p2={"Bill",22,'m',"987654321"};
结构体中的成员变量可以像其他变量一样进行各种运算，例如：
p1.age++;
这个语句中，"."的优先级比++高，因此先进行p1.age，也就是取得p1变量的age成员，然后对该成员执行++运算。
注意：只能引用结构体变量中的各个成员，而不能引用整个结构体变量，如以下语句是错误的：
printf("%s,%d,%c,%s",p1);
必须是:
printf("%s,%d,%c,%s",p1.name,p1.age,p1.sex,p1.phone);

5.2.2 结构体和数组
结构体中可以有数组类型的成员。数组的元素可以是结构体。例如，有一个用于存储学生信息的结构体：
struct student{
	int number;
	char name[20];
	char sex;
	int age;
	char addr[30];
};
struct student s[2]={{10000,"zhang","m",21,"Shang Hai"},{10001,"li","f",20,"Bei jing"}};
结构体中有两个数组成员，用于保存学生的姓名和地址。然后定义了一个结构体数组，数组长度为2,定义的同时进行了初始化。我们看到，结构体数组的初始化是数组的初始化和结构体变量的初始化的结合。数组的初始化是把各个数组元素的值放在一个大括号里，各个元素以逗号分隔。结构体的初始化是把结构体的各个成员放在一个大括号里，各个成员也以逗号分隔。
下面是结构体数组使用示例
*/
#include <stdio.h>
#include <string.h>
int main(){
	struct student{
		int number;
		char name[20];
		char sex;
		int age;
		char addr[30];
	};
	struct student s[3]={
	{10000,"Zhang",'m',21,"Shang Hai"},
	{10001,"Li",'f',20,"Bei Jing"}
	};
	s[2].number=10002;
	s[2].sex='m';
	s[2].age=22;
	strcpy(s[2].name,"Liu");
	strcpy(s[2].addr,"Guang Dong");
	for(int i=0;i<3;i++){
		printf("%d,%s,%c,%d,%s\n",s[i].number,s[i].name,s[i].sex,s[i].age,s[i].addr);
	}
	return 0;
}

