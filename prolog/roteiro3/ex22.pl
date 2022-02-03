combinacao(0,_,[]).
combinacao(N,[X|Xs],[X|Ys]):-
  N>0,
  N1 is N - 1,
  combinacao(N1,Xs,Ys).
combinacao(N,[_|Xs], Ys):-
  N>0,
  combinacao(N,Xs,Ys).

/*
 * (a) Uma escola possui 10 alunos atletas a1 , a2 , ... , a10 . Quais as diferentes equipes que podem
 * ser formadas com 5 alunos?
 * ?- combinacao(5, [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10], Equipe).
 *
 * (b) Pretende-se reformular o curso de Matemática Discreta. Para tal, será constituı́do um co-
 * mitê com três professores da Faculdade de Matemática (de um total de nove: {m1 , m2, ..., m9 })
 * e quatro professores da Faculdade de Computação (de um total de onze: {c1, c2, ... , c11 }).
 * Quais são os diferentes comitês que podem ser formados?
 * ?- combinacao(3, [m1, m2, m3, m4, m5, m6, m7, m8, m9], Matematica),
 *      combinacao(4, [c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11], Computacao),
 *      append(Matematica, Computacao, Resultado).
 *
 */
