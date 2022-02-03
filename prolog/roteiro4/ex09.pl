% Daniel Santos de Mesquita

not_member(_, []).
not_member(X, [H | T]) :-
    X \= H,
    not_member(X, T).

/* (a) disjunto é verdadeiro se, e somente se, as duas listas passadas não tem elementos em comum */
disjunto([], _).
disjunto([Head | Tail], Lista) :-
    not_member(Head, Lista),
    disjunto(Tail, Lista).

/* (b) uniao é verdadeiro se, e somente se, o terceiro argumento for uma lista que é o resultado da união das listas dos dois primeiros argumentos */
uniao([], [], []).
uniao(_, _, []).
uniao(Lista1, Lista2, [H | T]) :-
    member(H, Lista1),
    uniao(Lista1, Lista2, T).
uniao(Lista1, Lista2, [H | T]) :-
    member(H, Lista2),
    uniao(Lista1, Lista2, T).

/* (c) intersecao é verdadeiro se, e somente se, a lista do terceiro argumento é a interseção das listas dos dois primeiros argumentos*/
intersecao(_, _, []).
intersecao(Lista1, Lista2, [H | T]) :-
    member(H, Lista1),
    member(H, Lista2),
    intersecao(Lista1, Lista2, T).

/* (d) diferenca é verdadeiro se, e somente se, a terceira lista for a diferença entre as duas primeiras */
diferenca(_, _, []).
diferenca(Lista1, Lista2, [H| T]) :-
    member(H, Lista1),
    not_member(H, Lista2),
    diferenca(Lista1, Lista2, T).
