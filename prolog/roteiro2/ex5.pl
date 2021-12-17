% Aluno: Daniel Santos de Mesquita

deCarro(auckland, hamilton).
deCarro(hamilton, raglan).
deCarro(valmont, saarbruecken).
deCarro(valmont, metz).

deTrem(metz, frankfurt).
deTrem(saarbruecken, frankfurt).
deTrem(metz, paris).
deTrem(saarbruecken, paris).

deAviao(frankfurt, bangkok).
deAviao(frankfurt, singapore).
deAviao(paris, losAngeles).
deAviao(bangkok, auckland).
deAviao(losAngeles, auckland).

podeIr(A, B) :- deCarro(A, B); deTrem(A, B); deAviao(A, B).

viagem(A,B,vai(A,B)) :- podeIr(A,B).
viagem(A,B,vai(A,C,Caminho)) :-
  podeIr(A,C),
  viagem(C,B,Caminho).
