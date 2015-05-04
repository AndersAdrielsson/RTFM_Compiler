module AST where

import Common

type Id = String

data Spec = Task | Idle | Reset | ISR
	deriving (Eq, Show)

data Expr = IdExp [Id] | CallExp [Id] [Expr] | AsyncExp Time Time [Id] [Expr] | PendExp [Id]
				| IntExp Int | CharExp Char | BoolExp Bool | RT_Rand Expr | RT_Getc
				| MinusExp Expr Expr | PlusExp Expr Expr | MulExp Expr Expr | DivExp Expr Expr | ModExp Expr Expr
				| EqExp Expr Expr | NotEqExp Expr Expr | MoreExp Expr Expr | LessExp Expr Expr | NegExp Expr
				| MoreThanEqExp Expr Expr | LessThanEqExp Expr Expr | NotExp Expr | AndExp Expr Expr | OrExp Expr Expr
	deriving (Eq, Show)

data Ptype = Int | Char | Bool | Byte | Void
	deriving (Eq, Show)

data MPArg = MPArg Ptype Id
	deriving (Eq, Show)

data Stmt = ExpStmt Expr | MPVar Ptype Id Expr | Assign Id Expr | Return Expr | RT_Sleep Expr
				| RT_Printf String [Expr] | RT_Putc Expr | If Expr [Stmt] [Stmt] | For Expr [Stmt]
	deriving (Eq, Show)

data ClassArg = CPArg Ptype Id | CMArg Ptype [Ptype] Id
	deriving (Eq, Show)

data ClassDecl = CPVar Ptype Id Expr | COVar Id [Expr] Id | CMDecl Ptype Id [MPArg] [Stmt]
						| CTaskDecl Id [MPArg] [Stmt] | CIsrDecl Int Id [Stmt] | CResetDecl [Stmt]
						| CIdleDecl [Stmt]
	deriving (Eq, Show)

data ClassDef = Classdef Id [ClassArg] [ClassDecl]
	deriving (Eq, Show)

data Prog = Prog [ClassDef]
	deriving (Eq, Show)

string_par m l = " (" ++ string_concat ", " (mymap m l) ++ ") "
string_cur m l = " {" ++ string_concat ", " (mymap m l) ++ "} "

string_of_expr exp = case exp of
		IdExp idl 		-> string_concat "." idl
		CallExp m el		-> string_concat "." m ++ string_par string_of_expr el
		AsyncExp af be il el 	-> "async after " ++ string_of_time af ++ " before " ++ string_of_time be ++ " " ++ string_concat "." il ++ string_par ss el
		PendExp il 		-> "pend " ++ string_concat ":" il
		IntExp i		-> show i
		CharExp c		-> ecit ++ c : ecit
		BoolExp b		-> show b
		RT_Rand e		-> "RT_rand(" ++ ss e ++ ")"
		RT_Getc			-> "RT_getc()"
		MinusExp e0 e1		-> "(" ++ ss e0 ++ " - " ++ ss e1 ++ ")"
		PlusExp e0 e1		-> "(" ++ ss e0 ++ " + " ++ ss e1 ++ ")"
		MulExp e0 e1		-> "(" ++ ss e0 ++ " * " ++ ss e1 ++ ")"
		DivExp e0 e1		-> "(" ++ ss e0 ++ " / " ++ ss e1 ++ ")"
		EqExp e0 e1		-> "(" ++ ss e0 ++ " == " ++ ss e1 ++ ")"
		NegExp e		-> "-" ++ ss e
		MoreExp e0 e1		-> "(" ++ ss e0 ++ " > " ++ ss e1 ++ ")"
		LessExp e0 e1		-> "(" ++ ss e0 ++ " < " ++ ss e1 ++ ")"
		where ss = string_of_expr
		
string_of_pType pT = case pT of
		Int		-> "int"
		Char	-> "char"
		Bool	-> "bool"
		Void	-> "void"

string_of_mPArg (MPArg t i) = string_of_pType t ++ " " ++ i

string_of_stmt tabb stmt = case stmt of
		ExpStmt e	-> tab  ++ ss e
		MPVar t i e	-> tab ++ string_of_pType t ++ " " ++ i ++ " := " ++ ss e
		Assign i e	-> tab ++ i ++ " := " ++ ss e
		Return e	-> tab ++ "return " ++ ss e
		RT_Sleep e	-> tab ++ "RT_sleep(" ++ ss e ++ ")"
		RT_Printf s el	-> tab ++ "RT_printf(" ++ string_concat ", " (s : map ss el) ++ ")"
		RT_Putc e	-> tab ++ "RT_putc(" ++ ss e ++ ")"
		If ex th el	-> tab ++ "if " ++ ss ex ++ " {" ++ nl ++ tab ++ myconcat (";" ++ nl ++ adjust tabb) (map (string_of_stmt (tabb + 1)) th) ++ nl ++ tab ++ "} else {" ++ nl ++ tab ++ myconcat (";" ++ nl ++ adjust tabb) (map (string_of_stmt (tabb + 1)) el) ++ tab ++ "}"
		For ex st	-> tab ++ "for " ++ ss ex ++ " {" ++ nl ++ tab ++ myconcat (";" ++ nl ++ adjust tabb) (map (string_of_stmt (tabb + 1)) st) ++ tab ++ "}"
		where ss = string_of_expr

string_of_classArg cArg = case cArg of
		CPArg t i		-> string_of_pType t ++ " " ++ i
		CMArg t tl i	-> string_of_pType t ++ " " ++ i ++ string_par string_of_pType tl

string_of_classDecl cDec = case cDec of
		CPVar t i e		-> tab ++ string_of_pType t ++ " " ++ i ++ " := " ++ string_of_expr e ++ ";"
		COVar o el i		-> tab ++ o ++ string_par string_of_expr el ++ i ++ ";"
		CMDecl t i al sl	-> tab ++ string_of_pType t ++ " " ++ i ++ string_par string_of_mPArg al ++ "{" ++ nl ++ myconcat (";" ++ nl) (map (string_of_stmt 0) sl) ++ tab ++ "}"
		CTaskDecl i al sl	-> tab ++ "TaskDef " ++ i ++ " " ++ string_par string_of_mPArg al ++ "{" ++ nl ++ myconcat (";" ++ nl) (map (string_of_stmt 0) sl) ++ tab ++ "}"
		CIsrDecl pr i sl	-> tab ++ "ISR @prio " ++ show pr  ++ i ++ " {" ++ nl ++ myconcat (";" ++ nl) (map (string_of_stmt 0) sl) ++ tab ++ "}"
		CResetDecl sl		-> tab ++ "Reset {" ++ nl ++ myconcat (";" ++ nl) (map (string_of_stmt 0) sl) ++ tab ++ "}"
		CIdleDecl sl		-> tab ++ "Idle {" ++ nl ++ myconcat (";" ++ nl) (map (string_of_stmt 0) sl) ++ tab ++ "}"

string_of_classDef (Classdef i cal cdl) = "class " ++ i ++ string_par string_of_classArg ( cal) ++ " {" ++ nl ++ myconcat nl (map string_of_classDecl cdl) ++ "} " ++ nl

string_of_prog (Prog cl) = "AST dump: " ++ nl ++ string_concat nl (map string_of_classDef cl)
