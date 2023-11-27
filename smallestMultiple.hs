isDivisibleByAll :: Int-> [Int] -> Bool
isDivisibleByAll _ [] = True  -- An empty list is vacuously true
isDivisibleByAll x (y:ys) = x `mod` y == 0 && isDivisibleByAll x ys

iterDivision :: Int -> [Int] -> Int
iterDivision num list 
  | isDivisibleByAll num list = num
  | otherwise = iterDivision (num + 1) list

