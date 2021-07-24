quadrado :: Floating a => a -> a
quadrado x = x ** 2

quartaPotencia :: Floating a => a -> a
quartaPotencia x = quadrado (quadrado x)
