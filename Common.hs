module Common where

tab 		= "\t"
tabc		= '\t'
nl			= "\n"
nlc 		= '\n'
enl		= "\\n" 
op 		= " {" ++ nl
cl 			= "}"
ec   	 	= "\""  
ecit 		= "\'"
e_c   	= "#>"
c_e   	= "<#"

adjust 0 = tab
adjust n = (++) tab (adjust $ n - 1)

map3 f1 f2 = fmap $ \i -> (f1 i, f2 i)
map2 f a b = [f i j | i <- a, j <- b]

assoc key [] = error ("lookup of " ++ key ++ " failed!")
assoc key ((a, b):l) = if key == a then b else assoc key l

myass = assoc

mymap _ [] = []
mymap m (e:l) = (m e) : mymap m l

myconcat _ [] = []
myconcat s ("":l) = myconcat s l
myconcat s (e:l) = e ++ s ++ myconcat s l

string_concat :: String -> [String] -> String
string_concat _ [] = ""
string_concat _ (s:[]) = s
string_concat sep (s:ss) = s ++ sep ++ string_concat sep ss

string_of_time (Usec i) = show i ++ " us"
string_of_time (Msec i) = show i ++ " ms"
string_of_time (Sec i) = show i ++ " s"
string_of_time _ = "infinite"

data Time = Usec Int | Msec Int | Sec Int | Infinite
	deriving (Eq, Show)
	
max_int = 2^15
	
usec_of_time t = let f = ((*) 1000) in case t of
	Usec i	-> i
	Msec i	-> f i
	Sec i		-> f.f $ i
	Infinite	-> max_int
