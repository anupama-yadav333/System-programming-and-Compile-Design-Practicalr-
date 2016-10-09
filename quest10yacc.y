%{
#include<stdio.h>
#include<stdlib.h>
%}
%token INTEGER
%%
line:expr'\n' { printf("yacc line($1) : %d\n",$1); }
expr:expr'+'mulex { $$=$1 + $3; }|expr'-'mulex { $$=$1 - $3;  }|mulex { $$=$1; } ;
mulex:mulex'*'term { $$=$1 * $3;  }|mulex'/'term { $$=$1 / $3; }|term { $$=$1;} ;
term:'('expr')' { $$=$1;}|INTEGER ;
%%
int main()
{
yyparse();
return 0;
}
