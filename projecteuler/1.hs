multiplesOfThreeAndNotFive :: Integer -> [Integer]
multiplesOfThreeAndNotFive below = [x | x <- [1..below - 1], x `mod` 3 == 0, x `mod` 5 /= 0]

multiplesOfFiveAndNotThree :: Integer -> [Integer]
multiplesOfFiveAndNotThree below = [x | x <- [1..below - 1], x `mod` 5 == 0, x `mod` 3 /= 0]

multiplesOfFiveAndThree :: Integer -> [Integer]
multiplesOfFiveAndThree below = [x | x <- [1..below - 1], x `mod` 5 == 0, x `mod` 3 == 0]



sumOfMultiplesOfThreeAndFive :: Integer -> Integer
sumOfMultiplesOfThreeAndFive below = sum (
    (multiplesOfThreeAndNotFive below) ++
    (multiplesOfFiveAndNotThree below) ++
    multiplesOfFiveAndThree below)
