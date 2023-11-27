isPalindrome :: Int -> Bool
isPalindrome n = let str = show n in str == reverse str

allNumbers :: [Int]
allNumbers = [x * y | x <-[100..999], y <-[100..999]]

allPalindromes :: [Int]
allPalindromes = filter isPalindrome allNumbers

solve :: Int
solve = maximum allPalindromes
