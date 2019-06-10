fibs :: [Integer]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

evenFibs :: [Integer]
evenFibs = filter even fibs

evenFibsBelow :: Integer -> [Integer]
evenFibsBelow n = takeWhile (< n) evenFibs

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

fibonacci :: Integer -> Integer
fibonacci 1 = 1
fibonacci 2 = 2
fibonacci n | n >= 2
            = fibonacci(n - 1) + fibonacci(n -2)

sumOfEvenFibonacciNumbers :: Integer -> Integer
sumOfEvenFibonacciNumbers n = sum [fibonacci x | x <- [1..n], x `mod` 2 == 0]

fibonacciBelow :: Integer -> [Integer]
fibonacciBelow n = [fibonacci x | x <- [1..n]]
