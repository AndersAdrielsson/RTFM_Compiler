module Main where

import HappyParser
import AlexToken
import AST
import Common
import CoreGen2
import VarEnv10

main = do
	compile "lost.txt"	-- local file to compile
	
compile path = do
	p <- readFile path
	let output = c_of_Prog.parseExpr $ p
	let check = prog_eval.parseExpr $ p
	return check >>= print >> return output >>= writeFile "output.txt"
