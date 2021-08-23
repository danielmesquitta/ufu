{-
  Aluno: Daniel Santos de Mesquita
  Data: 23/08

  Tarefa: O Dia da Semana
-}
bissexto :: Integral a => a -> Bool
bissexto ano =
  ano `mod` 4 == 0 && ano `mod` 100 /= 0
    || ano `mod` 4 == 0 && ano `mod` 400 == 0

numDeDiasEmCadaMesDeUmAno :: Int -> [Int]
numDeDiasEmCadaMesDeUmAno ano = [31, fev, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  where
    fev
      | bissexto ano = 29
      | otherwise = 28

numDeDiasSeculo21 :: (Int, Int, Int) -> Int
numDeDiasSeculo21 (dia, mes, ano) =
  dia
    + sum (take (mes -1) (numDeDiasEmCadaMesDeUmAno ano))
    + (ano -2001) * 365
    + (ano -2001) `div` 4

nomeDoDiaDaSemana :: Int -> String
nomeDoDiaDaSemana dia
  | dia == 0 = "Domingo"
  | dia == 1 = "Segunda"
  | dia == 2 = "Terca"
  | dia == 3 = "Quarta"
  | dia == 4 = "Quinta"
  | dia == 5 = "Sexta"
  | otherwise = "Sabado"

diaDaSemana :: (Int, Int, Int) -> String
diaDaSemana (dia, mes, ano) = nomeDoDiaDaSemana (numDeDiasSeculo21 (dia, mes, ano) `mod` 7)
