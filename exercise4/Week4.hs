module Week4 where

import Data.Char

tripleAll :: [Int] -> [Int]
tripleAll ns = [3*n | n <- ns]

squareAll :: [Int] -> [Int]
squareAll ns = [n*n | n <- ns]

capitalise :: String -> String
capitalise str = [toUpper c | c <- str]
-- explanation:
-- type String = [Char]
-- str is already a List of type Char
-- toUpper :: Char -> Char
-- therefore capitalising each character in the string and returning
-- as a list of Strings

capitaliseLetters :: String -> String
capitaliseLetters str = [toUpper c | c <- str, isAlpha c]
-- only returns caps with letters. numbers, stymbols not included but can be in input

backwards :: String -> String
backwards str = [ c | c <- (reverse str)]

backwardsAlt :: String -> String
backwardsAlt str = reverse str
-- reverses order of CHARACTERS

backwords :: String -> String
backwords str = unwords (reverse (words str))
-- reverses order of the WORDS

backsdrow :: String -> String
backsdrow str = unwords [reverse w | w <- words str]

divisors :: Int -> [Int]
divisors n = [ d | d <- [1..n], n `mod` d == 0]
-- explanation
-- d is assigned list of ints from 1 to n
-- then we do the input n and mod by each number in the list of d
-- every time it's 0 means its divisible by n



