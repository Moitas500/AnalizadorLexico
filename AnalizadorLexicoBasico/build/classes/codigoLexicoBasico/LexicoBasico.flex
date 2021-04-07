package codigoLexicoBasico;
import static codigoLexicoBasico.Tokens.*;
%%
%class LexicoBasico
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]
%{
    public String lexemas;
%}
%%
int |
if |
else |
for |
while {lexemas=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
";" {return P_coma;}
{L}({L}|{D})* {lexemas=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexemas=yytext(); return Numero;}
 . {return ERROR;}
