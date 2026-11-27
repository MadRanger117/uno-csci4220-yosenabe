option(R,C,TR,TC) :- number(R,C,_), area(TR,TC,_), R=TR.
option(R,C,TR,TC) :- number(R,C,_), area(TR,TC,_), C=TC.
covered(ID) :- area(TR,TC,ID), target(_,_,TR,TC).
path(R,C,TR,TC,X,Y) :- target(R,C,TR,TC), cell(X,Y), R=X, C<=TC, C<=Y, Y<=TC.
path(R,C,TR,TC,X,Y) :- target(R,C,TR,TC), cell(X,Y), Y=C, R<=TR, R<=X, X<=TR.
path(R,C,TR,TC,X,Y) :- target(R,C,TR,TC), cell(X,Y), R=X, TC<C, Y<=C, TC<=Y.
path(R,C,TR,TC,X,Y) :- target(R,C,TR,TC), cell(X,Y), Y=C, TR<R, X<=R, TR<=X.
1 { target(R,C,TR,TC) : option(R,C,TR,TC) } 1 :- number(R,C,_).
:- area(TR,TC,ID), not covered(ID).
:- path(R,C,TR,TC,X,Y), path(R2,C2,TR2,TC2,X,Y), (R,C) != (R2,C2).
:- goal(ID,Value), #sum { V : target(R,C,TR,TC), number(R,C,V), area(TR,TC,ID) } != Value.
#show target/4.
