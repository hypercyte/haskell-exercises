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

