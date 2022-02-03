aux(L, N, [H|T]) :-
  N > 1,
  select(H, L, M),
  N1 is N-1,
  aux(M, N1, T).
aux(L, 1, [X]) :- member(X, L).

arranjo(N, L, R):-
  aux(L, N, R).

/*
 * Quais os números de 3 algarismos que podem ser formados com os algarismos 1, 2, 3, 4, 5
 * e 7, sem repeti-los?
 * ?- arranjo(3, [1, 2, 3, 4, 5, 7], Resultado).
 *
 * Suponha que temos oito corredores disputando uma corrida. O primeiro classificado recebe
 * uma medalha de ouro, o segundo de prata e o terceiro de bronze. Admitindo que todas as
 * classificações podem ocorrer, quais as distintas maneiras de se atribuir as medalhas?
 * ?- arranjo(3, [c1, c2, c3, c4, c5, c6, c7, c8], Resultado).
 */
