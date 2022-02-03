% Daniel Santos de Mesquita

tamanho([], Resultado, Resultado).
tamanho([_ | T], Acum, Resultado) :-
    NovoAcum is Acum +1,
    tamanho(T, NovoAcum, Resultado).

inverteAcum([],L,L).
inverteAcum([H|T],Acum,Inv) :-
    inverteAcum(T,[H|Acum],Inv).

n_primeiros(Num, _, Resultado, Num, Resultado).
n_primeiros(Num, [H | T], Acum, AcumNum, Resultado) :-
    append([H], Acum, NovoAcum),
    NovoAcumNum is AcumNum + 1,
    n_primeiros(Num, T, NovoAcum, NovoAcumNum, Resultado).

segmento([], []).
segmento(Lista, [H | T]) :-
    tamanho(Lista, 0, Tamanho),
    n_primeiros(Tamanho, [H | T], [], 0, ResultadoUm),
    inverteAcum(ResultadoUm, [], Resultado),
    Resultado = Lista.
segmento(Lista, [H | T]) :-
    tamanho(Lista, 0, Tamanho),
    n_primeiros(Tamanho, [H | T], [], 0, ResultadoUm),
    inverteAcum(ResultadoUm, [], Resultado),
    Resultado \= Lista,
    segmento(Lista, T).
