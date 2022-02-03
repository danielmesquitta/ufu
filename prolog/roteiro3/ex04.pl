intercala1([], L, L).
intercala1([H|T], [], [H|T]).

intercala1([X|L1], [Y|L2], [X,Y|L3]) :-
    intercala1(L1, L2, L3).
