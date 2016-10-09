%{
#include<stdio.h>
#include<strings.h>
int count=0;
char longest[50];
%}

%%
[A-Za-z0-9]+ { if (yyleng > count) {
		count=yyleng;
		strcpy(longest,yytext);
		}
	}

%%
int main()
{
yyin=fopen("q1.txt","r");
yylex();
printf("longest word : %s\n",longest);

return 0;
}
