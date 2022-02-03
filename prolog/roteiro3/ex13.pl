dec_bin(0,'0').
dec_bin(1,'1').
dec_bin(N, B):-
  N > 1,
  X is N mod 2,
  Y is N//2,
  dec_bin(Y,B1),
  atom_concat(B1, X, B).

char_to_num([],[]).
char_to_num([X|Xs],[Y|Ys]) :- atom_number(X,Y), char_to_num(Xs,Ys).

dec_para_bin(N, X) :- dec_bin(N, B), atom_chars(B, Y), char_to_num(Y, X).

