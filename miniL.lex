   /* cs152-miniL phase1 */
   
%{   
   /* write your C code here for definitions of variables and including headers */
    int currLine = 1, currPos = 1;
%}

   /* some common rules */
%%
   /* specific lexer rules in regex */
"function" {printf("FUNCTION"); currPos += yyleng; }
"beginparams" {printf("BEGIN_PARAMS"); currPos += yyleng; }
"endparams" {printf("END_PARAMS"); currPos += yyleng;}
"beginlocals" {printf("BEGIN_LOCALS"); currPos += yyleng; }
"endlocals" {printf("END_LOCALS"); currPos += yyleng; }
"beginbody" {printf("BEGIN_BODY"); currPos += yyleng; }
"endbody" {printf("END_BODY"); currPos += yyleng; }
"integer" {printf("INTEGER"); currPos += yyleng; }
"array" {printf("ARRAY"); currPos += yyleng; }
"enum" {printf("ENUM"); currPos += yyleng; }
"of" {printf("OF"); currPos += yyleng; }
"if" {printf("IF"); currPos += yyleng; }
"then" {printf("THEN"); currPos += yyleng; }
"endif" {printf("ENDIF"); currPos += yyleng; }
"else" {printf("ELSE"); currPos += yyleng; }
"for" {printf("FOR"); currPos += yyleng; }

%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}
