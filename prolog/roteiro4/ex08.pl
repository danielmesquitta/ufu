% Daniel Santos de Mesquita

romano(N, _):- N < 0, !, fail.
romano(0, []).
romano(N, ['I'|R]) :- N < 4, M is N - 1, romano(M, R).
romano(4, ['IV']).
romano(5, ['V']).
romano(N, ['V'|R]) :- N < 9, M is N - 5, romano(M, R).
romano(9, ['IX']).
romano(N, ['X'|R]) :- N < 40, M is N - 10, romano(M, R).
romano(N, ['XL'|R]) :- N < 50, M is N - 40, romano(M, R).
romano(N, ['L'|R]) :- N < 90, M is N - 50, romano(M, R).
romano(N, ['XC'|R]) :- N < 100, M is N - 90, romano(M, R).
romano(N, ['C'|R]) :- N < 400, M is N - 100, romano(M, R).
romano(N, ['CD'|R]) :- N < 500, M is N - 400, romano(M, R).
romano(N, ['DD'|R]) :- N < 900, M is N - 500, romano(M, R).
romano(N, ['CM'|R]) :- N < 1000, M is N - 900, romano(M, R).
romano(N, ['M'|R]) :- N < 4000, M is N - 1000, romano(M, R).
