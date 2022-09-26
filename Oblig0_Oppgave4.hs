module ObligOppgave4 where

    -- Nå skal vi lage høypassfilteret. Igjen tar vi en snarvei: Lavpassfilteret fjerner
    -- den høyfrekvente delen av signalet, så hvis vi subtraherer det filtrerte signalet fra
    -- det orginale, burde vi stå igjen med den høyfrekvente delen som lavpassfilteret
    -- tok bort.
    -- I denne oppgaven skal du skrive en funksjon for høypassfilter som tar det samme
    -- paramereret som lavpass filteret, og subtraherer verdien i lavpass filteret med
    -- den nyeste verdien til signalet (første element i listen).
    -- hpf :: (Fractional a) => Integer -> [a] -> a

    -- regner ut gjennomsnittet av en liste.
    average :: (Fractional a) => [a] -> a
    average a = (sum a) / (fromIntegral $ length a)
    
    -- gjennonsnittet av de n nyeste verdiene.
    lpf :: Fractional a => Int -> [a] -> a
    lpf x l = average (take x l)
    
    --hpf :: (Fractional a) => Integer -> [a] -> a
    hpf :: Fractional a => Int -> [a] -> a
    hpf z l = (lpf z l) - head(l)