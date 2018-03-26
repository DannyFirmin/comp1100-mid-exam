module Q4Sum where

import Prelude hiding (sum)

-- | sum
-- Returns the sum of the first n natural numbers for integer argument n > 0, and zero otherwise
--
-- Examples:
--
-- >>> sum 0
-- 0
-- >>> sum 1
-- 1
-- >>> sum 10
-- 55
sum :: Int -> Int
sum 0 = 0
sum n = n + sum (n-1)

fact :: Int -> Int
fact 1 = 1
fact n = n * fact (n-1)

oddsum :: Int -> Int
oddsum n
  |n <= 0 = 0
  |n `mod` 2==1 =n+oddsum(n-1)
  |otherwise = oddsum(n-1)

--sum odd
--Example
--->[]
--0
--->[0]
--0
--->[2,4]
--0
--->[5]
--5
--->[1,2,3,4,5]
--[9]
-- sumodd :: List -> Integer
-- sumodd n
--   |n<=0 =0
--   |n `mod`2 ==1 n+ sumodd(n-1)
--   |otherwise = sumodd(n-1)



sum35 :: Int -> Int
sum35 0 = 0
sum35 n
  |n `mod` 3 == 0 || n `mod` 5 == 0 = n+sum35(n-1)
  |otherwise = sum35(n-1)

primeSum :: Int -> Int
primeSum n
  | n == 1 = 0
  | isPrime n = n + primeSum(n-1)
  | otherwise = primeSum(n-1)

isPrime :: Int -> Bool
isPrime number = go number (number-1)
  where
    go n a
      | a == 1 = True
      | n `mod` a == 0 = False
      | otherwise = go n (a-1)

-- multiply two Integer only using add
multiply :: Integer -> Integer -> Integer
multiply 0 _ = 0
multiply _ 0 = 0
multiply m n = m + multiply m (n-1)




