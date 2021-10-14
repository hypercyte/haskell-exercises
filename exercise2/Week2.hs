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
