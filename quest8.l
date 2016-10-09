%{
#include<strings.h>
int opcount=0,intcount=0,check=1,top=0;
%}
%%
['('] {check=0;}
[')'] {check=1;}
[+|*|/|-] {opcount++;}
[0-9]+ {intcount++;}
. {printf("Invalid Input(only digits and +|-|*|/ is valid\n");}
%%
int main()
{
//printf("Enter expression : ");
yyin=fopen("q1.txt","r");
yylex();
if(intcount=opcount+1)
{
 if(check==1)
 {
    printf("Expression is CORRECT!\n");
 }
 else{
    printf("')' bracket missing from expression\n");
 }
} 
else{
   printf("Expression is INCORRECT!\n");
}
}
