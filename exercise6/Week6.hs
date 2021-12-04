module Week6 where

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import Geometry

smallTest :: String
smallTest = "\
    \#########\n\
    \#.#...*.#\n\
    \#.#.#####\n\
    \#.....#.#\n\
    \#.###.#.#\n\
    \#...@...#\n\
    \#########\n"

type Maze = (Set Point, Point, Point)

readMaze :: String -> Maze
readMaze s =
    (Set.fromList (map fst pcs),
     head [p | (p, c) <- pcs, c == '@'],
     head [p | (p, c) <- pcs, c == '*'])
  where
     pcs = [(p, c) | (p, c) <- readGrid s, c /= '#']

type Graph a = a -> Set a

neighbours :: Point -> Set Point
neighbours p =
    Set.fromList [plusPoint p (oneStep d) |
        d <- [North, East, South, West]]

moves :: Set Point -> Graph Point
moves open p = Set.intersection open (neighbours p)
