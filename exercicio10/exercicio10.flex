import java_cup.runtime.Symbol;

%%

%cup
%class Lexer2
%unicode
%line
%column

digit = [0-9]
number = {digit}+

%%

{number}        { return new Symbol(sym.NUMBER, Integer.parseInt(yytext())); }
"("             { return new Symbol(sym.LPAREN); }
")"             { return new Symbol(sym.RPAREN); }
"+"             { return new Symbol(sym.PLUS); }
"-"             { return new Symbol(sym.MINUS); }
"*"             { return new Symbol(sym.TIMES); }
"/"             { return new Symbol(sym.DIVIDE); }
"%"             { return new Symbol(sym.MOD); }
"^"             { return new Symbol(sym.POWER); }
[ \t\r\n]+      { /* Ignora espaços */ }
.               { System.err.println("Caractere inválido: " + yytext()); }
