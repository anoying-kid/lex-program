%{
    #include<stdio.h>
%}

%%
\n printf("\nEnter the input:\n");
int | char | double | float | printf | scanf | if | else | while | for | do | switch | case | return {printf("%s is a keyword", yytext);}
[0-9]+ {printf("%s is a number", yytext);}
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("%s is a identifier", yytext);}
[=*(){&%^}] {printf("%s is Operator", yytext);}
. ;
%%

int main() {
    printf("\nEnter the input:\n");
    yylex();
    return 0;
}