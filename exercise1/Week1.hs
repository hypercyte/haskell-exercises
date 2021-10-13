module Week1 where

size :: Integer
size = 12+13

-- The square of an integer.
square :: Integer -> Integer
square n = n*n

-- Triple an integer.
triple :: Integer -> Integer
triple n = 3*n

-- Square of the tripled integer.
squareOfTriple :: Integer -> Integer
squareOfTriple n = square (triple n)

-- EXERCISES
-- START
-- BELOW

-- Constant for number seconds in a week.
secondsInWeek :: Integer
secondsInWeek = 7*24*60*60 -- 7 days, 24 hrs/day, 60 min/hr, 60 sec/min

-- Floating point constant for the golden ratio (φ).
phi :: Double
phi = (1 + sqrt 5) / 2
-- φ^2      = 2.618...
-- φ^2 - 1  = 1.618...
-- 1/φ      = 0.618...
-- 1/φ - 1  = 1.618...

-- 1 mile in kilometers
mileAsKm :: Double
mileAsKm = 1.609344

-- Conversion for miles to kilometers
milesToKm :: Double -> Double
milesToKm x = mileAsKm * x

-- Conversion for kilometers to miles
kmToMiles :: Double -> Double
kmToMiles x = x / mileAsKm

-- Triple of squared value
tripleOfSquare :: Integer -> Integer
tripleOfSquare n = triple (square n)

-- Square of square (n^4 basically)
squareOfSquare :: Integer -> Integer
squareOfSquare n = square (square n)

-- Factorial
factorial :: Integer -> Integer
factorial n = product [1 .. n]

-- Multiple input
norm :: Double -> Double -> Double
norm x y = sqrt (x^2 + y^2) -- x*x and y*y works too instead of using ^2
