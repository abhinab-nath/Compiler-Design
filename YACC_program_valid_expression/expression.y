%{
#include <stdio.h>
int yylex();
int yyerror(char *s);
%}

%token NUMBER ID INVALID

%%
expr : expr '+' expr
     | expr '-' expr
     | expr '*' expr
     | expr '/' expr
     | '(' expr ')'
     | NUMBER
     | ID
     ;
%%

int main()
{
    printf("Enter an arithmetic expression:\n");

    if(yyparse() == 0)
        printf("Valid Expression\n");

    return 0;
}

int yyerror(char *s)
{
    printf("Invalid Expression\n");
    return 0;
}