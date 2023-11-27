sumMultiples :: Int -> Int -> Int -> Int
sumMultiples x y n = sum $ filter (\a -> a `mod` x == 0 || a `mod` y == 0) [0..n]
