%{
#include <stdio.h>
%}

%%

[wW][hH][eE][rR][eE]   printf("\033[37mkeyword:\033[31m %s\033[0m\n", yytext);
[sS][eE][lL][eE][cC][tT]  { printf("\033[37mkeyword:\033[32m %s\033[0m\n", yytext); }
[fF][rR][oO][mM]    { printf("\033[37mkeyword:\033[33m %s\033[0m\n", yytext); }
[a-zA-Z][a-zA-Z0-9_]*   { printf("\033[37mID:\033[34m %s\033[0m\n", yytext); }

.|\n    { /* ignore any other characters */ }

%%

int main() {
    yylex();
    return 0;
}