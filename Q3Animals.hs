module Q3Animals where

-- | Animal
-- A data type that enumerates the following animals:
--   Bird, Fish, Whale, Octopus, Dog, Human
data Animal
  = Bird | Fish | Whale | Octopus | Dog | Human
    deriving(Eq)

-- | isMammal
-- Returns True if the animal argument is a mammal
-- (i.e., for Whale, Dog, Human), False otherwise
--
-- Examples:
--
-- >>> isMammal Whale
-- True
-- >>> isMammal Octopus
-- False
isMammal :: Animal -> Bool
isMammal a
  |a == Bird  = False
  |a == Fish = False
  |a == Whale = True
  |a == Dog =True
  |a == Human =True
  |a == Octopus = False

-- | numberOfLegs
-- Returns the number of legs on the animal given as argument
--
-- Examples:
-- >>> numberOfLegs Bird
-- 2
-- >>> numberOfLegs Fish
-- 0
-- >>> numberOfLegs Octopus
-- 8
numberOfLegs :: Animal -> Integer
numberOfLegs a
  |a == Bird||Human = 2
  |a == Fish||Whale = 0
  |a == Dog = 4
  |a == Octopus= 8