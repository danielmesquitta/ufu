splitRev(0, []).
splitRev(N, [A|As]) :- N1 is floor(N/10), A is N mod 10, splitRev(N1,As).

digitos(N,L1) :- splitRev(N,L2), reverse(L1,L2).
