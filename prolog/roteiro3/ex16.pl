multiEsc1(I,[], A, A).
multiEsc1(I,[H|T], A, Result):- H1 is H*I, multiEsc1(I,T,[H1|A],Result).

multiEsc(I, List1, List2):- multiEsc1(I, List1, [], T), reverse(T, List2).
