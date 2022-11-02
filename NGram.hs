module NGram (NGram,Weight
             ,grams
             ,gramsWithNext
             ,combineGrams
             ,updateGram) where
import Control.Monad
import Data.List
import Control.Arrow

import qualified Data.Map as Map
import Data.Map (Map)

-- Rename types to clarify some type signatures later
type NGram = String
type Weight = Integer

-- Produce all n-grams contained in a given string
grams :: Integer -> [a] -> [[a]]
grams n xs 
    | (fromIntegral n) <= length xs = take (fromIntegral n) xs : grams (fromIntegral n) (drop 1 xs)
    | otherwise = []

-- Produce all n-grams contained in a given string, paired
-- with the subsequent character
gramsWithNext :: Integer -> String -> [(NGram, Char)]
gramsWithNext n xs  | (fromIntegral n) <= length xs = (take (fromIntegral n) xs, last (take ((fromIntegral n)+1) xs)) : (gramsWithNext (fromIntegral n) (drop 1 xs))  
                    | otherwise = []

-- Recombine a list of n-grams to a string
combineGrams :: Eq a => [[a]] -> [a]
combineGrams [] = []
combineGrams (x:xs) = if x /= last (x:xs) then head x : combineGrams xs else x

-- Update an n-gram by adding a character to the end
-- and removing the first character.
updateGram :: NGram -> Char -> NGram
updateGram g c = tail g ++ [c]

