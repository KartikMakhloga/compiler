/*
Design a LEX Code to remove the comments from a C Programgiven
at run-time and store into 'out.c' file.
*/

%{
#include<stdio.h>
%}
%%
"//".* {}
"/*"[^*/]*"*/" {}
%%
int yywrap(){
return 1;}
int main(int k,char **argcv){
yyin=fopen(argcv[1],"r");
yyout=fopen("output.c","w");
yylex();
}