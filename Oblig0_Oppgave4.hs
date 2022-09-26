module ObligOppgave4 where

    -- I denne oppgaven skal du skrive en funksjon for høypassfilter som tar det samme
    -- paramereret som lavpass filteret, og subtraherer verdien i lavpass filteret med
    -- den nyeste verdien til signalet (første element i listen).

    -- regner ut gjennomsnittet av en liste.
    average :: (Fractional a) => [a] -> a
    average a = (sum a) / (fromIntegral $ length a)
    
    -- gjennonsnittet av de n nyeste verdiene.
    lpf :: Fractional a => Int -> [a] -> a
    lpf x l = average (take x l)
    
    -- subtraherer verdien i lavpass filteret med den nyeste verdien til signalet.
    hpf :: Fractional a => Int -> [a] -> a
    hpf z l = (lpf z l) - head(l)