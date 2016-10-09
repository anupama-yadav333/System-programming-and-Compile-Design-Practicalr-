%{
#include<stdio.h>
#include<stdlib.h>
#include<strings.h>
%}
%token alpha beta newline
%%
line : term newline {printf("Output is Valid\n"); exit(0);};
term: alpha term beta | ;
%%

int yyerror(char *msg)
{
printf("Invalid Output\n");
exit(0);
}

int main ()
{
printf("Enter the expresssion: ");
yyparse();
}
