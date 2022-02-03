% Daniel Santos de Mesquita

append_n_vezes(0, _, Resultado, Resultado).
append_n_vezes(Num, Elemento, Acum, Final) :-
    Num > 0,
    append([Elemento], Acum, NovoAcum),
    NovoNum is Num -1,
    append_n_vezes(NovoNum, Elemento, NovoAcum, Final).

replica_acum([], _, Resultado, Resultado).
replica_acum([H | T], Num, Acum, Resultado) :-
    append_n_vezes(Num, H, [], Final),
    append(Acum, Final, NovoAcum),
    replica_acum(T, Num, NovoAcum, Resultado).

replica(Lista, Num, Resultado) :-
    replica_acum(Lista, Num, [], Resultado).
