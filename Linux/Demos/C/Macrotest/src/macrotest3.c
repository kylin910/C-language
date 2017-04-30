#include <stdio.h>
#define PI 3.1415926

double radius;

extern double circumference();
extern double area();

int main(){
        printf("Please input the radius of a circle:\n");
        scanf("%lf",&radius);
	printf("\n");
	printf("[PI]=%lf  [radius]=%lf\n",PI,radius);
        printf("The area of the circle is: %lf\n",area());
        printf("The circumference of the circle is: %lf\n",circumference());
        return 0;
}

double circumference(){
	return 2*PI*radius;
}

double area(){
	return PI*radius*radius;
}

/*
use undef to terminate the macro PI
#undef PI
*/


