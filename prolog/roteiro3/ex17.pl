prodEsc([], [], 0).
prodEsc([H1|T1], [H2|T2], Result) :-
  Prod is H1 * H2,
  prodEsc(T1, T2, Remaining),
  Result is Prod + Remaining.
