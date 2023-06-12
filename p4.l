/*
Design a LEX Code for Tokenizing (Identify and print OPERATORS
SEPARATORS,KEYWORDS,IDENTIFIERS)

*/

%{
#include<stdio.h>
%}

%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short     {ECHO; printf(" is a KEYWORD, ");} 						
[{};,()]   {ECHO; printf(" is a SEPERATOR, ");}						
[+-/=*%]   {ECHO; printf(" is a OPERATOR, ");}						
([a-zA-Z][0-9])+|[a-zA-Z]* {ECHO; printf(" is a Identifier, ");}    
.|\n ; 															
%%

int yywrap()								
{
return 1;
}

int main(void)
{
printf("Enter\n");
yylex();
return 0;
}