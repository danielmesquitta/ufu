splitRev(0,[]).
splitRev(N,[A|As]) :- N1 is floor(N/10), A is N mod 10, splitRev(N1,As).

split(N,L1) :- splitRev(N,L2), reverse(L1,L2).

translate(0, "zero").
translate(1, "um").
translate(2, "dois").
translate(3, "tres").
translate(4, "quatro").
translate(5, "cinco").
translate(6, "seis").
translate(7, "sete").
translate(8, "oito").
translate(9, "nove").

translate_list([],[]).
translate_list([X|Xs], [Y|Ys]) :- translate(X,Y), translate_list(Xs,Ys).

digitos_em_palavras(N, Ps) :- split(N, Ds), translate_list(Ds, Ps).
