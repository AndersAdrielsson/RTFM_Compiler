module VarEnv10 where

import AST

-- v_env, m_env osv motsvarar variable-, method-, object- och class environment, och byggs upp allteftersom AST-trädet traverseras. Spårutskriften ifrån prog_eval (längst ner här i VarEnv, som motsvarar "top level"-funktionen) är i princip alla dessa environments.
-- På vägen så kollas regler etc
-- funktioner med kryptiska namn, si6 etc är hjälpfunktioner och är definierade längst ner, de handlar oftast om att ta ut något specifikt element ur en tupel (eller snarare en multipel, om man kan kalla det så)


-- typen på uttrycket returneras, ser så operationerna är tilllåtna (man kan inte jämföra äpplen och päron etc)
exp_eval v_env m_env o_env c_env expr = case expr of
	IdExp (id:ids)			-> case ids of
											[]	-> var_type id v_env
											_	-> obj_var_type id (head ids) o_env c_env
	IntExp _					-> Int
	CharExp _					-> Char
	BoolExp _					-> Bool
	MinusExp exp0 exp1	-> if ((ev exp0 == ev exp1) && ev exp0 == Int) then Int else error ("unification error of " ++ show exp0 ++ " and " ++ show exp1)
	PlusExp exp0 exp1		-> ev (MinusExp exp0 exp1)
	MulExp exp0 exp1		-> ev (MinusExp exp0 exp1)
	DivExp exp0 exp1		-> ev (MinusExp exp0 exp1)
	ModExp exp0 exp1		-> ev (MinusExp exp0 exp1)
	NegExp exp				-> ev (MinusExp (IntExp 0) exp)
	EqExp exp0 exp1		-> if (ev exp0 == ev exp1) then Bool else error ("unification error of " ++ show exp0 ++ " and " ++ show exp1)
	NotEqExp exp0 exp1	-> ev (EqExp exp0 exp1)
	NotExp exp				-> if (ev exp == Bool) then Bool else error ("unification error of " ++ show exp)
	AndExp exp0 exp1		-> ev (EqExp exp0 exp1)
	OrExp exp0 exp1		-> ev (EqExp exp0 exp1)
	MoreExp exp0 exp1	-> if ((ev exp0 == ev exp1) && ev exp0 == Int) then Bool else error ("unification error of " ++ show exp0 ++ " and " ++ show exp1)
	LessExp exp0 exp1	-> ev (MoreExp exp0 exp1)
	MoreThanEqExp e0 e1-> ev (MoreExp e0 e1)
	LessThanEqExp e0 e1	-> ev (MoreExp e0 e1)
	RT_Rand exp				-> ev exp
	RT_Getc					-> Char
	CallExp (id:ids) exp	-> case ids of
											[]	-> meth_type id (map ev exp) m_env
											_	-> obj_meth_type id (head ids) (map ev exp) o_env c_env
	_								-> Void
	where ev = exp_eval v_env m_env o_env c_env

meth_type key _ [] = error ("method " ++ key ++ " not declared, or call type incorrect")
meth_type key args (x:xs) = if ((fs x == key) && ((unfold.th $ x) == args)) then sn x else meth_type key args xs

var_type key [] = error ("variable " ++ key ++ " not instantiated")
var_type key (x:xs) = if fst x == key then snd x else var_type key xs

obj_var_type obj _ [] _ = error ("object " ++ obj ++ " non existent")
obj_var_type obj var (x:xs) c_env = if (fst x == obj) then cla_var_type (snd x) var c_env else obj_var_type obj var xs c_env

obj_meth_type obj _ _ [] _ = error ("object " ++ obj ++ " non existent")
obj_meth_type obj meth args (x:xs) c_env = if (fst x == obj) then cla_meth_type (snd x) meth args c_env else obj_meth_type obj meth args xs c_env

cla_var_type cla _ [] = error ("class " ++ cla ++ " not instantiated")
cla_var_type cla var (x:xs) = if (fs4 x == cla) then var_type var (sn4 x) else cla_var_type cla var xs

cla_meth_type cla _ _ [] = error ("class " ++ cla ++ " not instantiated")
cla_meth_type cla meth args (x:xs) = if (fs4 x == cla) then meth_type meth args (th4 x) else cla_meth_type cla meth args xs

----------------------------------------------------

-- en lista av uttryck evalueras, och de olika miljöerna muteras beroende på vilket uttryck som förekommer
stmt_check v_env m_env o_env c_env trace [] = [(v_env, m_env, o_env, c_env, trace)]
stmt_check v_env m_env o_env c_env trace (s:ss) = case s of
	e@(ExpStmt _)	-> stmt_check v_env m_env o_env c_env (("Expression", expstmt_eval v_env m_env o_env c_env e) : trace) ss
	m@(MPVar _ _ _)	-> stmt_check (mpvar_eval v_env m_env o_env c_env m : v_env) m_env o_env c_env trace ss
	a@(Assign _ _)	-> stmt_check v_env m_env o_env c_env (assign_eval v_env m_env o_env c_env a : trace) ss
	r@(Return _)	-> stmt_check v_env m_env o_env c_env (("return", return_eval v_env m_env o_env c_env r) : trace) ss
	i@(If _ _ _)	-> (\(a, b) -> a ++ b) (if_eval v_env m_env o_env c_env trace i) ++ st_ch ss
	f@(For _ _)		-> for_eval v_env m_env o_env c_env trace f ++ st_ch ss
	_						-> st_ch ss
	where st_ch = stmt_check v_env m_env o_env c_env trace

expstmt_eval v_env m_env o_env c_env (ExpStmt exp) = exp_eval v_env m_env o_env c_env exp

mpvar_eval v_env m_env o_env c_env (MPVar ptype id exp) = if (ptype == exp_eval v_env m_env o_env c_env exp) then (id, ptype) else error ("incompatible types, " ++ id ++ " and " ++ show ptype)

assign_eval v_env m_env o_env c_env (Assign id exp) = let ev = exp_eval v_env m_env o_env c_env
												in if (ev (IdExp [id]) == ev exp) then (id, ev exp) else error ("incompatible types, " ++ id ++ " and " ++ show exp)

return_eval v_env m_env o_env c_env (Return exp) = exp_eval v_env m_env o_env c_env exp

if_eval v_env m_env o_env c_env trace (If exp th el) = let st_ch = stmt_check v_env m_env o_env c_env trace
										  in if (exp_eval v_env m_env o_env c_env exp == Bool) then (st_ch $ reverse th, st_ch $ reverse el) else error "if-expression must be of boolean type"

for_eval v_env m_env o_env c_env trace (For exp sts) = if (exp_eval v_env m_env o_env c_env exp == Bool) then (stmt_check v_env m_env o_env c_env trace (reverse sts)) else error "for-expression must be of boolean type"

------------------------------------------------------
	
classdecl_check v_env m_env o_env c_env spec_env trace [] = [([], v_env, m_env, o_env, c_env, spec_env, trace)]
classdecl_check v_env m_env o_env c_env spec_env trace (c:cc) = case c of
	cp@(CPVar _ _ _)				-> classdecl_check (cpvar_eval v_env m_env o_env c_env cp : v_env) m_env o_env c_env spec_env trace cc
	co@(COVar _ _ _)				-> classdecl_check v_env m_env (covar_eval v_env m_env o_env c_env co : o_env) c_env spec_env trace cc
	cm@(CMDecl _ _ _ _)		-> let ce = cmdecl_eval v_env m_env o_env c_env trace cm
							  in ([ce], [], [], [], [], [], []) : classdecl_check v_env (fstThree ce : m_env) o_env c_env spec_env ((fo4 ce) : trace) cc
	ct@(CTaskDecl _ _ _)		-> cl_ch (ctaskdecl_eval v_env m_env o_env c_env ct : spec_env) trace cc
	cr@(CResetDecl _)				-> cl_ch (cresetdecl_eval v_env m_env o_env c_env cr : spec_env) trace cc
	cisr@(CIsrDecl _ _ _)		-> cl_ch (cisrdecl_eval v_env m_env o_env c_env cisr : spec_env) trace cc
	ci@(CIdleDecl _)				-> cl_ch (cidledecl_eval v_env m_env o_env c_env ci : spec_env) trace cc
	where cl_ch = classdecl_check v_env m_env o_env c_env 

cpvar_eval v_env m_env o_env c_env (CPVar ptype id exp) = if (ptype == exp_eval v_env m_env o_env c_env exp) then (id, ptype) else error ("type error, " ++ id ++ " and " ++ show ptype)

covar_eval v_env m_env o_env c_env (COVar obj _ id) = (id, covert_eval obj c_env)

covert_eval obj [] = error (obj ++ " not correctly defined")
covert_eval obj (c:cs) = if ((fs4 c == obj)) then obj else covert_eval obj cs

cmdecl_eval v_env m_env o_env c_env trace (CMDecl pt id mpargs stmts) = let self = ((id, pt, mparg_eval mpargs) : m_env)
									    nv_env = mparg_eval mpargs ++ v_env
																 in if returntype nv_env self o_env c_env pt rev then (id, pt, mparg_eval mpargs, stmt_check nv_env self o_env c_env [] rev) else error ("wrong return type, should be " ++ show pt)
																 where rev = reverse stmts

returntype v_env m_env o_env c_env ret stmts = foldr (&&) True $ map (== ret) (scavange_returns v_env m_env o_env c_env [] stmts)

scavange_returns _ _ _ _ _ [] = []
scavange_returns v_env m_env o_env c_env trace (stmt:stmts) = case stmt of
	Return exp	-> exp_eval v_env m_env o_env c_env exp : s_r stmts
	If _ th el		-> s_r th ++ s_r el ++ s_r stmts
	For _ for		-> s_r for ++ s_r stmts
	_					-> s_r stmts
	where s_r = case stmt of
		e@(ExpStmt _)		-> scavange_returns v_env m_env o_env c_env (("Expression", expstmt_eval v_env m_env o_env c_env e) : trace)
		m@(MPVar _ _ _)	-> scavange_returns (mpvar_eval v_env m_env o_env c_env m : v_env) m_env o_env c_env trace
		a@(Assign _ _)		-> scavange_returns v_env m_env o_env c_env (assign_eval v_env m_env o_env c_env a : trace)
		_							-> scavange_returns v_env m_env o_env c_env trace

cisrdecl_eval v_env m_env o_env c_env (CIsrDecl _ id stmts) = if returntype v_env m_env o_env c_env Int rev then ("ISR", ISR, [("ISR", Int)], stmt_check v_env m_env o_env c_env [] rev) else error "wrong return type, CIsrDecl" where rev = reverse stmts

detrace _ [] = []
detrace ret ((str, pt):ts) = if str == "return" then (ret == pt) : detrace ret ts else detrace ret ts

mparg_eval [] = []
mparg_eval ((MPArg pt id):mpargs) = (id, pt) : mparg_eval mpargs

ctaskdecl_eval v_env m_env o_env c_env (CTaskDecl id mpargs stmts) = let ml = mparg_eval mpargs
															  in (id, Task, ml, (stmt_check (v_env ++ ml) m_env o_env c_env [] stmts))

cresetdecl_eval v_env m_env o_env c_env (CResetDecl stmts) = ("Reset", Reset, [("RESET", Void)], stmt_check v_env m_env o_env c_env [] stmts)

cidledecl_eval v_env m_env o_env c_env (CIdleDecl stmts) = ("Idle", Idle, [("IDLE", Void)], stmt_check v_env m_env o_env c_env [] stmts)

----------------------------------------------------

-- ett program = enstaka eller multipla klassdeklarationer, här utvärderas de i ordning och får vetskap om varandra
-- OBS - begränsning i min kompilator, ordningen i vilken man deklarerar klasser spelar roll, man kan alltså inte använda en metod som deklareras "längre ner" i ens coorekod. Dåligt, ja, men så blev det.														 
classdef_check prevdefs trace [] = (prevdefs, trace)
classdef_check prevdefs trace ((Classdef id cargs cdcls):cdfs) = let cldc = (id, classdecl_check (("RT_Getc", Int) : classargvar_eval cargs) (classargmeth_eval cargs) [] prevdefs [] [] (reverse cdcls))
														 in classdef_check ((id, sn7.last $ snd cldc, th7.last $ snd cldc, fo7.last $ snd cldc) : prevdefs) ((fs7.last $ snd cldc, fi7.last $ snd cldc, si7.last $ snd cldc, se7.last $ snd cldc) : trace) cdfs

classargmeth_eval [] = []
classargmeth_eval ((CMArg pt pts id) : cargs) = (id, pt, [("_", x) | x <- pts]) : classargmeth_eval cargs
classargmeth_eval (_:cargs) = classargmeth_eval cargs

classargvar_eval [] = []
classargvar_eval ((CPArg pt id):cargs) = (id, pt) : classargvar_eval cargs
classargvar_eval (_:cargs) = classargvar_eval cargs

------------------------------------------------------

-- top levelfunktionen tar ett program (Prog ..) och returnerar allt som händer däri, eller (förhoppningsvis) felmeddelanden då något inte stämmer
prog_eval (Prog p) = classdef_check [] [] (reverse p)

------------------------------------------------------

-- hjälpfunktioner
unfold [] = []
unfold ((_, pt):xs) = pt : unfold xs

fs (x, _, _) = x
sn (_, x, _) = x
th (_, _, x) = x

fs4 (x, _, _, _) = x
sn4 (_, x, _, _) = x
th4 (_, _, x, _) = x
fo4 (_, _, _, x) = x

fs7 (x, _, _, _, _, _, _) = x
sn7 (_, x, _, _, _, _, _) = x
th7 (_, _, x, _, _, _, _) = x
fo7 (_, _, _, x, _, _, _) = x
fi7 (_, _, _, _, x, _, _) = x
si7 (_, _, _, _, _, x, _) = x
se7 (_, _, _, _, _, _, x) = x

fstThree (x, y, z, _) = (x, y, z)
