primeFactors :: Int -> [Int]
primeFactors n
  | n <= 1 = []
  | otherwise = factor : primeFactors (n `div` factor)
  where factor = head [x | x <- [2 ..], n `mod` x == 0]
