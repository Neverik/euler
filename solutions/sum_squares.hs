sumOfSquares n = sum (map (^2) [1..n])
squareOfSums n = (sum [1..n]) ^ 2


main = do
    putStrLn (show ((squareOfSums 100) - (sumOfSquares 100)))