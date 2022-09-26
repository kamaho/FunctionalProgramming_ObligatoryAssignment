module ObligOppgave0 where

    -- Bruk de innebygde funksjonene sum og length. 
    -- Lag en funksjon som regner gjennomsnittet av liste: 

    average :: (Fractional a) => [a] -> a
    average a = (sum a) / (fromIntegral $ length a)