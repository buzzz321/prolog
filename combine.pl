combine1([],[],[]).

combine1([X|Tail], [Y|Tail2], [X,Y|NTail]) :- combine1(Tail, Tail2, NTail).

combine2([], [], []).
combine2([X|Tail], [Y|Tail2], [[X|Y]|NTail]) :- combine2(Tail, Tail2, NTail).

combine3([], [], []).
combine3([X|Tail], [Y|Tail2], [join(X,Y)|NTail]) :- combine3(Tail, Tail2, NTail).
