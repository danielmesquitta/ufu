aux(L, N, [H|T]) :-
  N > 1,
  select(H, L, M),
  N1 is N-1,
  aux(M, N1, T).
aux(L, 1, [X]) :- member(X, L).

arranjo(N, L, R):-
  aux(L, N, R).
