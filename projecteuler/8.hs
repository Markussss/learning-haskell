specialPythagoreanTriplet below = [
        (a * b * c) |
        a <- [1..below],
        b <- [a..below],
        c <- [b..below],
        a < b,
        b < c,
        (a ^ 2) + (b ^ 2) == (c ^ 2),
        (a + b + c) == 1000
    ]
