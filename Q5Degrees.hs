module Q5Degrees where

-- The relationship between temperature c in degrees Celsius and temperature f in degrees Q5Degrees
-- is defined by the function
--   c = (f - 32) * 5 / 9
-- Data types to represent temperature values in Q5Degrees and Celsius
data Fahrenheit =
  F Double
  deriving (Show)

data Celsius =
  C Double
  deriving (Show)

-- | convert
-- Takes a value representing temperature in degrees Fahrenheit and converts it to degrees Celsius
--
-- Examples:
--
-- >>> convert (F 50)
-- C 10.0
-- >>> convert (F 14)
-- C (-10.0)
convert = undefined -- TODO

-- | equals
-- Takes values representing temperature in degrees Celsius and degrees Fahrenheit and returns True
-- if they are equal (to within 0.5 degrees Fahrenheit), and False otherwise
--
-- Examples:
--
-- >>> equals (F 34) (C 1)
-- True
-- >>> equals (F 33) (C 0)
-- False
-- >>> equals (F 32) (C 0)
-- True
equals = undefined -- TODO
