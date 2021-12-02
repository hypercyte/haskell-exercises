module Week2 where

import Data.Char

-- max of three values
maxThree :: Int -> Int -> Int -> Int
maxThree x y z
    | x >= y && x >= z  = x
    | y >= x && y >= z  = y
    | otherwise         = z

-- above can be simplified to...
maxThreeSimplified :: Int -> Int -> Int -> Int
maxThreeSimplified x y z
    | x >= y && x >= z  = x
    | y >= z  = y
    | otherwise         = z
-- ...as it's evaluated from top to bottom



-- EXERCISES START BELOW


-- Three different values? Boolean output, 3 int input
threeDifferent :: Int -> Int -> Int -> Bool
threeDifferent x y z = 
    not (x == y) && 
    not (x == z) && 
    not (y == z)
-- There is no != operation so I had to use "not (evaluation)"

-- Task is to figure out what this does without using interpreter.
mystery :: Int -> Int -> Int -> Bool
mystery x y z = not (x == y && y == z)
-- My answer:
-- Takes in 3 Integers as input
-- Returns boolean
--
-- x != y
-- AND
-- y != z
-- BUT
-- x could = z
--
-- Therefore the 2nd input value must be different from
-- the first and third input value.

-- After testing: 
-- I was slightly wrong: This just meant that
-- all 3 numbers be the same in order for True response.


-- Rewrite mystery but without use of "not"
mysternt :: Int -> Int -> Int -> Bool
mysternt x y z
    | (x == y && y == z) = False
    | otherwise          = True

-- Question 4:
--
-- Why does 0.1 + 1.1 = 1.20000000000002?
--
-- Answer:
-- Because 0.1 doesnt exist in the 64-bit floating point world. (Michael O. Church, 2014)^1
-- Floating point only represents dyadic rationals, meaning
-- numbers with denominators with powers of 2.
-- Therefore 1/10 (0.1) is converted to a dyadic number which
-- becomes a number *very close* to 0.1 with a very tiny error.

-- Floating point numbers are represented as binary fractions of limited precision. Just as
-- you can’t represent one third as an exact decimal fraction, binary fractions and cannot
-- represent decimal fractions exactly. The closest approximation is chosen, but it is off by
-- a tiny amount. Sometimes these errors cancel out, but often they accumulate, resulting
-- in the tiny difference between the two numbers here.
-- You would get the same effect in Java or C. The moral of the story is that you should be
-- very careful about comparing floating point numbers for equality, in any language

-- Character to Number conversion
charToNum :: Char -> Int
charToNum x
    | isDigit x = (ord x) - 48
    | otherwise = 0

-- Character to Number solution (my answr also correct, but this one avoids hardcoded values)
charToNumSolution :: Char -> Int
charToNumSolution c
    | isDigit c = ord c - ord '0'
    | otherwise = 0


-- References
-- 1. Quora, Michael O. Church, 2014 https://qr.ae/pGmDhE
