prime :: Int -> Int
prime nth = last (makePrime [2..] (nth - 1))
    where
        makePrime (x:xs) 0 = [x]
        makePrime (x:xs) n = x : (makePrime ([i | i <- xs, (i `mod` x) /= 0]) (n - 1))
        makePrime [] y = []


main = do
    putStrLn (show (prime 10001))