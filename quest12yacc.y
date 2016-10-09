%{
#include<stdio.h>
#include<stdlib.h>
#include<strings.h>
%}
%token alpha beta newline
%%
line : variable newline {printf("Output is Valid\n"); exit(0);};
variable : alpha term {printf("variable alpha\n");};
term: alpha term {printf("alpha term\n");}| beta {printf("beta\n");};
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
