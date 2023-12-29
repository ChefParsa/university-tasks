%{
#include <stdio.h>
%}

%%

begin   { printf("TOKEN: begin\n"); }
end     { printf("TOKEN: end\n"); }
";"   { printf("TOKEN: ;\n"); }
for   { printf("TOKEN: for\n"); }
if    { printf("TOKEN: if\n"); }
while { printf("TOKEN: while\n"); }
do    { printf("TOKEN: do\n"); }
then  { printf("TOKEN: then\n"); }
else  { printf("TOKEN: else\n"); }
to    { printf("TOKEN: to\n"); }
id    { printf("TOKEN: id\n"); }
"<="  { printf("TOKEN: <=\n"); }
"<>"  { printf("TOKEN: <>\n"); }
"<"   { printf("TOKEN: <\n"); }
">="  { printf("TOKEN: >=\n"); }
">"   { printf("TOKEN: >\n"); }
":="  { printf("TOKEN: :=\n"); }
"="   { printf("TOKEN: =\n"); }
":"   { printf("TOKEN: :\n"); }
"+"   { printf("TOKEN: +\n"); }
"-"   { printf("TOKEN: -\n"); }
"*"   { printf("TOKEN: *\n"); }
[1-9]+(.[1-9]+)?   { printf("TOKEN: num\n"); }
[a-zA-Z][a-zA-Z0-9_]*    { printf("TOKEN: id\n"); }
[ \t\n] { /*do nothing*/ }

%%

int main() {
    yylex();
    return 0;
}
