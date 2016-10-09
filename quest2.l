%{

%}
%%
[A-Wa-w] {printf("%c",yytext[0]+3);}
[X-Zx-z] {printf("%c",yytext[0]-23);}
%%
int main()
{

yylex();

}
