module ObligOppgave1 where

    -- Lag en funksjon teller hvor mange 0-punktskryssninger det er i en liste.
    -- zeroCrossings :: (Num a, Ord a) => [a] -> Integer
    -- En 0-punktskryssing er to etterfølgende elementer i listen, x og y, slik at x er
    -- større enn 0 og y er mindre eller lik null, eller motsatt at x er mindre enn 0 og y
    -- er større eller lik 0.

    -- zeroCrossings :: (Num a, Ord a) => [a] -> Integer
    -- zeroCrossings (x:xs) = x > 0 && head xs <= 0 