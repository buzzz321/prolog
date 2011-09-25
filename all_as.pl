all_as([]).
all_as([a|Tail]):-all_as(Tail).

replace_a_b_c([],[]).
replace_a_b_c([a|Tail],[b|NTail]) :- replace_a_b_c(Tail, NTail).
replace_a_b_c([b|Tail],[c|NTail]) :- replace_a_b_c(Tail, NTail).
replace_a_b_c([c|Tail],[a|NTail]) :- replace_a_b_c(Tail, NTail).
%% Fourth case: the first element is something else.
replace_a_b_c([X|Tail],[X|NTail]) :- X \= a, X \= b, X \= c,
              replace_a_b_c(Tail,NTail).

concatenate([],L,L).
concatenate([Head|Tail],L,[Head|NewTail]) :-
	concatenate(Tail,L,NewTail).

append([],L,L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).