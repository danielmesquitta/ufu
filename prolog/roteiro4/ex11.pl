% Daniel Santos de Mesquita

ocorre_acum([], Num, Num, _).
ocorre_acum([X | _], Num, Num, X).
ocorre_acum([_ | T], Num, Acum, X) :-
    NovoAcum is Acum + 1,
    ocorre_acum(T, Num, NovoAcum, X).

ocorre(L, N, X) :-
    ocorre_acum(L, N, 1, X).
