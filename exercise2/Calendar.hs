module Calendar where

-- leap year (use mod 4)
-- if a century year (2000, 2100 etc.) only a leap year if div by 4

isLeapYear :: Int -> Bool
isLeapYear y
    -- if year is divisible by 4 and NOT divisible by 100,
    -- it is a leap year
    | (y `mod` 4 == 0) && (y `mod` 100 /= 0) = True
    -- if year IS divisible by 4 AND divisible by 400,
    -- it is a leap year (centuries only)
    | (y `mod` 400 == 0)                     = True
    -- all other years are not leap years
    | otherwise                              = False

daysInYear :: Int -> Int
daysInYear y
    | isLeapYear y  == True = 366
    | otherwise             = 365

data Month =
    January | February | March | April | May | June | July |
    August | September | October | November | December
    deriving (Show)

daysInMonth :: Month -> Int -> Int
daysInMonth January y   = 31
daysInMonth February y
    | isLeapYear y      = 29
    | otherwise         = 28
daysInMonth March y     = 31
daysInMonth April y     = 30
daysInMonth May y       = 31
daysInMonth June y      = 30
daysInMonth July y      = 31
daysInMonth August y    = 31
daysInMonth September y = 30
daysInMonth October y   = 31
daysInMonth November y  = 30
daysInMonth December y  = 31

dIMShort :: Month -> Int -> Int
dIMShort February  y
    | isLeapYear   y    = 29
    | otherwise         = 28
dIMShort April     y    = 30
dIMShort June      y    = 30
dIMShort September y    = 30
dIMShort November  y    = 30
dIMShort m         y    = 31
