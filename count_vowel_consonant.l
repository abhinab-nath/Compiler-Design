/*Lex program to count number of vowels and consonants from the given input string*/

%{
#include<stdio.h>
int v=0, c=0;
%}

%%
[ \t\n]+ ;
[aeiouAEIOU] {v++;}
[^aeiouAEIOU] {c++;}
%%

int main(){
    printf("Enter the input string: ");
    yylex();
    printf("Number of vowels are: %d \n",v);
    printf("Number of consonants are: %d \n",c);
    return 0;
}

int yywrap(){
    return 1;
}


/*------
press(ctrl+z) to get result, because 
yylex() keeps reading input until it receives an EOF (End Of File). 
Pressing Enter only creates a new line; it doesn't finish the input. */