% Daniel Santos de Mesquita

soma_acum([], 0).
soma_acum([H|T], Sum) :-
   soma_acum(T, Rest),
   Sum is H + Rest.
