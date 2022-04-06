   /* cs152-miniL phase1 */
   
%{   
   /* write your C code here for definitions of variables and including headers */
    int currLine = 1, currPos = 1;
%}

   /* some common rules */

DIGIT [0-9]

%%
   /* specific lexer rules in regex */
   /* reserved words*/
"function" {printf("FUNCTION\n"); currPos += yyleng; }
"beginparams" {printf("BEGIN_PARAMS\n"); currPos += yyleng; }
"endparams" {printf("END_PARAMS\n"); currPos += yyleng;}
"beginlocals" {printf("BEGIN_LOCALS\n"); currPos += yyleng; }
"endlocals" {printf("END_LOCALS\n"); currPos += yyleng; }
"beginbody" {printf("BEGIN_BODY\n"); currPos += yyleng; }
"endbody" {printf("END_BODY\n"); currPos += yyleng; }
"integer" {printf("INTEGER\n"); currPos += yyleng; }
"array" {printf("ARRAY\n"); currPos += yyleng; }
"enum" {printf("ENUM\n"); currPos += yyleng; }
"of" {printf("OF\n"); currPos += yyleng; }
"if" {printf("IF\n"); currPos += yyleng; }
"then" {printf("THEN\n"); currPos += yyleng; }
"endif" {printf("ENDIF\n"); currPos += yyleng; }
"else" {printf("ELSE\n"); currPos += yyleng; }
"for" {printf("FOR\n"); currPos += yyleng; }

    /*arithmetic operators*/
"-" {printf("SUB\n"); currPos += yyleng; }
"+" {printf("ADD\n"); currPos += yyleng; }

    /*comparison operators*/
"==" {printf("EQ\n"); currPos += yyleng; }
"<>" {printf("NEQ\n"); currPos += yyleng; }
"<"  {printf("LT\n"); currPos += yyleng; }

    /*identifiers & numbers*/
([a-z]|[A-Z])+([_]?[0-9]?[a-z]?[A-Z]?)*  {printf("IDENT %s", yytext); currPos += yyleng; }

    /*other special symbols*/
";" {printf("SEMICOLON"); currPos += yyleng; }
":" {printf("COLON"); currPos += yyleng; }
"," {printf("COMMA"); currPos += yyleng; }
"(" {printf("L_PAREN"); currPos += yyleng; }

%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}
