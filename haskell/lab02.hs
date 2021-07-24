{-# OPTIONS_GHC -Wno-deferred-type-errors #-}

rectangleArea :: Floating a => a -> a -> a
rectangleArea b h = b * h

squareArea :: Floating a => a -> a -> a
squareArea l = l ** 2

triangleArea :: Floating a => a -> a -> a
triangleArea b h = b * h / 2

trapezeArea :: Floating a => a -> a -> a -> a
trapezeArea a b h = ((a + b) / 2) * h

circleArea :: Floating a => a -> a
circleArea r = pi * (r ^ 2)

circleBorderArea :: Floating a => a -> a -> a
circleBorderArea ra rb = (pi * (ra ^ 2)) - pi * (rb ^ 2)

cubeVolume :: Floating a => a -> a
cubeVolume l = l ^ 3

parallelepipedVolume :: Floating a => a -> a -> a -> a
parallelepipedVolume a b c = a * b * c

pyramidVolume :: Floating a => a -> a -> a -> a
pyramidVolume la lb h = ((la * lb) * h) / 3

sphereVolume :: Floating a => a -> a
sphereVolume r = 4 / 3 * (pi * (r ** 3))

hypotenuse :: Floating a => a -> a -> a
hypotenuse a b = sqrt ((a ^ 2) + (b ^ 2))

distanceFromOrigin :: Floating a => a -> a -> a
distanceFromOrigin x y = sqrt ((x + y) / 2)

distanceBetween2Points :: Floating a => a -> a -> a -> a -> a
distanceBetween2Points xa ya xb yb = sqrt (((xa + ya) / 2) + ((xb + yb) / 2))

cube :: Floating a => a -> a
cube n = n ** 3

square :: Floating a => a -> a
square n = n ** 2

fourthPower :: Floating a => a -> a
fourthPower n = square (square n)

secondsToHours :: Floating a => a -> a
secondsToHours s = s / 60 / 60

secondsToMinutes :: Floating a => a -> a
secondsToMinutes s = s / 60

fahrenheitToCelsius :: Floating a => a -> a
fahrenheitToCelsius f = (f - 32) * 5 / 9

kelvinToCelsius :: Floating a => a -> a
kelvinToCelsius k = k - 273.15

fahrenheitToKelvin :: Floating a => a -> a
fahrenheitToKelvin f = (f - 32) * 5 / 9 + 273.15

kmPerHourToMetersPerSecond :: Floating a => a -> a
kmPerHourToMetersPerSecond k = k / 3.6

logicValues1 :: Bool -> Bool -> Bool
logicValues1 p q = (p || q) && not(p && q)

logicValues2 :: Bool -> Bool -> Bool -> Bool
logicValues2 p q r = (p || q) && r

logicValues3 :: Bool -> Bool -> Bool -> Bool
logicValues3 p q r = (p && q) || not(p && r)

logicValues4 :: Bool -> Bool -> Bool -> Bool -> Bool
logicValues4 p q r s = p || (q && r) || not s

logicValues5 :: Bool -> Bool -> Bool -> Bool -> Bool
logicValues5 p q r s = not(p || q) && (r || s) && not r
