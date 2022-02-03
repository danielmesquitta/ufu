% INCOMPLETE

remove(_, [], []).
remove(Term, [Term|Tail], Tail).
remove(Term, [Head|Tail], [Head|Result]) :-
  remove(Term, Tail, Result).
