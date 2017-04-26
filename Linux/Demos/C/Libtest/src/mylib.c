#include "mylib.h"
#include <stdio.h>
void welcome(){
	printf("welcome to libmylib\n");
}
void outstring(const char * str){
	if(str!=NULL){
		printf("%s",str);
	}
}
