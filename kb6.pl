loves(vincent,mia).
loves(marcellus,mia).
 
jealous(X,Y) :- loves(X,Z),loves(Y,Z).
