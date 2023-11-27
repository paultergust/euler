sumSquares :: Int -> Int
sumSquares n 
  | n == 1 = 1
  | otherwise = (n * n) + sumSquares (n-1)

squareSums :: Int -> Int
squareSums n = let res = sum [1..n] in res ^ 2
