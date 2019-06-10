square :: Int -> Int
square a = a * a

differenceOfSquares :: Int -> Int
differenceOfSquares n = square (sum [1..n]) - sum (map square [1..n])
