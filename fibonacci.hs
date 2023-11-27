fibonacci :: [Int]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

fibonacciUpTo :: Int -> [Int]
fibonacciUpTo n = takeWhile (<= n) fibonacci

evenFibs :: Int -> [Int]
evenFibs n = filter even $ fibonacciUpTo n

sumEvenFibonacci :: Int -> Int
sumEvenFibonacci n = sum $ evenFibs n
