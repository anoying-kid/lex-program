%{
    #include<stdio.h>
%}
word [a-zA-Z0-9]*
letter [a-zA-Z]+{word}
notvalid [0-9]+[a-zA-Z]+{word}

%%
{letter} {printf("%s Valid Identifier", yytext);}
{notvalid} {printf("%s Invalid Identifier", yytext);}
%%

int main(){
    yylex();
    return 0;
}