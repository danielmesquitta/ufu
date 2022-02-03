% Daniel Santos de Mesquita

soma_ate(0,0).
soma_ate(End, Sum) :-
  End > 0,
  NewEnd is End - 1,
  soma_ate(NewEnd, NewSum),
  Sum is NewSum + End.
