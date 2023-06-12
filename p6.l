/*
Design a LEX Code to replace white-spaces of 'Input.txt' file by asingle
blank character into Output.txt file.
*/

%{
#include<stdio.h>
%}

%%

[\t" "]+ fprintf(yyout," ");		
.|\n fprintf(yyout,"%s",yytext);	
%%

int yywrap()
{
return 1;
}

int main(void)
{
yyin=fopen("input.txt","r");		
yyout=fopen("output.txt","w");
yylex();
return 0;
}