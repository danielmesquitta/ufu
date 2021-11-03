-- Nome: Daniel Santos de Mesquita
-- Data: 25/10/2021

-- Base de dados de livros
listaDeLivros :: [String]
listaDeLivros = ["O senhor dos aneis", "Harry Potter", "O pequeno principe", "Dom Casmurro", "A divina comedia", "O processo", "Em busca do tempo perdido", "Coracao das Trevas"]

-- Base de dados de empréstimos
listaDeEmprestimos :: [(String, String)]
listaDeEmprestimos = [("Maria Augusta", "O senhor dos aneis"),
    ("Maria Joaquina", "Harry Potter"), 
    ("Maria Clara", "O processo"),
    ("Maria Eduarda", "Coracao das Trevas"), 
    ("Maria Augusta", "Dom Casmurro"),
    ("Maria Augusta", "Em busca do tempo perdido"),
    ("Mario da Silva", "Coracao das Trevas")]

-- Função extra: recebe um livro e confere se o livro está na listaDeLivros. Se estiver retorna True, se não estiver retorna False
livroNaLista :: String -> Bool
livroNaLista x
    | filtragem == [] = False
    | otherwise = True
    where
        filtragem = filter (== x) listaDeLivros

-- Função 01: Dada uma pessoa, queremos encontrar o(s) livro(s) que ela pegou emprestado, se houver.
-- retornaLivros recebe uma String de um nome de uma pessoa e se essa pessoa pegou algum livro emprestado, retorna a lista de livros que essa pessoa pegou. Se essa pessoa não pegou nenhum livro, retorna uma lista vazia.
retornaLivros :: String -> [String]
retornaLivros pessoa = map snd (filter ((== pessoa).fst) listaDeEmprestimos)

-- Função 02: Dado um livro, queremos encontrar o (s) tomador (es) do livro, se houver. (É assumido que pode haver mais de uma cópia de qualquer livro.)
-- retornaPessoas recebe uma String de um nome de um livro
-- se o livro não estiver na lista de livros, retorna ["O livro '" ++ livro ++ "' nao esta na lista!!"]
-- se ninguém pegou o livro emprestado ainda, retorna uma lista vazia
-- se uma ou mais pessoas pegaram o livro, retorna uma lista dessas pessoas
retornaPessoas :: String -> [String]
retornaPessoas livro
    | (livroNaLista livro) == False = ["O livro '" ++ livro ++ "' nao esta na lista!!"]
    | otherwise = mapeamento
    where 
        mapeamento = map fst (filter ((== livro).snd) listaDeEmprestimos)

-- Função 03: Dado um livro, queremos descobrir se ele foi emprestado;
-- emprestado recebe uma String de um nome de um livro e retorna True se o livro está emprestado, e False se o livro não tiver emprestado
emprestado :: String -> Bool
emprestado livro
    | (retornaPessoas livro) == [] = False
    | otherwise = True

-- Função 04: Dado uma pessoa, podemos querer descobrir o número de livros que foram emprestados a ela
-- retornaUm recebe um item qualquer e retorna o número 1. Essa função serve para ser usada no map da função "numeroEmprestimos"
retornaUm :: Num b => a -> b
retornaUm a = 1

-- numeroEmprestimos recebe uma String de um nome de uma pessoa e retorna o número de livros que essa pessoa pegou emprestado
numeroEmprestimos :: Num a => String -> a
numeroEmprestimos pessoa = foldr (+) 0 (map retornaUm (retornaLivros pessoa))