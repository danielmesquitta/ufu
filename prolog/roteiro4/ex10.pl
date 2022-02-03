% Daniel Santos de Mesquita

ocorrencias_acum(_, [], Acum, Acum).
ocorrencias_acum(H, [H | T], Acum, N) :-
    NovoAcum is Acum + 1,
    ocorrencias_acum(H, T, NovoAcum, N).
ocorrencias_acum(X, [H | T], Acum, N) :-
    X \= H,
    ocorrencias_acum(X, T, Acum, N).

ocorrencias(X, L, N) :-
    ocorrencias_acum(X, L, 0, N).
