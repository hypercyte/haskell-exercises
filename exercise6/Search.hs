module Search where

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map

unionAll :: Ord a => (a -> Set a) -> Set a -> Set a
unionAll f s = Set.unions (map f (Set.elems s))

expand :: Ord a => (a -> Set a) -> Set a -> Set a
expand f s = Set.union s (unionAll f s)
