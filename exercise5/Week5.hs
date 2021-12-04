module Week5 where

import Data.Char
import Data.List

-- using map instead of the other way
ordAll :: String -> [Int]
ordAll cs = map ord cs

-- this was the other way
ordAllOld :: String -> [Int]
ordAllOld cs = [ord c | c <- cs]

doubleAll :: [Int] -> [Int]
doubleAll ns = map double ns
    where double x = 2*x

-- filter simplies functions from before even more
-- refer to exercise4 for letters
pickEven ns = filter even ns

letters cs = filter isAlpha cs

doubleAlll :: [Int] -> [Int]
doubleAlll ns = map double ns
    where double x = 2*x
--instead of writing this^
-- we can write this v
doubleAll2 :: [Int] -> [Int]
doubleAll2 ns = map (\n -> 2*n) ns



-- abbreviatging even further
ordAllS = map ord

lettersS = filter isAlpha



-- sum, product, and, or, concat
mysum xs = foldr (+) 0 xs
myproduct xs = foldr (*) 1 xs
myand xs = foldr (&&) True xs
myor xs = foldr (||) False xs
myconcat xs = foldr (++) [] xs
-- folding right (see notes05.pdf)


-- EXERCISES START HERE

-- task1
capitalize :: String -> String
capitalize = map toUpper

capitals :: String -> String
capitals = filter isUpper

capitaliseLetters :: String -> String
capitaliseLetters str = map toUpper $ filter isLetter str
-- instead of $ using brackets would work like usual 
-- map toUpper (filter isLetter str)


--task2
--expressions for finding stuff
-- 2a) map (^2) [1..20]
-- 2b) takeWhile (<500) $ map (^2) [1..500]
-- 2c) takeWhile (<1000) $ dropWhile (<=500) $ map (^2) [1..]


count :: Eq a => a -> [a] -> Int
count x ys = length [y | y <- ys, y == x]
-- counts how many x there is in a list of y

count2 ::Eq a => a -> [a] -> Int
count2 x = length . filter (==x)
