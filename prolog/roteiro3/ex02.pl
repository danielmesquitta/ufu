traducao(uno, um).
traducao(due, dois).
traducao(tre, tres).
traducao(quattro, quatro).
traducao(cinque, cinco).
traducao(sei, seis).
traducao(sette, sete).
traducao(otto, oito).
traducao(nove, nove).

traduz_lista([],[]).
traduz_lista([X|Xs],[Y|Ys]) :- traducao(X,Y), traduz_lista(Xs,Ys).
