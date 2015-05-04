module CoreGen2 where

import Common
import AST
import Env

deb = " "

c_defs_of_classDef ce path argl cd = let p = path ++ "_"
                                         r = "RES_" ++ p
									 in let c_of_expr exp = case exp of
											IdExp idl		-> p ++ string_concat "_" idl
											CallExp m el	-> c_e ++ " sync " ++ p ++ string_concat "_" m ++ string_par c_of_expr (reverse el) ++ "; " ++ e_c
											AsyncExp af be il el -> c_e ++ " async " ++ (if usec_of_time af > 0 then " after " ++ string_of_time af else "") ++ (if usec_of_time be > 0 then " before " ++ string_of_time af else "") ++ deb ++ p ++ string_concat "_" il ++ string_par c_of_expr el ++ "; " ++ e_c
											PendExp il		-> c_e ++ " pend " ++ p ++ string_concat "_" il
											IntExp i		-> show i
											CharExp c		-> ecit ++ c : ecit
											BoolExp b		-> show b
											RT_Rand e		-> "RT_rand(" ++ c_of_expr e ++ ")"
											RT_Getc			-> "RT_getc()"
											MoreExp e0 e1	-> c_of_expr e0 ++ " > " ++ c_of_expr e1
											LessExp e0 e1	-> c_of_expr e0 ++ " < " ++ c_of_expr e1
											MoreThanEqExp e0 e1 -> c_of_expr e0 ++ " >= " ++ c_of_expr e1
											LessThanEqExp e0 e1	-> c_of_expr e0 ++ " <= " ++ c_of_expr e1
											EqExp e0 e1		-> c_of_expr e0 ++ " == " ++ c_of_expr e1
											AndExp e0 e1	-> c_of_expr e0 ++ " && " ++ c_of_expr e1
											OrExp e0 e1	-> c_of_expr e0 ++ " || " ++ c_of_expr e1
											NotEqExp e0 e1	-> c_of_expr e0 ++ " != " ++ c_of_expr e1
											NotExp e			-> "!" ++ c_of_expr e
											PlusExp e0 e1	-> c_of_expr e0 ++ " + " ++ c_of_expr e1
											MinusExp e0 e1	-> c_of_expr e0 ++ " - " ++ c_of_expr e1
											MulExp e0 e1		-> c_of_expr e0 ++ " * " ++ c_of_expr e1
											DivExp e0 e1		-> c_of_expr e0 ++ " / " ++ c_of_expr e1
											ModExp e0 e1	-> c_of_expr e0 ++ " % " ++ c_of_expr e1
											NegExp exp		-> "-" ++ c_of_expr exp

									 in let c_of_mPArg (MPArg t i) = string_of_pType t ++ deb ++ p ++ i

									 in let c_of_stmt tabb ti = case ti of
											ExpStmt e		-> tab ++ c_of_expr e
											MPVar t i e		-> tab ++ string_of_pType t ++ deb ++ p ++ i ++ " = " ++ c_of_expr e
											Assign i e		-> tab ++ p ++ i ++ " = " ++ c_of_expr e
											Return e		-> tab ++ p ++ "return " ++ c_of_expr e
											RT_Sleep e		-> tab ++ "RT_sleep(" ++ c_of_expr e ++ ")"
											RT_Printf s el	-> tab ++ "RT_printf(" ++ string_concat ", " ((ec ++ s ++ ec) : map c_of_expr el) ++ ")"
											RT_Putc e		-> tab ++ "RT_putc(" ++ c_of_expr e ++ ")"
											If ex th el		-> tab ++ "if (" ++ c_of_expr ex ++ ") {" ++ nl ++ adjust tabb ++ myconcat (";" ++ nl ++ adjust tabb) (map (c_of_stmt (tabb + 1)) (reverse th)) ++ "} else {" ++ nl ++ adjust tabb ++ myconcat (";" ++ nl ++ adjust tabb) (map (c_of_stmt (tabb + 1)) (reverse el)) ++ "} "
											For ex st		-> tab ++ "for (" ++ c_of_expr ex ++ ") {" ++ nl ++ adjust tabb ++ myconcat (";" ++ nl ++ adjust tabb) (map (c_of_stmt (tabb + 1)) (reverse st)) ++ "} "

									 in let c_of_classArg cal arg = case cal of
											CPArg t i		-> "const " ++ string_of_pType t ++ deb ++ p ++ i ++ " = " ++ arg
											CMArg t tl i	-> "Func " ++ string_of_pType t ++ myconcat (",") (map string_of_pType tl) ++ show i
									 in let c_state_of_classDecl andvar0 = case andvar0 of
											CPVar t i e		-> e_c ++ deb ++ string_of_pType t ++ deb ++ p ++ i ++ " = " ++ c_of_expr e ++ ";" ++ deb ++ c_e
											CTaskDecl id mps sts -> "Task " ++ id ++ "(" ++ string_concat ", " (map c_of_mPArg mps) ++ ") {" ++ nl ++ e_c ++ deb ++ myconcat (";" ++ nl) (map (c_of_stmt 0) (reverse sts)) ++ deb ++ "} " ++ c_e
											COVar id0 exs id1	-> id0 ++ "(" ++ string_concat ", " (map c_of_expr exs) ++ ")" ++ id1 ++ ";"
											CIdleDecl sts		-> "Idle {" ++ nl ++ e_c ++ deb ++ myconcat (";" ++ nl) (map (c_of_stmt 0) (reverse sts)) ++ deb ++ "}" ++ c_e
											CMDecl pt id mps sts	-> string_of_pType pt ++ deb ++ p ++ id ++ string_concat ", " (map c_of_mPArg mps) ++ ") {" ++ nl ++ myconcat (";" ++ nl) (map (c_of_stmt 0) sts) ++ "} "
											CIsrDecl _ id sts	-> "ISR Int " ++ id ++ " {" ++ nl ++ e_c ++ deb ++ myconcat (";" ++ nl) (map (c_of_stmt 0) sts) ++ deb ++ "}" ++ c_e
											CResetDecl sl	-> "Reset {" ++ nl ++ e_c ++ deb ++ myconcat (nl) (map (c_of_stmt 0) (reverse sl)) ++ "} " ++ c_e

									 in let c_md_of_classDecl andvar1 = let claim_stmts sl = tab ++ "claim " ++ r ++ " { " ++ e_c ++ nl ++ myconcat (";" ++ nl) (map (c_of_stmt 0) sl) ++ tab ++ c_e ++ "} " ++ e_c ++ nl
																			in case andvar1 of
											CMDecl t i al sl	-> " Func " ++ string_of_pType t ++ deb ++ p ++ i ++ string_par c_of_mPArg al ++ "{" ++ nl ++ claim_stmts sl ++ "} "
											CTaskDecl i al sl	-> let c_data_of_mPArg path andvar3 = case andvar3 of
																	   MPArg t i -> string_of_pType t ++ deb ++ path ++ "_" ++ i
																	   in "Task " ++ p ++ i ++ string_par (c_data_of_mPArg path) al ++ " { " ++ nl ++ e_c ++ deb ++ claim_stmts sl ++ deb ++ "} " ++ c_e
											CResetDecl sl	-> "Reset {" ++ nl ++ e_c ++ deb ++ claim_stmts (reverse sl) ++ deb ++ "} " ++ c_e
											CIdleDecl sl	-> "Idle {" ++ nl ++ e_c ++ deb ++ claim_stmts (reverse sl) ++ c_e ++ deb ++ "} " ++ c_e
											CIsrDecl _ id sts	-> "ISR Int " ++ id ++ " {" ++ nl ++ e_c ++ deb ++ myconcat (";" ++ nl) (map (c_of_stmt 0) sts) ++ deb ++ "} " ++ c_e
											COVar id0 exs id1	-> id0 ++ "(" ++ string_concat ", " (map c_of_expr (reverse exs)) ++ ")" ++ id1 ++ ";"
											CPVar t i e		-> string_of_pType t ++ deb ++ p ++ i ++ " = " ++ c_of_expr e ++ ";"

									 in let c_ioi_of_classDecl andvar2 = case andvar2 of
											COVar o al i	-> let cd = myass o ce
																in c_defs_of_classDef ce (p ++ i) (map c_of_expr al) cd
											CPVar t i e	-> string_of_pType t ++ deb ++ p ++ i ++ " = " ++ c_of_expr e
											CMDecl pt id mps sts	-> string_of_pType pt ++ deb ++ p ++ id ++ string_concat ", " (map c_of_mPArg mps) ++ ") {" ++ nl ++ myconcat (";" ++ nl) (map (c_of_stmt 0) sts) ++ "} " ++ c_e
											CTaskDecl id mps sts -> "Task " ++ id ++ "(" ++ string_concat ", " (map c_of_mPArg mps) ++ ") {" ++ nl ++ e_c ++ deb ++ myconcat (";" ++ nl) (map (c_of_stmt 0) (reverse sts)) ++ deb ++ "} " ++ c_e
											CIdleDecl sts		-> "Idle {" ++ nl ++ e_c ++ deb ++ myconcat (";" ++ nl) (map (c_of_stmt 0) (reverse sts)) ++ deb ++ "} " ++ c_e
											CIsrDecl _ id sts	-> "ISR Int " ++ id ++ " {" ++ nl ++ e_c ++ deb ++ myconcat (";" ++ nl) (map (c_of_stmt 0) sts) ++ deb ++ "} " ++ c_e
											CResetDecl sl	-> "Reset {" ++ nl ++ e_c ++ deb ++ myconcat (nl) (map (c_of_stmt 0) (reverse sl)) ++ "} " ++ c_e

									 in case cd of
										Classdef i cal cdl	-> ("generating RTFM-core code for " ++ i ++ ":" ++ deb ++ path) ++ deb ++ ("method prototypes for " ++ i ++ ":" ++ deb ++ path) ++ deb ++ ("class instance parameters for " ++ i ++ ":" ++ deb ++ path) ++ myconcat (nl) (map2 c_of_classArg cal argl) ++ nl ++ deb ++ ("class instance variables for " ++ i ++ ":" ++ deb ++ path ++ deb) ++ myconcat (nl) (mymap c_state_of_classDecl (reverse cdl)) ++ nl ++ myconcat nl (mymap c_ioi_of_classDecl (reverse cdl)) ++ deb ++ ("methods declarations for " ++ i ++ ":" ++ deb ++ path) ++ myconcat nl (mymap c_md_of_classDecl (reverse cdl)) ++ nl

c_of_Prog p = let ce = cEnv_of_classDef p
				  in let cd = assoc "Root" ce
						 in case p of
							Prog _	-> "// RTFM-cOOre, Per Lindgren (C) 2014" ++ nl ++ e_c ++ nl ++ c_defs_of_classDef ce "Root" [] cd ++ nl ++ c_e ++ nl
