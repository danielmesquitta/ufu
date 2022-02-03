% Daniel Santos de Mesquita

tamanho([], Resultado, Resultado).
tamanho([_ | T], Acum, Resultado) :-
    NovoAcum is Acum +1,
    tamanho(T, NovoAcum, Resultado).

inverteAcum([],L,L).
inverteAcum([H|T],Acum,Inv) :-
    inverteAcum(T,[H|Acum],Inv).

pega_primeiro([], []).
pega_primeiro([Primeiro | _], Primeiro).

pega_repetidos_acum([], _, Resultado, Resultado).
pega_repetidos_acum([H | T], H, Acum, Resultado) :-
    append([H], Acum, NovoAcum),
    pega_repetidos_acum(T, H, NovoAcum, Resultado).
pega_repetidos_acum([H | _], Primeiro, Resultado, Resultado) :-
    Primeiro \= H.

pega_repetidos([], []).
pega_repetidos([H], [H]).
pega_repetidos(Lista, Resultado) :-
    pega_primeiro(Lista, Primeiro),
    pega_repetidos_acum(Lista, Primeiro, [], Resultado).

remove_n_primeiros(_, [], _, []).
remove_n_primeiros(Num, [_ | T], Acum, Resultado) :-
    Num \= Acum,
    NovoAcum is Acum + 1,
    remove_n_primeiros(Num, T, NovoAcum, Resultado).
remove_n_primeiros(Num, Lista, Num, Lista).

separa_dup_acum([], Dups, Dups).
separa_dup_acum(Lista, Acum, Dups) :-
    pega_repetidos(Lista, Repetidos),
    append([Repetidos], Acum, NovoAcum),
    tamanho(Repetidos, 0, Tamanho),
    tamanho(Lista, 0, TamanhoLista),
    TamanhoLista \= 0,
    remove_n_primeiros(Tamanho, Lista, 0, NovaLista),
    separa_dup_acum(NovaLista, NovoAcum, Dups).

separa_dup(Lista, Resultado) :-
    separa_dup_acum(Lista, [], Dups),
    inverteAcum(Dups, [], Resultado).
