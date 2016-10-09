%{
#include<stdio.h>
#include<fstream>
int linecount=0,charcount=0;
%}
%%
\n {linecount++;}
. {charcount++;} 
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("question1.txt","r");
yylex();
printf("Number of lines in the input file : %d",linecount);
printf("\nNumber of characters in the input file : %d",charcount);
yyout=fopen("anu.txt","w");
fprintf("no line : %d",linecount);
fprintf("no char : %d",charcount);
fclose(yyout);
fclose(yyin);
}
