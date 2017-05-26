#include <stdio.h>
extern int isDigit(char ch);
extern int isCapital(char ch);
extern int isLowercase(char ch);
extern int toNumber(char ch,int flag);
int main(){
	char ch0='0';
	char ch9='9';
	char chtest1='A';
	char chtest2='7';
	char chA='A';
	char cha='a';
	printf("%d %d",chA,cha);
	if(isDigit(chtest2)){
		printf("%c is a digit",chtest2);
		printf("revert %c to number %d:",chtest2,toNumber(chtest2,1));
	}else{
		printf("%c is not a digit",chtest1);
	}
}
int isDigit(char ch){
	char ch0='0';
	char ch9='9';
	if(ch>=ch0&&ch<=ch9){
		return 1;
	}else{
		return 0;
	}
}
int isCapital(char ch){
	char chA='A';
	char chZ='Z';
	if(ch>=chA&&ch<=chZ){
		return 1;
	}else{
		return 0;
	}
}
int isLowercase(char ch){
	char cha='a';
	char chz='z';
	if(ch>=cha&&ch<=chz){
		return 1;
	}else{
		return 0;
	}
}
int toNumber(char ch,int flag){
	int num=0;
	if(flag){
		num=ch-48;
	}else{
		printf("error:please identify the char is a digit.\n");
	}
	return num;
}
