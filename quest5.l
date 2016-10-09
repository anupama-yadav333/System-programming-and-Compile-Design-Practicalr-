%{
int count=0;
%}
digit     [0-9]
letter    [A-Za-z_]
%% 
{letter}({letter}|{digit})* {count++;}
%%
int main()
{
yyin=fopen("q1.txt","r");
yylex();
printf("No of identifiers : %d\n",count);
return 0;
}
