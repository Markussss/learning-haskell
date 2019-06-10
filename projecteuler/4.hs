palindrome :: Integer -> Bool
palindrome n = reverse (show n) == (show n)

largestPalindromeProduct :: Integer
largestPalindromeProduct = maximum [x * y | x <- [100..999], y <- [100..999], palindrome (x * y)]
