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

-- just result: only if BOTH args are just
-- nothing result: if EITHER arg is nothing
pairMaybe :: Maybe a -> Maybe b -> Maybe (a,b)
pairMaybe Nothing Nothing = Nothing
pairMaybe (Just x) Nothing = Nothing
pairMaybe Nothing (Just y) = Nothing
pairMaybe (Just x) (Just y) = Just (x,y)

-- same thing but since theres 3 nothings it could be similied to this!
PairMaybe2 :: Maybe a -> Maybe b -> Maybe (a,b)
pairMaybe2 (Just x) (Just y) = Just (x,y)
pairMaybe2 _ _ = Nothing
