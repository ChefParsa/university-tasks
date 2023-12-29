%{
#include <stdio.h>
%}

%%

[wW][hH][eE][rR][eE]   printf("\033[31m %s\033[0m", yytext);
[sS][eE][lL][eE][cC][tT]  { printf("\033[32m %s\033[0m", yytext); }
[fF][rR][oO][mM]    { printf("\033[33m %s\033[0m", yytext); }
[a-zA-Z][a-zA-Z0-9_]*   { printf("\033[34m %s\033[0m", yytext); }

[ .\t\n]    { printf("%s", yytext); }

%%

int main() {
    yylex();
    return 0;
}