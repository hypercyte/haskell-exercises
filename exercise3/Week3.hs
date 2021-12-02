module Week3 where

-- swap an argument
swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

-- return 2 copies of an argument
dup :: a -> (a,a)
dup x = (x,x)

-- safe division (dividing by 0 gives runtime error)
safeDiv :: Int -> Int -> Maybe Int
safeDiv x y
    | y == 0    = Nothing
    | otherwise = Just (div x y)
