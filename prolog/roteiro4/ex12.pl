% Daniel Santos de Mesquita

primo(2, _).
primo(3, _).
primo(Num, Acum) :-
    X is mod(Num, Acum),
    X > 0,
    NovoAcum is Acum + 1,
    primo(Num, NovoAcum).
primo(Num, Acum) :-
    Acum is Num // 2.

inverteAcum([],L,L).
inverteAcum([H|T],Acum,Inv) :-
    inverteAcum(T,[H|Acum],Inv).

fatores_primos_acum(1, _, Lista, Lista).
fatores_primos_acum(Num, AcumNum, AcumLista, Resultado) :-
    Num > 1,
    primo(AcumNum, 2),
    0 is mod(Num, AcumNum),
    NovoNum is Num / AcumNum,
    append([AcumNum], AcumLista, NovoAcumLista),
    fatores_primos_acum(NovoNum, 2, NovoAcumLista, Resultado).
fatores_primos_acum(Num, AcumNum, AcumLista, Resultado) :-
    Num > 1,
    NovoAcumNum is AcumNum + 1,
    fatores_primos_acum(Num, NovoAcumNum, AcumLista, Resultado).

fatores_primos(Num, Resultado) :-
    fatores_primos_acum(Num, 2, [], ResultadoUm),
    inverteAcum(ResultadoUm, [], Resultado).
