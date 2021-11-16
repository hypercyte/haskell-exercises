module Week2 where

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
-- Y could be equal to X or Z but NOT BOTH OF THEM. 
-- Y could also not be equal to either X and Z at all.