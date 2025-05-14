%{
#include "yacc.tab.h"
#include <string.h>
%}

%%
"jedi"     { return JEDI; }
"sith"     { return SITH; }
"lightsaber"       { return LIGHTSABER; }
"force"         { return FORCE; }
"hyperdrive"         { return HYPERDRIVE; }
"blaster"         { return BLASTER; }
"starship"    { return STARSHIP; }
"transmission"     { return TRANSMISSION; }
"sector"        { return SECTOR; }
"then"          { return THEN; }
"else"          { return ELSE; }  
"endsector"     { return ENDSECTOR; }
[a-zA-Z][a-zA-Z0-9]* { yylval.str = strdup(yytext); return ID; }
[0-9]+          { yylval.str = strdup(yytext); return NUMBER; }
"="             { return '='; }
"=="            { return EQ; }
"!="            { return NE; }
"<"             { return LT; }
">"             { return GT; }
"<="            { return LE; }
">="            { return GE; }
[ \t\n]+        { /* Ignore whitespace */ }
.               { printf("Unknown character: %s\n", yytext); return yytext[0]; }
%%

int yywrap() {
    return 1;
}

