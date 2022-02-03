pares([],[]).
pares([H|T],L1):-
  integer(H),
  (H mod 2 =:= 0 -> L1=[H|T1], pares(T,T1);
  pares(T,L1) ).
