evenlyDivisible :: Integer -> Integer -> Bool
evenlyDivisible n m = sum ([1 | x <- [1..m], n `mod` x == 0]) == m

smallestEvenlyDivisible :: Integer -> Integer
smallestEvenlyDivisible n = head [x | x <- [1..], evenlyDivisible x n]
