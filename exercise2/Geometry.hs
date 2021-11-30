module Geometry where

data Direction
    = North | East | South | West
    deriving (Show)

turnLeft :: Direction -> Direction
turnLeft d = case d of
    North -> West
    West -> South
    South -> East
    East -> North
-- solution does it like this: (both work)
-- turnLeft North = West
-- turnLeft South = East
-- turnLeft East = North
-- turnLeft West = South

turnRight :: Direction -> Direction
turnRight d = case d of
    North -> East
    East -> South
    South -> West
    West -> North
