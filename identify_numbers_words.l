%{
#include <stdio.h>
%}

%%
[0-9]+       printf("Number: %s\n", yytext);
[a-zA-Z]+    printf("Word: %s\n", yytext);
[ \t\n]+     ;
.            printf("Special Character: %s\n", yytext);
%%

int main()
{
    yylex();
    return 0;
}