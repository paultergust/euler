import Data.List (tails)
import Data.Char (digitToInt)

subArrays :: [Int] -> Int-> [[Int]]
subArrays nums buffer = takeWhile (\list -> length list == buffer) (map (take buffer) (tails nums))
