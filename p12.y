%{
#include<stdio.h>
int yyerror();
int yylex();
%}
%token NUMBER ID
%left '+' '-'
%left '*' '/'
%%
E:E'='P
 |P
P:P'+'Q
 |Q
Q:Q'-'R
 |R
R:R'*'S
 |S
S:S'/'T
 |T
T:NUMBER
 |ID
%%
void main() {
printf("Enter the expression\n");
yyparse();
printf(" Valid Expression \n");
}
int yyerror() {
printf("\nExpression is invalid");
}