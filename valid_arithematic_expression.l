%{
#include <stdio.h>
int valid = 1;
%}

%%
[0-9]+|[a-zA-Z][a-zA-Z0-9]* ;
[+\-*/()] ;
[ \t\n] ;
. {valid = 0;}
%%

int main(){
    printf("Enter an arithemetic expression:\n");
    yylex();

    if(valid){
        printf("Valid Expression\n");
    }else{
        printf("Invalid Expression\n");
    }
    return 0;
}

int yywrap(){
    return 1;
}