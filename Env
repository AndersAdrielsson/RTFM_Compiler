module Env where

import Common
import AST

cEnv_of_classDef oth = let cEnv_of_classDef_ env = case env of
							Classdef i cal cdl	-> (i, (Classdef i cal cdl)) 
					   in case oth of
	Prog cdl -> map cEnv_of_classDef_ cdl
