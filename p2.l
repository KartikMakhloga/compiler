/*
Design a LEX code to identify and print valid identifier of
C/C++ in a given input pattern.
*/

%{
#include<stdio.h>
%}
%%
^[a-zA-Z_][a-zA-Z0-9_]* printf("valid Identifier\n");
^[^a-zA-Z_] printf("invalid Identifier\n");
.;
%%
int yywrap(){
return 1;
}
int main() {
printf("Enter string::");
yylex();
return 0;
}
