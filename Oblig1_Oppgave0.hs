module Oblig1_Oppgave0 where
---------------------------------------------------------------------------------------------------

 -- Oppgave 0
    -- I denne oppgaven skal du skrive funksjoner som jobber med n-gram i grams.hs.
    -- Husk at et n-gram er en streng med lengde n. Typen grams er bare et annet
    -- navnt for String, men undeforstått har lengde n.

-- a) Skriv funksjonen grams som finner alle n-gram i en streng.
    -- Fremgangsmåte: Bruk rekursjon.

    -- Eksempel:
    -- grams 3 "Haskell" == ["Has","ask","ske","kel","ell"]
    -- grams 8 "Haskell" == []

-- b) Skriv funksjonen gramsWithNext som finner alle n-gram i en streng,
    -- forutenom det siste, og gir dem ut sammen med neste tegn i strengen.
    -- Fremgangsmåte: Bruk grams til å få ut listen med n-gram, og bruk zip for å
    -- kobinere med siste char i neste n-gram.

    -- Eksempel:
    -- gramsWithNext 3 "Haskell" == [("Has",'k'),("ask",'e'),("ske",'l'),("kel",'l')]
    -- gramsWithNext 4 "Hei" == []
    -- gramsWithNext 3 "Hei" == []

-- c) Skriv funksjonen som rekombinerer en liste med etterfølgende n-gram tilbake til en streng:

    -- Eksempel:
    -- combineGrams (grams 3 "Haskell") == "Haskell"
    -- combineGrams ["Hei"] = "Hei"
    -- combineGrams [] = []
    -- Fremgangsmåte: Bruk patternmatching og rekursjon.
---------------------------------------------------------------------------------------------------

    -- Oppgave a
    grams :: Int -> [a] -> [[a]]
    grams n xs 
        | n <= length xs = take n xs : grams n (drop 1 xs)
        | otherwise = []

    -- Oppgave b
    gramsWithNext :: Int -> [a] -> [([a], a)]
    gramsWithNext n xs
        | n <= length xs = (take n xs, last (take (n+1) xs)) : (gramsWithNext n (drop 1 xs))  
        | otherwise = []

    -- Oppgave c
    combineGrams :: Eq a => [[a]] -> [a]
    combineGrams [] = []
    combineGrams (x:xs) = if x /= last (x:xs) then head x : combineGrams xs else x



    pick :: [(a,Weight)] -> Weight -> a
    pick weights treshold = pick' weights treshold 0

    pick' :: [(a,Weight)] -> Weight -> Integer -> a
    pick' (x:xs) threshold acc = if (acc + snd x) > threshold
        then fst x
        else pick' xs treshold (acc + snd x)
