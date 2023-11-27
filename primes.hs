prime :: Int-> Bool
prime n
  | n <= 1 = False   -- 1 and numbers less than or equal to 1 are not prime
  | otherwise = all (\x -> n `mod` x /= 0) [2..isqrt n]
  where
    isqrt = floor . sqrt . fromIntegral

nthPrime :: Int -> Int
nthPrime n = filter prime [2..] !! max 0 (n - 1)

