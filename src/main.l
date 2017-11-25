
%{
#include <stdio.h>
%}

comeco_fim [a-zA-Z0-9]
meio [a-zA-Z0-9_\.-]
erraddo [\-\.\_]

%%
{erraddo}*{comeco_fim}+({meio}*{comeco_fim})*@{comeco_fim}+({meio}*{comeco_fim})*[-]+ ; /*teste 5*/

{comeco_fim}+({meio}*{comeco_fim})*@{comeco_fim}+({meio}*{comeco_fim})* {printf("%s\n", yytext); }

\n ; /*novalinha e tabulacao horizontal*/
. ; /*curinga de um caracter*/
[[:space:]] ; /*intervalo de espacos*/

%%

int main() {
  yylex();
  return 0;
}