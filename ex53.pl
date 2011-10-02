addone([], []).
addone([X|Tail], [Y|NTail]) :- Y is X + 1,
	addone(Tail,NTail).