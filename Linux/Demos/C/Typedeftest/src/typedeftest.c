/*
使用typedef
软件开发中，除了可以使用C语言提供的标准类型名（如int、char、float、double、long）和声明的结构体、共用体、指针外，还可以用typedef声明新类型名来替代已有的类型名。例如：
typedef int INT;
声明之后，INT和int就是等价的，可以用如下方式之一定义整型变量：
int i,j,k;
INT i,j,k;
它们是完全等价的。
可以在声明结构体类型时使用typedef:
typedef struct{
	int year;
	int month;
	int day;
}DATE;
声明新的结构体类型为DATE，之后可以使用DATE来定义变量：
DATE birthday:
还可以：
typedef int NUMBER[10];
NUMBER声明为含有10个元素的数组类型。
NUMBER n;
n[0]=1;
n为含有10个元素的数组。
typedef只是为某种类型声明一个别名，和声明数据类型一样（如声明结构体类型），使用typedef并不是定义变量，也不会分配存储空间。在实际项目开发中往往使用typedef为某种已存在的数据类型声明一个别名，使用该别名定义的变量往往有特殊用途，这样可以增加程序的可读性和可维护性。
*/
