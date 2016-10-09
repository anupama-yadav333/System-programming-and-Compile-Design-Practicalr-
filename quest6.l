%{
#include<stdio.h>
int word=0,character=0,space=0,lines=0;
%}
%%
[A-Za-z|0-9]+ {word++;character=character+strlen(yytext);}
. {character++;}
\n {lines++;character++;}
[ \n\t\r]+ {space++;}
%%
int main(int agrc,char **argv)
{
yyin=fopen(argv[1],"r");
yylex();
printf("word : %d\n",word);
printf("characters : %d\n",character);
printf("lines : %d\n",lines);
printf("spaces : %d\n",space);
}
