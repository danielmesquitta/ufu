% Daniel Santos de Mesquita

bissexto(Year) :-
	R4 is Year mod 4,
	R100 is Year mod 100,
	R400 is Year mod 400,
	(   (R4 = 0, R100\= 0); R400 = 0).
