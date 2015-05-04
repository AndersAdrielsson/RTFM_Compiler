{
module HappyParser where

import AlexToken
import AST
import Common

}

%name prog
%tokentype 											{ Token }
%error 												{ parseError }

%token
    INTVAL											{ TokenIntval $$ }
    ID   											{ TokenID $$ }
	'=='   											{ TokenEq }
	'!='											{ TokenNotEq }
	'+'   											{ TokenAdd }
	'-'  											{ TokenSub }
	'*'   											{ TokenMul }
	'%'											{ TokenMod }
	'/'												{ TokenDiv }
	';'												{ TokenSC }
	'<'												{ TokenLT }
	'>'												{ TokenGT }
    '('   											{ TokenLB }
    ')'   											{ TokenRB }
	'{'												{ TokenLCB }
	'}'												{ TokenRCB }
	','												{ TokenComma }
	'.'												{ TokenDot }
	':='											{ TokenAssign }
	'>='											{ TokenMoreThanEq }
	'<='											{ TokenLessThanEq }
	'&&'											{ TokenAnd }
	'||'											{ TokenOr }
	'!'												 { TokenNot }
	USEC											{ TokenUsec }
	MSEC											{ TokenMsec }
	SEC												{ TokenSec }
	INT												{ TokenInt }
	CHAR											{ TokenChar }
	CHARVAL											{ TokenCharval $$ }
	STRVAL											{ TokenStrval $$ }
	BOOL											{ TokenBool }
	BOOLVAL											{ TokenBoolval $$ }
	VOID											{ TokenVoid }
	TASK											{ TokenTask }
	ISR												{ TokenISR }
	PEND											{ TokenPend }
	ASYNC											{ TokenAsync }
	AFTER											{ TokenAfter }
	BEFORE											{ TokenBefore }
	RESET											{ TokenReset }
	IDLE											{ TokenIdle }
	CLASS											{ TokenClass }
	RETURN											{ TokenReturn }
	IF												{ TokenIf }
	ELSE											{ TokenElse }
	FOR												{ TokenFor }
	BYTE											{ TokenByte }
	RT_SLEEP										{ TokenRT_Sleep }
	RT_PRINTF										{ TokenRT_Printf }
	RT_RAND											{ TokenRT_Rand }
	RT_GETC											{ TokenRT_Getc }
	RT_PUTC											{ TokenRT_Putc }

%nonassoc '>' '<'
%left '+' '-'
%left '*' '/'

%%

prog : classDefs									{ Prog $1 }

classDefs :: { [ ClassDef ] }
	: {- empty -}									{ [] }
	| classDefs classDef							{ $2 : $1 }

classDef : CLASS ID '(' classArgs ')' '{' classDecls '}' { Classdef $2 $4 $7 }

classArgs :: { [ ClassArg ] }
	: {- empty -}									{ [] }
	| fkij											{ $1 }

fkij : classArg										{ [$1] }
	| fkij ',' classArg								{ $3 : $1 }

classArg : pType ID									{ CPArg $1 $2 }
	| pType '(' mSigs ')' ID						{ CMArg $1 $3 $5 }

mSigs : {- empty -}									{ [] }
	| lkof											{ $1 }

lkof : pType											{ [$1] }
	| lkof ',' pType									{ $3 : $1 }

classDecls :: { [ ClassDecl ] }
	: {- empty -}									{ [] }
	| classDecls classDecl							{ $2 : $1 }

classDecl : pType ID ':=' expr ';'					{ CPVar $1 $2 $4 }
	| ID '(' params ')' ID ';'						{ COVar $1 $3 $5 }
	| pType ID '(' mArgs ')' '{' stmts '}'			{ CMDecl $1 $2 $4 $7 }
	| TASK ID '(' mArgs ')' '{' stmts '}'			{ CTaskDecl $2 $4 $7 }
	| ISR INTVAL ID '{' stmts '}'					{ CIsrDecl $2 $3 $5 }
	| RESET '{' stmts '}'							{ CResetDecl $3 }
	| IDLE '{' stmts '}'							{ CIdleDecl $3 }

mArgs :: { [ MPArg ] }
	: {- empty -}									    { [] }
	| lkuf												{ $1 }
	
lkuf : mArg											{ [$1] }
	| lkuf ',' mArg									{ $3 : $1 }

mArg : pType ID										{ MPArg $1 $2 }

pType : INT											{ Int }
	| CHAR											{ Char }
	| BOOL											{ Bool }
	| BYTE											{ Byte }
	| VOID											{ Void }

params :: { [ Expr ] }
	: {- empty -}									{ [] }
	| lkef											{ $1 }

lkef : expr											{ [$1] }
	| lkef ',' expr									{ $3 : $1 }

expr : ASYNC after before ids '(' params ')'		{ AsyncExp $2 $3 $4 $6 }
	| PEND ids										{ PendExp $2 }
	| ids											{ IdExp $1 }
	| ids '(' params ')'							{ CallExp $1 $3 }
	| INTVAL										{ IntExp $1 }
	| CHARVAL										{ CharExp $1 }
	| BOOLVAL										{ BoolExp $1 }
	| RT_RAND '(' expr ')'							{ RT_Rand $3 }
	| RT_GETC '(' ')'								{ RT_Getc }
	| expr '==' expr								{ EqExp $1 $3 }
	| expr '!=' expr								{ NotEqExp $1 $3 }
	| expr '>=' expr								{ MoreThanEqExp $1 $3 }
	| expr '<=' expr								{ LessThanEqExp $1 $3 }
	| expr '%' expr								{ ModExp $1 $3 }
	| expr '-' expr									{ MinusExp $1 $3 }
	| expr '+' expr									{ PlusExp $1 $3 }
	| expr '*' expr									{ MulExp $1 $3 }
	| expr '/' expr									{ DivExp $1 $3 }
	| expr '>' expr									{ MoreExp $1 $3 }
	| expr '<' expr									{ LessExp $1 $3 }
	| '!' expr											{ NotExp $2 }
	| expr '&&' expr									{ AndExp $1 $3 }
	| expr '||' expr									{ OrExp $1 $3 }
	| '-' expr											{ NegExp $2 }
	| '(' expr ')'									{ $2 }

ids : ID '.' ID										{ $1 : [$3] }
	| ID											{ [$1] }

after : AFTER time									{ $2 }
	| {- empty -}									{ Usec 0 }

before : BEFORE time								{ $2 }
	| {- empty -}									{ Usec 0 }

time : INTVAL USEC									{ Usec $1 }
	| INTVAL MSEC									{ Msec $1 }
	| INTVAL SEC									{ Sec $1 } 
	| INTVAL										{ Usec $1 }

stmts : {- empty -}									{ [] }
	| stmts stmt									{ $2 : $1 }

stmt : expr ';'										{ ExpStmt $1 }
	| pType ID ':=' expr ';'						{ MPVar $1 $2 $4 }  
	| ID ':=' expr ';'								{ Assign $1 $3 }
	| IF '(' expr ')' '{' stmts '}' ELSE '{' stmts '}' { If $3 $6 $10 }
	| FOR '(' expr ')' '{' stmts '}'				{ For $3 $6 }
	| RETURN expr ';'								{ Return $2 }
	| RT_SLEEP '(' expr ')' ';'						{ RT_Sleep $3 }
	| RT_PRINTF '(' STRVAL ',' params ')' ';'		{ RT_Printf $3 $5 }
	| RT_PRINTF '(' STRVAL ')' ';'					{ RT_Printf $3 [] }
	| RT_PUTC '(' expr ')' ';'						{ RT_Putc $3 }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

parseExpr :: String -> Prog
parseExpr = prog . scanTokens
}
