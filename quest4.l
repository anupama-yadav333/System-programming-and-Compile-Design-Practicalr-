%{

%}
%%
[0-9]* {printf("Integer\n");}
[0-9]+\.[0-9]+ {printf("Float\n"); }
int|float|if|else|printf|main|exit|switch {printf("Keyword\n");}
[+|*|/|%|&] {printf("Operators\n");}
"-" {printf("Operators\n");}
"/*".*"*/" {printf("comment\n");}
[_a-zA-Z][_a-zA-Z0-9]{0,30} {printf("Identifier\n");} 
. {printf("Invalid\n");}
%%
int main()
{

yylex();

}
