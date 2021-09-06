{-
  Aluno: Daniel Santos de Mesquita
  Data: 27/07

 1) a)
    26 → pois quadrado multiplica 5 por 5, retornando 25
    para inc que soma 1 com 25.

    b)
    36 → pois inc adiciona 1 a 5 retornando 6 a função
    quadradro que eleva 6 ao quadrado e retorna 36.

    c)
    Erro de tipagem → pois inc retorna inteiros e
    media recebe floats.

  2)
-}
quadrado :: Floating a => a -> a
quadrado x = x ** 2

quartaPotencia :: Floating a => a -> a
quartaPotencia x = quadrado (quadrado x)

{-
  3)
-}
segundosParaHoras :: Floating a => a -> a
segundosParaHoras s = s / 60 / 60

{-
  4)
-}
segundosParaMinutos :: Floating a => a -> a
segundosParaMinutos s = (segundosParaHoras s) * 60

{-
  5)
-}
valoresLogicos :: Bool -> Bool -> Bool
valoresLogicos p q = (p || q) && not (p && q)
