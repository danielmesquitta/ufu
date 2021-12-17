% Aluno: Daniel Santos de Mesquita

sobre(cupcake, hipopotamo2).
sobre(hipopotamo2, hipopotamo1).
sobre(hipopotamo2, maca).
sobre(maca, sorvete).
sobre(sorvete, novelo).
sobre(novelo, elefante).
sobre(elefante, base).
sobre(base, mesa).

sobre(caneca, mesa).

sobre(lapis, vidro).
sobre(vidro, mesa).

acima_de(A, B) :- sobre(A, B).
acima_de(A, C) :- sobre(A, B), acima_de(B, C).

/*
 * (c) Coloque a seguinte questão ao interpretador Prolog: “O cupcake
 * está acima da mesa?”.
 * acima_de(cupcake, mesa).
 * true.
 *
 * (d) Coloque a seguinte questão ao interpretador Prolog: “Os lápis
 * estão acima da mesa?”.
 * acima_de(lapis, mesa).
 * true.
 *
 * (e) Coloque a seguinte questão ao interpretador Prolog: “Quais ob-
 * jetos estão acima do novelo?”.
 * acima_de(X, novelo).
 * X = sorvete ;
 * X = maca ;
 * false.
 *
 * (f) Coloque a seguinte questão ao interpretador Prolog: “Quais ob-
 * jetos estão acima da caneca?”.
 * acima_de(X, caneca).
 * false.
 *
 * (g) Usando diretamente o predicado acima_de escreva um outro pre-
 * dicado abaixo_de que descreva transitivamente os objetos que
 * estão abaixo de outros.
 */

abaixo_de(A, B) :- acima_de(B, A).

/*
 * (h) Coloque a seguinte questão ao interpretador Prolog: “Quais ob-
 * jetos estão abaixo do cupcake?”
 * abaixo_de(X, cupcake).
 * X = hipopotamo2 ;
 * X = hipopotamo1 ;
 * X = maca ;
 * X = sorvete ;
 * X = novelo ;
 * X = elefante ;
 * X = base ;
 * X = mesa ;
 * false.
 *
 * (i) Coloque a seguinte questão ao interpretador Prolog: “Quais ob-
 * jetos estão abaixo dos lápis?”
 * abaixo_de(X,lapis).
 * X = vidro ;
 * X = mesa ;
 * false.
 */
