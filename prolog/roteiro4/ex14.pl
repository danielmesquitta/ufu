% Daniel Santos de Mesquita

fat(0, 1).
fat(N, F) :-
    1 is mod(N, 2),
    N > 0,
    N1 is N - 1,
    fat(N1, F1),
    F is N * F1.
fat(N, F) :-
    0 is mod(N, 2),
    N > 0,
    N1 is N - 1,
    fat(N1, F).
