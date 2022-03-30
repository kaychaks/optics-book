module Traversals where

import Control.Applicative
import Control.Lens

traversalActions = do
  a <- print $ sequenceAOf _1 ((Nothing, "RoseBud") :: (Maybe Char, String))
  b <- print $ sequenceAOf (traversed . _1) [("ab", 1), ("cd", 2)]
  c <- print $ sequenceAOf traversed [ZipList [1, 2], ZipList [3, 4]]
  return ""
