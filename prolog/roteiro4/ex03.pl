% Daniel Santos de Mesquita

sem_repeticao([], []).
sem_repeticao([H | T], R) :-
    member(H, T), !,
    sem_repeticao(T, R).
sem_repeticao([H | T], [H | R]) :-
    sem_repeticao(T, R).
