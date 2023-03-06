%{
    #include<stdio.h>
%}
%%
[\t" "]+ {fprintf(yyout," ");}
.|\n fprintf(yyout,"%s",yytext);
%%
int main(){
    yyin = fopen("04_input.txt", "r");
    yyout = fopen("04_output.txt", "w");
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}