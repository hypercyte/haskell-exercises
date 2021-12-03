module Week4 where

import Data.Char

tripleAll :: [Int] -> [Int]
tripleAll ns = [3*n | n <- ns]

squareAll :: [Int] -> [Int]
squareAll ns = [n*n | n <- ns]

capitalise :: String -> String
capitalise str = [toUpper c | c <- str]
-- explanation:
-- str is already a List of type Char
-- toUpper :: Char -> Char
-- therefore capitalising each character in the string and returning
-- as a list of Strings
