module Model (TextModel
             ,createModel
             ,nextDistribution) where
import Control.Monad
import Data.List
import Control.Arrow

import qualified Data.Map as Map
import Data.Map (Map)

import NGram

-- The type for our Markov process text model.
-- type NGram = String
-- type Weight = Integer
type TextModel = Map NGram (Map Char Weight , Weight)

-- The empty model with no n-grams.
emptyModel :: TextModel
emptyModel = Map.empty

-- Update a model with a new n-gram followed by a character.

increaseWeight :: NGram -> Char -> TextModel -> TextModel
increaseWeight word nextChar model = Map.insertWith (\(n1,w1)(n2,w2)-> (Map.insertWith (+) nextChar w1 n2, w2 + w1)) word (Map.singleton nextChar 1, 1) model

-- The distribution of next n-grams after a given one.
nextDistribution :: TextModel -> NGram -> Maybe ([(NGram, Weight)],Weight)
nextDistribution model current = _

-- Create an n-gram model from a string.
createModel :: Integer -> String -> TextModel
createModel n = _