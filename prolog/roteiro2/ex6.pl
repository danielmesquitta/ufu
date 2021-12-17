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

podeIr(A,B,deCarro) :- deCarro(A,B).
podeIr(A,B,deTrem) :- deTrem(A,B).
podeIr(A,B,deAviao) :- deAviao(A,B).

viagem(A,B,vai(A,B,Transporte)) :- podeIr(A,B,Transporte).
viagem(A,B,vai(A,C,Transporte,Caminho)) :-
  podeIr(A,C,Transporte),
  viagem(C,B,Caminho).
