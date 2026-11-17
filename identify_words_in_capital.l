/*Lex program to identify the capital words from the given input string.*/

%{
#include <stdio.h>
%}

%%
[A-Z]+ {
    printf("Capital Word: %s \n",yytext);
}
[ \t\n]+ ;
.        ;
%%

int main(){
    printf("Enter a String: \n",yytext);
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}