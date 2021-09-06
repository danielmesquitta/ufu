{-
  Aluno: Daniel Santos de Mesquita
  Data: 06/09

  1. Escreva uma função recursiva conta_digitos que recebe um numero inteiro n e retorna sua
  quantidade de dígitos. Exemplo: se n = 132, conta_digitos n retorna 3.
-}
intToList :: Int -> [Int]
intToList 0 = []
intToList num = intToList (num `div` 10) ++ [num `mod` 10]

listToInt :: [Int] -> Int
listToInt = read . concatMap show

conta_digitos :: Int -> Int
conta_digitos num
  | num < 10 = 1
  | otherwise = 1 + conta_digitos (listToInt (tail (intToList num)))

{-
  2. Escreva uma função recursiva soma_digitos que recebe um numero inteiro n e retorna a
  soma de seus dígitos. Exemplo: se n = 132, soma_digitos n retorna 6.
-}
soma_digitos :: Int -> Int
soma_digitos 0 = 0
soma_digitos x = (x `mod` 10) + soma_digitos (x `div` 10)

{-
  3. Implemente a função recursiva potencia (b, e) :: (Int, Int) ­> Int que eleva a
  base b ao expoente e.
-}
potencia :: (Int, Int) -> Int
potencia (b, e)
  | e == 1 = b
  | even e = potencia (b, div e 2) * potencia (b, div e 2)
  | otherwise = b * potencia (b, e -1)

{-
  4. Implemente a função de Ackermann, a qual é definida por:

  A ( m, n ) = n + 1 se m = 0
  A ( m, n ) = A ( m−1,1 ) se m > 0 e n = 0
  A ( m, n ) = A ( m, n − 1 ) se m > 0 e n > 0
-}
ack :: Int -> Int -> Int
ack 0 n = n + 1
ack m 0 = ack (m - 1) 1
ack 1 n = n + 2
ack 2 n = 2 * n + 3
ack 3 n = 2 ^ (n + 3) - 3
ack m n = ack (m - 1) (ack m (n - 1))
