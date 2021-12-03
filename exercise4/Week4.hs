module Week4 where

import Data.Char
import Data.List

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

average :: [Double] -> Double
average ds = sum ds / fromIntegral (length ds)
-- sum of all the doubles in the list
-- divided by
-- length of the list (convered to double (thats what fromIntegral does))

palindrome :: String -> Bool
palindrome w = reverse w == w
-- checks if input string is equal when reversed

palindromeX :: String -> Bool
palindromeX w = reverse (capitaliseLetters w) == capitaliseLetters w
-- same thing as palindrome but ignores anything besides letters
-- which allows for palindromes such as "Madam I'm Adam" to be considered
-- true.

frequency :: [Char] -> [(Char, Int)]
frequency cs = [(head g, length g) | g <- group (sort cs)]
-- head g = first character in each string in list
-- length g = length of each string in list
-- g <- group (sort cs) = g is a list of sorted and grouped ver of input
-- like ["1","aa","b","cccc"] if input was "bcacbc1c"




