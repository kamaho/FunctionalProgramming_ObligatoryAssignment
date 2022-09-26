module ObligOppgave2 where

    -- Lag en funskjon som utvider en endelig liste til en uendelig liste ved å repetere
    -- det siste element ad infinitum. Hvis inputlisten er tom skal funksjonen produsere
    -- en uendelig liste med 0-er.

    extend :: Num a => [a] -> [a]
    extend l =  if null l then repeat 0 
                else let x  = last l in x : extend l