intercala3([], L, L).
intercala3([H|T], [], [H|T]).

intercala3([X|L1], [Y|L2], [junta(X,Y)|L3]) :-
    intercala3(L1, L2, L3).
