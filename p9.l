/*. Design a DFA in LEX Code which accepts string containing even
    number of 'a' and even number of 'b' over input alphabet{a,b}.
*/

%{
%}
%s A B C DEAD
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN B;
<INITIAL>[^ba\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Accepted\n");}

<A>a BEGIN INITIAL;
<A>b BEGIN C;
<A>[^ba\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>a BEGIN C;
<B>b BEGIN INITIAL;
<B>[^ba\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}  

<C>a BEGIN B;
<C>b BEGIN A;
<C>[^ba\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; {printf("Not Accepted\n");}  

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}  

%%
int yywrap()
{
return 1;
}

int main()
{
   printf("Enter String\n");
   yylex();
   return 0;
}