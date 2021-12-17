% Aluno: Daniel Santos de Mesquita

/*
 * (a) Escreva um conjunto de fatos próximo_posto que é verdadeiro
 * quando o primeiro posto é imediatamente mais baixo que o se-
 * gundo. Por exemplo, o posto de capitão é imediatamente mais
 * baixo que o de major.
 */

proximo_posto("Soldado Zero","Soldado Platão").
proximo_posto("Soldado Platão","Soldado Dentinho").
proximo_posto("Soldado Dentinho","Soldado Cosme").
proximo_posto("Soldado Cosme","Soldado Roque").
proximo_posto("Soldado Roque","Soldado Quindim").
proximo_posto("Soldado Quindim","Soldado Blips").
proximo_posto("Soldado Blips","Cabo Ky").
proximo_posto("Cabo Ky","Sargento Cuca").
proximo_posto("Sargento Cuca","Sargento Tainha").
proximo_posto("Sargento Tainha","Sargento Louise Lorota").
proximo_posto("Sargento Louise Lorota","Tenente Escovinha").
proximo_posto("Tenente Escovinha","Tenente Mironga").
proximo_posto("Tenente Mironga","Capitão Durindana").
proximo_posto("Capitão Durindana","Major Peroba").
proximo_posto("Major Peroba","General de exército Amos Dureza").

/*
 * (b) Escreva um conjunto de fatos militar/2 que retrate os persona-
 * gens militares da revista Recruta Zero. O primeiro argumento é
 * o nome do personagem e o segundo é o seu posto.
 */
militar("Roque","Soldado Zero").
militar("Otto","Soldado Platão").
militar("Sargento Tainha","Soldado Dentinho").
militar("Recruta Zero","Soldado Cosme").
militar("Quindim","Soldado Roque").
militar("Platão","Soldado Quindim").
militar("Tenente Escovinha","Soldado Blips").
militar("Tenente Mironga","Cabo Ky").
militar("Cuca","Sargento Cuca").
militar("O Capelão","Sargento Tainha").
militar("Capitão","Sargento Louise Lorota").
militar("Dona Tetê","Tenente Escovinha").
militar("General Dureza","Tenente Mironga").
militar("Dentinho","Capitão Durindana").

/*
 * (c) Usando o fato próximo_posto escreva um predicado menor_patente/2
 * que é verdadeiro se a patente no primero argumento é menor do
 * que aquela no segundo argumento. Note que menor_patente é
 * transitivo.
 */

menor_patente(A, B) :- proximo_posto(A, B).
menor_patente(A, C) :- proximo_posto(A, B), menor_patente(B, C).

/*
 * (d) Use o predicado menor_patente para escrever o predicado maior_patente/2
 * que é verdadeiro se a patente no primero argumento é maior do
 * que aquela no segundo argumento.
 */

maior_patente(A, B) :- menor_patente(B, A).

/*
 * (e) Escreva o predicado subordinado/2 que recebe dois nomes de mi-
 * litares e é verdadeiro sempre que a patente associada ao primeiro
 * nome é inferior àquela associada ao segundo nome.
 */

subordinado(Subordinado, Superior) :-
  militar(Subordinado, PostoSubordinado),
  militar(Superior, PostoSuperior),
  menor_patente(PostoSubordinado, PostoSuperior).

/*
 * (f) Coloque a seguinte questão ao interpretador Prolog: “O recruta
 * Zero está subordinado ao sargento Tainha?”
 * subordinado("Recruta Zero", "Sargento Tainha").
 * false.
 *
 * (g) Coloque a seguinte questão ao interpretador Prolog: “Quais são
 * os nomes dos militares que são superiores ao tentente Mironga?”
 * subordinado("Tenente Mironga", X).
 * X = "Cuca" ;
 * X = "O Capelão" ;
 * X = "Capitão" ;
 * X = "Dona Tetê" ;
 * X = "General Dureza" ;
 * X = "Dentinho" ;
 * false.
 */
