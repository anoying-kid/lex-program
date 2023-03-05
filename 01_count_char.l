/* DESCRIPTION/DEFINITION SECTION */
%{
#include<stdio.h>
int lc=0,sc=0,tc=0,ch=0,wc=0;	 // GLOBAL VARIABLES
%}

/* RULE SECTION */
%%
[\n] { lc++; ch+=yyleng;}
[ \t] { sc++; ch+=yyleng;}
[^\t] { tc++; ch+=yyleng;}
[^\t\n ]+ { wc++; ch+=yyleng;}
%%

// MAIN FUNCTION
int main(){
    yyin=fopen("01_file.txt", "r");
    // if you want user to input
    // printf("Enter the input: ")
	yylex();
	printf("Number of lines : %d\n",lc);
	printf("Number of spaces : %d\n",sc);
	printf("Number of tabs, words, charc : %d , %d , %d\n",tc,wc,ch);
	
	return 0;
}

int yywrap(){ return 1; }