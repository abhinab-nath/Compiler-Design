/* Lex program to count number of lines, words, spaces, characters in a given statement */

%{
#include <stdio.h>
int lines=0, words=0, chars=0, space=0;
%}

%%
[\n]         {lines++; chars++;}
[ \t]        {space++; chars++;}
[a-zA-Z0-9]+ {words++; chars+=yyleng;}
.            {chars++;}
%%

int main(){
    printf("Enter the input statement:\n");
    yylex();

    printf("\n Number of Lines: %d",lines);
    printf("\n Number of words: %d",words);
    printf("\n Number of spaces: %d",space);
    printf("\n Number of characters: %d",chars);
    
    return 0;
}

int yywrap(){
    return 1;
}