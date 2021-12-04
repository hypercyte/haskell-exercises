module Week6Exercises where

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map

-- Use Set to implement a fucntion
unique :: Ord a => [a] -> [a]
unique xs = Set.elems $ Set.fromList xs

-- use Map to implement a function
frequencyMap :: Ord a => [a] -> Map a Int
frequencyMap xs =
    Map.unionsWith (+) [Map.singleton x 1 | x <- xs]
