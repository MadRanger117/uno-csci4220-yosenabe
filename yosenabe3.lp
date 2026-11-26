option(R,C,TR,TC) :- number(R,C,_), area(TR,TC,_), R=TR.
option(R,C,TR,TC) :- number(R,C,_), area(TR,TC,_), C=TC.
covered(ID) :- area(TR,TC,ID), target(_,_,TR,TC).
path(R,C,TR,TC,X,Y) :- target(R,C,TR,TC), cell(X,Y), R=X, C<=TC, C<=Y, Y<=TC, TC<C.
path(R,C,TR,TC,X,Y) :- target(R,C,TR,TC), cell(X,Y), Y=C, R<=TR, R<=X, X<=TR, TR<R.
1 { target(R,C,TR,TC) : option(R,C,TR,TC) } 1 :- number(R,C,_).
:- area(TR,TC,ID), not covered(ID).
:- path(R,C,TR,TC,X,Y), path(R2,C2,TR2,TC2,X,Y), (R,C) != (R2,C2).
#show target/4.
