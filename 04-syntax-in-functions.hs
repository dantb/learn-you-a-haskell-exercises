-- This function should print a single digit number as English text, or "unknown" if it's out of the range 0-9
englishDigit :: Int -> String
englishDigit x
  | x >= 0 && x < 10  = digits !! x
  | otherwise         = "unknown"
  where digits = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

-- given a tuple, divide fst by snd, using pattern matching.
-- it should return undefined for division by zero
divTuple :: (Eq a, Fractional a) => (a, a) -> a
divTuple (x, y)
  | y == 0    = undefined
  | otherwise = x / y

-- if the first three numbers in a list are all zero, return True
threeZeroList :: [Int] -> Bool
threeZeroList (x:y:z:xs) = x == 0 && y == 0 && z == 0
threeZeroList _          = False
