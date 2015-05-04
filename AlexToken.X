{
{-# OPTIONS_GHC -w #-}
module AlexToken (Token(..),scanTokens) where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
$eol   = [\n]

tokens :-

  $eol								;
  $white+							;
  $digit+							{ \s -> TokenIntval (read s) }
  "=="								{ \s -> TokenEq }
  "!="								{ \s -> TokenNotEq }
  ">="								{ \s -> TokenMoreThanEq }
  "<="								{ \s -> TokenLessThanEq }
  "&&"								{ \s -> TokenAnd }
  "||"									{ \s -> TokenOr }
  \!									{ \s -> TokenNot }
  [\+]								{ \s -> TokenAdd }
  [\-]									{ \s -> TokenSub }
  [\*]								{ \s -> TokenMul }
  [\/]								{ \s -> TokenDiv }
  [\%]							{ \s -> TokenMod }
  \;								{ \s -> TokenSC }
  \<								{ \s -> TokenLT }
  \>								{ \s -> TokenGT }
  \(								{ \s -> TokenLB }
  \)								{ \s -> TokenRB }
  \{								{ \s -> TokenLCB }
  \}								{ \s -> TokenRCB }
  \,								{ \s -> TokenComma }
  \.								{ \s -> TokenDot }
  ":="								{ \s -> TokenAssign }
  "us"								{ \s -> TokenUsec }
  "ms"								{ \s -> TokenMsec }
  "s"								{ \s -> TokenSec }
  RT_sleep							{ \s -> TokenRT_Sleep }
  RT_printf							{ \s -> TokenRT_Printf }
  RT_rand							{ \s -> TokenRT_Rand }
  RT_getc							{ \s -> TokenRT_Getc }
  RT_putc							{ \s -> TokenRT_Putc }
  int								{ \s -> TokenInt }
  char								{ \s -> TokenChar }
  bool								{ \s -> TokenBool }
  byte								{ \s -> TokenByte }
  true								{ \s -> TokenBoolval True }
  false								{ \s -> TokenBoolval False }
  void								{ \s -> TokenVoid }
  Task								{ \s -> TokenTask }
  ISR								{ \s -> TokenISR }
  pend								{ \s -> TokenPend }
  async								{ \s -> TokenAsync }
  after								{ \s -> TokenAfter }
  before							{ \s -> TokenBefore }
  Reset								{ \s -> TokenReset }
  Idle								{ \s -> TokenIdle }
  if								{ \s -> TokenIf }
  else								{ \s -> TokenElse }
  for								{ \s -> TokenFor }
  class								{ \s -> TokenClass }
  return							{ \s -> TokenReturn }
  \'$alpha\'						{ \s -> TokenCharval (read s) }
  \"[$alpha $digit $white \_ \' \% \\ \/ \- \= \) \( \& \# \! \: \; \+ \* \~ \< \> \, \. \= \] \[ \{ \}]*\"						{ \s -> TokenStrval s }
  $alpha [$alpha $digit \_ \']*		{ \s -> TokenID s }

{

data Token = TokenIntval Int
           | TokenID String
		   | TokenArrow
		   | TokenEq
		   | TokenNotEq
		   | TokenAdd
		   | TokenSub
		   | TokenMul
		   | TokenDiv
		   | TokenMod
		   | TokenSC
		   | TokenLT
		   | TokenGT
		   | TokenMoreThanEq
		   | TokenLessThanEq
		   | TokenAnd
		   | TokenOr
		   | TokenNot
           | TokenLB
           | TokenRB
		   | TokenLCB
		   | TokenRCB
		   | TokenComma
		   | TokenDot
		   | TokenAssign
		   | TokenUsec
		   | TokenMsec
		   | TokenSec
		   | TokenInt
		   | TokenByte
		   | TokenChar
		   | TokenCharval Char
		   | TokenStrval String
		   | TokenBool
		   | TokenBoolval Bool
		   | TokenVoid
		   | TokenTask
		   | TokenISR
		   | TokenPend
		   | TokenAsync
		   | TokenAfter
		   | TokenBefore
		   | TokenReset
		   | TokenIdle
		   | TokenIf
		   | TokenElse
		   | TokenFor
		   | TokenClass
		   | TokenReturn
		   | TokenRT_Sleep
		   | TokenRT_Printf
		   | TokenRT_Rand
		   | TokenRT_Getc
		   | TokenRT_Putc
		   
           deriving (Eq,Show)

scanTokens = alexScanTokens

}
