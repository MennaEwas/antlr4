grammar g;
//terminals are capital
program: 'class Program' '{' field_decl* method_decl* '}';
//program
field_decl: TYPE (id | id '[' int_literal ']') (','(id | id '[' int_literal ']'))* ;
method_decl: (TYPE | 'void') id '('((TYPE id)(','(TYPE id))*)?')' block;
block: '{' var_decl* statement* '}';
var_decl: TYPE (id)(',' id)*;
statement: location ASSIGN_OP expr';'
            | method_call
            | 'if' '(' expr ')' block ('else' block)?
            | 'for' id '=' expr ',' expr block
            | 'return' (expr)? ';'
            | 'break' ';'
            | 'continue' ';'
            |block;

method_call: method_name '(' ( (expr)(',' expr)* )? ')'
            | 'callout' '(' String_literal (',' (callout_arg) (',' callout_arg)*)?')';
method_name: id;
location: id | id '['expr']';
expr: location | method_call | literal | expr bin_op expr | '-' expr | '!' expr | '('expr')';
callout_arg: expr | String_literal;
bin_op: ARITH_OP | REL_OP | EQ_OP |COND_OP;
literal: int_literal | Char_literal | BOOL_LITERAL;
id: ALPHA | alpha_num;
alpha_num: ALPHA | DIGIT;
hex_digit: DIGIT | HEX_DIGIT;
HEX_DIGIT:[A-Fa-f];
int_literal: decimal_literal | hex_literal;
decimal_literal: DIGIT DIGIT*;
hex_literal: '0x' hex_digit hex_digit*;
Char_literal: '\'' CHAR '\'';
String_literal: '"' CHAR* '"';
//char: ;
//basic
fragment CHAR: SP|DIGIT|ALPHA;
SP:'!'|'@'|'#'|'$'|'%'|'^'|'&'|'*'|'('| ')';
ALPHA: [a-zA-Z]+;
BOOL_LITERAL: 'true' | 'false';
DIGIT: [0-9]+;
//operations
ARITH_OP: '+'|'-';
REL_OP: '<'|'>'|'<='|'>=';
EQ_OP:'==' | '!=';
COND_OP: '&&' | '||';
ASSIGN_OP: '='| '+=' | '-=';
//types
TYPE: 'int' | 'boolean';