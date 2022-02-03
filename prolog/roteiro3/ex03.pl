tresVezes([],[]).
tresVezes([H|T],[H,H,H|Y]) :- tresVezes(T,Y).
