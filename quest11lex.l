%{
#include "y.tab.h"
%}
alpha [Aa]
beta [Bb]
newline [\n]
%%
{alpha} { return alpha ;}
{beta} {return beta;}
{newline} { return newline ;}
. { printf("Invalid Expression\n");exit(0); }
%%


