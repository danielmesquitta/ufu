% Daniel Santos de Mesquita

fat(0, 1).
fat(N, F) :-
   N > 0,
   N1 is N - 1,
   fat(N1, F1),
   F is N * F1.

fatquad(Num, Fat) :-
    NovoNum is Num * 2,
    fat(NovoNum, FatCima),
    fat(Num, FatBaixo),
    Fat is FatCima / FatBaixo.
