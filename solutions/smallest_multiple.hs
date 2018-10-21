primeFactors :: Int -> [Int]
primeFactors n = makePrime ([2..maxi])
    where
        makePrime [] = []
        makePrime (x:xs) = x : makePrime ([i | i <- xs, 
                                               (i `mod` x) /= 0,
                                               (n `mod` i) == 0])
        maxi = makeOdd (ceiling $ sqrt (fromIntegral n))
        makeOdd n 
            | (n `mod` 2) == 0 = n + 1
            | (n `mod` 2) == 1 = n

main = do
    putStrLn (show (last (primeFactors 600851475143)))