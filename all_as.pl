all_as([]).
all_as([a|Tail]):-all_as(Tail).

%replace_a_b_c([],[]).
%replace_a_b_c([a|Tail],[b|NTail]) :-

concatenate([],L,L).
concatenate([Head|Tail],L,[Head|NewTail]) :-
	concatenate(Tail,L,NewTail).

append([],L,L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).