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
pairMaybe2 :: Maybe a -> Maybe b -> Maybe (a,b)
pairMaybe2 (Just x) (Just y) = Just (x,y)
pairMaybe2 _ _ = Nothing

-- extracts maybe value. returns default value if 2nd arg is Nothing
-- x is the default value, but ideally should use 'def' instead in the future
-- (makes no difference besides readability in code really)
fromMaybe :: a -> Maybe a -> a
fromMaybe x (Just y) = y
fromMaybe x Nothing  = x

-- return whatever is inside the either
whatever :: Either a a -> a
whatever (Left x)  = x
whatever (Right y) = y

-- Maybe but rewritten as a way for error messages
data Err a = OK a | Error String
    deriving Show

both :: Err a -> Err b -> Err (a,b)
both (OK x) (OK y) = OK (x,y)
both (Error str) (OK y) = Error str
both (OK x) (Error str) = Error str
both (Error strX) (Error strY) = Error (strX ++ " | " ++ strY)
