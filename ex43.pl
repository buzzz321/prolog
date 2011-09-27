
twice([], []).
twice([H|Tail], [H,H|NTail]) :- twice(Tail, NTail).