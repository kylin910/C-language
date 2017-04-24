/*
在函数种实现字符串拷贝
*/
#include <stdio.h>

void copy_string1(char src[],char dst[]){
	int i;
	for(i=0;src[i]!='\0';i++){
		dst[i]=src[i];
	}
	dst[i]='\0';
}
void copy_string2(char *psrc,char *pdst){
	for(;*psrc!='\0';psrc++,pdst++){
		*pdst=*psrc;
	}
	*pdst='\0';
}
int main(){
	char a[]="Linux C Program",b[20],c[20];
	
	copy_string1(a,b);
	copy_string2(a,c);
	printf("%s\n%s\n%s\n",a,b,c);
	return 0;
}
/*
程序说明:
1)copy_string1函数接收两个数组作为参数，而copy_string2接收两个指向字符串的指针作为参数。这两种方式是完全等价的。copy_string1的两个参数从形式上看是两个数组，实际上它是:
void copy_string(char *src,char *dst)
因此在copy_string1函数中，src和dst的值是可变的，而不是像一般的数组那样只是指向一个固定的位置。以下对copy_string1函数的实现也是可行的:
void copy_string1(char src[],char dst[]){
	for(;*src!='\0';src++,dst++){
		*dst=*src;
	}
	*dst='\0';
}
这个实现方法种，dst和src不断在改变它们所指向的变量。
2)我们再来看看主函数种的语句copy_string1(a,b)和copy_string2(a,c)是如何传递参数的。对于copy_string1(a,b)，把a和b的值（该值是指向数组第一个元素的指针，而这个指针就是存放数组第一个元素的内存地址）赋值给src和dst。src和dst保存的是a和b的首地址。copy_string2(a,c)也是一样，psrc和pdst也都保存着数组a和c的第一个元素的地址。
对于copy_string1(a,b):a的值为0xbfff1010(以0x开头表示该数以16进制表示)，它是a[0]即字符L内存地址，src的值是a的值即0xbfff1010。因此通过src可以很方便地对数组a进行操作。copy_string1(a,b)中的实参b和形参dst也是如此。
注意:数组，如char a[20],a是指向数组第一个元素的指针，它的值不可以被改变，它在程序运行过程中始终指向数组的第一个元素。而在函数定义种，如void copy_string1(char src[],char dst[])，src也是一个指针，但它的值是可以改变的，也就是说，它可以指向其他字符变量。
字符数组由若干元素组成，每个元素存放一个字符。而字符串指针存放的是地址（字符串的首地址），而不是将字符串存放到字符串指针中。
3)
*/
