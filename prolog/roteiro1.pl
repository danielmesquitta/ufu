/*
 *
 * Aluno: Daniel Santos de Mesquita
 *
 * Ex. 1
 */
mulher(mona).
mulher(jacqueline).
mulher(abbey).
mulher(marge).
mulher(selma).
mulher(patty).
mulher(maggie).
mulher(lisa).
mulher(ling).

homem(abraham).
homem(clancy).
homem(herbert).
homem(homer).
homem(bart).

pai(abraham, homer).
pai(abraham, abbey).
pai(abraham, herbert).

mae(mona, homer).

pai(clancy, marge).
pai(clancy, selma).
pai(clancy, patty).

mae(jacqueline, marge).
mae(jacqueline, selma).
mae(jacqueline, patty).

pai(homer, maggie).
pai(homer, lisa).
pai(homer, bart).

mae(marge, maggie).
mae(marge, lisa).
mae(marge, bart).

mae(selma, ling).

/*
 * Ex. 2
 *
 * Quem é o pai de Marge?
 * pai(X, marge).
 *
 * Quem é o pai de Quem?
 * pai(X, Y).
 *
 * Quem é o avô de Lisa?
 * pai(Pai, lisa), pai(Avo, Pai).
 *
 * Ex. 3
 *
 * Quem são os netos de Mona Olsen?
 * mae(mona, Filho), pai(Filho, Neto) ; mae(mona, Filha), mae(Filha, Neto).
 *
 * Maggie e Bart têm o mesmo pai?
 * pai(X, bart), pai(X, maggie).
 *
 */

/*
 * Ex. 4
 */
avô(Avo, Neto) :- pai(Avo, Pai), pai(Pai, Neto).
avó(Avo, Neto) :- mae(Avo, Mae), mae(Mae, Neto).

filho(Filho, Pai) :- homem(Filho), (pai(Pai, Filho); mae(Pai, Filho)).
filha(Filha, Pai) :- mulher(Filha), (pai(Pai, Filha); mae(Pai, Filha)).

irmaos(Irmao1, Irmao2) :- pai(Pai, Irmao1), pai(Pai, Irmao2); mae(Mae, Irmao1), mae(Mae, Irmao2).
irmao(Irmao1, Irmao2) :- homem(Irmao2), (pai(Pai, Irmao1), pai(Pai, Irmao2); mae(Mae, Irmao1), mae(Mae, Irmao2)).
irma(Irma1, Irma2) :- mulher(Irma2), (pai(Pai, Irma1), pai(Pai, Irma2); mae(Mae, Irma1), mae(Mae, Irma2)).

tio(Tio, Sobrinho) :- homem(Tio), (pai(Pai, Sobrinho), irmaos(Tio, Pai); mae(Mae, Sobrinho), irmaos(Tio, Mae)).
tia(Tia, Sobrinho) :- mulher(Tia), (pai(Pai, Sobrinho), irmaos(Tia, Pai); mae(Mae, Sobrinho), irmaos(Tia, Mae)).

primo(Primo1, Primo2) :- homem(Primo1), (tio(Tio, Primo1), pai(Tio, Primo2); tia(Tia, Primo1), mae(Tia, Primo2)).
prima(Prima1, Primo2) :- mulher(Prima1), (tio(Tio, Prima1), pai(Tio, Primo2); tia(Tia, Prima1), mae(Tia, Primo2)).


/*
 * Ex. 5
 */
:- dynamic feiticeiro/1.

elfo_domestico(dobby).

bruxo(hermione).
bruxo( 'McGonagall' ).
bruxo(rita_skeeter).

mágico(X):- elfo_domestico(X).
mágico(X):- feiticeiro(X).
mágico(X):- bruxo(X).

/*
 * mágico(elfo_domestico).
 * false.
 *
 * mágico(hermione).
 * mágico( 'McGonagall' ).
 * mágico(rita_skeeter).
 * mágico(dobby).
 *
 * Ex. 6
 * feiticeiro(harry).
 * true.
 *
 * Ex. 7
 * mágico(feiticeiro).
 * false.
 *
 * Ex. 8
 * mágico('McGonagall').
 * true.
 *
 * Ex. 9
 * mágico(Hermione).
 * true.
 */

palavra(artigo,uma).
palavra(artigo,qualquer). % ' qualquer ' é um pronome, mas deixaremos assim.
palavra(nome,pessoa).
palavra(nome, 'sopa de legumes' ).
palavra(verbo,come).
palavra(verbo,adora).

sentenca(Palavra1, Palavra2, Palavra3, Palavra4, Palavra5) :-
  palavra(artigo,Palavra1),
  palavra(nome,Palavra2),
  palavra(verbo,Palavra3),
  palavra(artigo,Palavra4),
  palavra(nome,Palavra5).

/*
 * Ex. 10
 * sentenca(A, B, C, D, E).
 *
 * Ex. 11
 * 1.  uma pessoa come uma pessoa
 * 2.  uma pessoa come uma sopa de legumes
 * 3.  uma pessoa come qualquer pessoa
 * 4.  uma pessoa come qualquer sopa de legumes
 * 5.  uma pessoa adora uma pessoa
 * 6.  uma pessoa adora uma sopa de legumes
 * 7.  uma pessoa adora qualquer pessoa
 * 8.  uma pessoa adora qualquer sopa de legumes
 * 9.  uma sopa de legumes come uma pessoa
 * 10. uma sopa de legumes come sopa de legumes
 * 11. uma sopa de legumes come qualquer pessoa
 * 12. uma sopa de legumes come qualquer sopa de legumes
 * 13. uma sopa de legumes adora uma pessoa
 * 14. uma sopa de legumes adora uma sopa de legumes
 * 15. uma sopa de legumes adora qualquer pessoa
 * 16. uma sopa de legumes adora qualquer sopa de legumes
 * 17. qualquer pessoa come uma pessoa
 * 18. qualquer pessoa come uma sopa de legumes
 * 19. qualquer pessoa come qualquer pessoa
 * 20. qualquer pessoa come qualquer sopa de legumes
 * 21. qualquer pessoa adora uma pessoa
 * 22. qualquer pessoa adora uma sopa de legumes
 * 23. qualquer pessoa adora qualquer pessoa
 * 24. qualquer pessoa adora sopa de legumes
 * 25. qualquer sopa de legumes come uma pessoa
 * 26. qualquer sopa de legumes come qualquer pessoa
 * 27. qualquer sopa de legumes come qualquer sopa de legumes
 * 28. qualquer sopa de legumes adora uma pessoa
 * 29. qualquer sopa de legumes adora uma sopa de legumes
 * 30. qualquer sopa de legumes adora qualquer pessoa
 * 31. qualquer sopa de legumes adora qualquer sopa de legumes
 */

aluno(paulo,poo).
aluno(pedro,poo).
aluno(maria,pl).
aluno(rui,pl).
aluno(manuel,pl).
aluno(pedro,pl).
aluno(rui,ed1).

/* Ex. 12
 * listing.
 *
 * Ex 13.
 * aluno(paulo, pl).
 * false.
 *
 * Ex. 14
 * aluno(rui, poo).
 *
 * Ex. 15
 * aluno(paulo, ed1), aluno(maria, ed1).
 * false.
 *
 * Ex. 16
 * aluno(X, pl).
 *
 * Ex. 17
 * aluno(rui, X).
 */

estuda(paulo).
estuda(maria).
estuda(manuel).

/*
 * Ex. 18
 * estuda(maria), aluno(maria, pl).
 *
 * Ex. 19
 * Permite saber quais alunos estudam pl
 *
 * Ex. 20
 */

cursapl(X) :- estuda(X), aluno(X, pl).
