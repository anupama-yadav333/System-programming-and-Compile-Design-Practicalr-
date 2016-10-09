%{
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"
%}
%%
[\t]+ ;
[0-9]+ { yylval=atoi(yytext); printf("lex(integer) : %d\n",INTEGER); return INTEGER; }
[-+*/] { printf("lex(+-*/) : %s\n",yytext); return *yytext; }
"(" { printf("lex( : %s\n",yytext); return *yytext; }
")" { printf("lex) : %s\n",yytext); return *yytext; }
\n { printf("lex(newline) : %s\n",yytext); return *yytext; }
%%

