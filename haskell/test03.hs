{-
06/08/2021
Aluno: Daniel Santos de Mesquita

1 - A função definida a seguir não está correta.
  saudacao :: String -> String
  saudacao "Joana" = saudacaoLegal ++ "Joana"
  saudacao"Fernando"= saudacaoLegal ++ "Fernando"
  saudacao nome = saudacaoInfeliz ++ nome
    where
      saudacaoLegal = "Ola! Que bom encontrar voce,"
      saudacaoInfeliz= "Nao pensei que ainda estivesse vivo, "

  Reescreva a função corrigindo-a com o uso de expressões guardas.
-}
saudacao :: String -> String
saudacao nome
  | nome == "Joana" = saudacaoLegal ++ nome
  | nome == "Fernando" = saudacaoLegal ++ nome
  | otherwise = saudacaoInfeliz ++ nome
  where
    saudacaoLegal = "Ola! Que bom encontrar voce, "
    saudacaoInfeliz = "Nao pensei que ainda estivesse vivo, "

{-
2 - Seja a seguinte equação do segundo grau: ax2 + bx + c = 0 sendo que a, b e c são números reais
e a≠0. Essa equação tem:
• duas raízes reais, se b2 > 4ac;
• uma raiz real, se b2 = 4ac; e
• nenhuma raiz real, se b2 < 4ac.

Faça uma função que, dados três coeficientes a, b, e c, informe quantas raízes a equação possui.
Faça uso de definições locais.
-}
rootNumber :: Double -> Double -> Double -> String
rootNumber a b c
  | b * 2 > 4 * a * c = "2 raizes"
  | b * 2 == 4 * a * c = "1 raiz"
  | b * 2 < 4 * a * c = "0 raizes"
  | otherwise = "Impossivel calcular o numero de raizes com esses coeficientes"

{-
3 - Faça uma função chamada ordena2 :: Int -> Int -> (Int, Int) que aceita dois valores inteiros
como argumentos e retorna-os como um par ordenado. Por exemplo, ordena2 5 3 e igual a (3,5).
Defina essa função utilizando Guardas.
-}
ordena2 :: Int -> Int -> (Int, Int)
ordena2 a b
  | a < b = (a, b)
  | otherwise = (b, a)

{-
4 - Faça a função par que recebe um número inteiro e devolve verdadeiro (True) se o número for
par e falso (False), caso contrário.
-}
isEven :: Int -> Bool
isEven num
  | even num = True
  | otherwise = False

{-
5 - Utilizando a função do exercício anterior defina a função impar que recebe um número inteiro e
devolve verdadeiro se o número for ímpar e falso, caso contrário.
-}
isOdd :: Int -> Bool
isOdd num = not (isEven num)
