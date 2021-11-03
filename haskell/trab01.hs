{-
  Nome: Daniel Santos de Mesquita
  Data: 17/10/2021
-}

type Book = String

type User = String

type BooksList = [Book]

type UsersList = [User]

type Loans = [(User, Book)]

bookList :: BooksList
bookList = ["Don of desire", "The Anatomy of the State", "The law", "Captivate - The Science of Succeeding with People", "Against Intellectual Property", "The Method", "The Ethics of Liberty", "Atlas Shrugged"]

loans :: Loans
loans =
  [ ("Anderson", "Don of desire"),
    ("Beatriz", "The Anatomy of the State"),
    ("Carlos", "The Method"),
    ("Daniela", "The law"),
    ("Eduarda", "Captivate - The Science of Succeeding with People"),
    ("Felipe", "The Ethics of Liberty")
  ]

isBookInList :: Book -> BooksList -> Bool
isBookInList y [] = False
isBookInList y (x : xs)
  | y == x = True
  | otherwise = isBookInList y xs

{-
  Dada uma pessoa, queremos encontrar o (s) livro (s) que ela pegou emprestado, se houver.
-}
-- 1° versão
getUserLoansBase :: User -> Loans -> BooksList
getUserLoansBase y [] = []
getUserLoansBase y (x : xs)
  | fst (x) == y = snd (x) : getUserLoansBase y xs
  | otherwise = getUserLoansBase y xs

getUserLoans :: User -> BooksList
getUserLoans y
  | result == [] = ["Usuário nao pegou nenhum livro"]
  | otherwise = result
  where
    result = getUserLoansBase y loans

-- 2° versão
_getUserLoans :: User -> BooksList
_getUserLoans x = [snd (y) | y <- loans, fst (y) == x]

{-
  Dado um livro, queremos encontrar o (s) tomador (es) do livro, se houver. (É assumido que
  pode haver mais de uma cópia de qualquer livro.)
-}
-- 1° versão
getUsersByLoanedBookBase :: Book -> Loans -> UsersList
getUsersByLoanedBookBase y [] = []
getUsersByLoanedBookBase y (x : xs)
  | condicao == False = ["Nao temos esse livro"]
  | snd (x) == y = fst (x) : getUsersByLoanedBookBase y xs
  | otherwise = getUsersByLoanedBookBase y xs
  where
    condicao = isBookInList y bookList

getUsersByLoanedBook :: Book -> UsersList
getUsersByLoanedBook x
  | result == [] = ["Ninguem pegou esse livro emprestado"]
  | otherwise = result
  where
    result = getUsersByLoanedBookBase x loans

-- 2° versão
_getUsersByLoanedBook :: Book -> UsersList
_getUsersByLoanedBook x
  | condicao == False = ["Nao temos esse livro"]
  | result == [] = ["Ninguem pegou esse livro emprestado"]
  | otherwise = result
  where
    condicao = isBookInList x bookList
    result = [fst (y) | y <- loans, snd (y) == x]

{-
  Dado um livro, queremos descobrir se ele foi emprestado;
-}
-- 1° versão
isBookLoaned :: Book -> Bool
isBookLoaned x
  | result == ["Ninguem pegou esse livro emprestado"] = False
  | otherwise = True
  where
    result = getUsersByLoanedBook x

-- 2° versão
_isBookLoaned :: Book -> Bool
_isBookLoaned x
  | result == ["Ninguem pegou esse livro emprestado"] = False
  | otherwise = True
  where
    result = _getUsersByLoanedBook x

{-
  Dado uma pessoa, podemos querer descobrir o número de livros que foram emprestados a ela
-}
-- 1° versão
countLoansFromUserBase :: User -> Loans -> Int
countLoansFromUserBase y [] = 0
countLoansFromUserBase y (x : xs)
  | fst (x) == y = 1 + (countLoansFromUserBase y xs)
  | otherwise = countLoansFromUserBase y xs

countLoansFromUser :: User -> Int
countLoansFromUser x = countLoansFromUserBase x loans

-- 2° versão
_countLoansFromUser :: User -> Int
_countLoansFromUser x = length books
  where
    books = [y | y <- loans, fst (y) == x]
