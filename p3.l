/*
Design a LEX Code to identify and print integer and float
value in given input pattern.
*/

%{
#include<stdio.h>
%}
%%
[0-9]+[.][0-9]+ {ECHO; printf(" is Float\n");}  
[0-9]+ {ECHO; printf(" is Integer\n");}			
%%

int yywrap()		
{return 1;}

int main(void)
{
yylex();
return 0;
}