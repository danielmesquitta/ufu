intercala2([], L, L).
intercala2([H|T], [], [H|T]).

intercala2([X|L1], [Y|L2], [[X,Y]|L3]) :-
    intercala2(L1, L2, L3).
