member(X,[X|_]).
member(X,[_|Tail]) :- member(X,Tail).

mysubset([],_).
mysubset([X|Tail],Y) :- member(X,Y),
                        mysubset(Tail,Y).

mysuperset(_,[]).
mysuperset(X,[Y|Tail]) :- member(Y,X),
	                  mysuperset(X,Tail).