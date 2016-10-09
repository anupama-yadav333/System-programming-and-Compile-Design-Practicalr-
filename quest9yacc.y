%{
#include<stdio.h>
#include<stdlib.h>
%}
%token letter digit newline
%%
line : variable newline { printf("Valid Identifiers\n"); exit(0);};
variable : letter term {printf("variable letter\n");};
term: letter term {printf("letter term\n");}| digit {printf("digit\n");};
%%

int yyerror(char *msg)
{
printf("Invalid Expression\n");
exit(0);
}

int main ()
{
printf("Enter the variable name: ");
yyparse();
}
