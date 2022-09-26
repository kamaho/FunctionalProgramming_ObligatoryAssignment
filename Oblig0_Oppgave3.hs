module ObligOppgave3 where

    -- Dermed blir oppgaven å skrive en funksjon som tar
    -- et heltall n og en liste med verdier og returerer 
    -- gjennonsnittet av de n nyeste verdiene.
    -- lpf :: (Fractional a) => Integer -> [a] -> a
    -- Fremgangsmåte: Hent ut de første elementene i listen og 
    -- bruk gjenomsnittsfunksjonen du skrev i oppgave 0.

    -- regner ut gjennomsnittet av en liste.
    average :: (Fractional a) => [a] -> a
    average a = (sum a) / (fromIntegral $ length a)
    
    -- gjennonsnittet av de n nyeste verdiene.
    lpf :: Fractional a => Int -> [a] -> a
    lpf n l = average (take n l)
    