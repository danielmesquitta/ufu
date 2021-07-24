{-
  START HASKELL
  $ ghci

  READ FILE
  $ :l <fileNameWithoutExtension>

  COMPILE FILE
  $ :r
-}

-- 3)
multiplyBy2 :: Num a => a -> a
multiplyBy2 num = num * 2

-- 4)
multiplyBy4 :: Num a => a -> a
multiplyBy4 num = multiplyBy2 (multiplyBy2 num)

-- 5)
sum2 :: Num a => a -> a -> a
sum2 a b = a + b

-- 6)
sum4 :: Num a => a -> a -> a -> a -> a
sum4 a b c d = a + b + c + d

-- 7) Result is same as sum4 (it takes the result from sum2 inside the parentheses and uses it as a function param)
unknown :: Num a => a -> a -> a -> a -> a
unknown x y z w = sum2 (sum2 x y) (sum2 z w)

-- 8)
hypotenuse :: Floating a => a -> a -> a
hypotenuse a b = sqrt ((a ^ 2) + (b ^ 2))
