directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(fahlquemont,stAvold).
directTrain(stAvold,forbach).
directTrain(saarbruecken,dudweiler).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelBetween(X,Y) :- directTrain(X,Y).
travelBetween(X,Y) :- directTrain(X,Z),
                      travelBetween(Z,Y).

travelBetween(X,Y) :- directTrain(Y,X).
travelBetween(X,Y) :- directTrain(Y,Z),
                      travelBetween(Z,X).
