option(R,C,TR,TC) :- number(R,C,_), area(TR,TC,_), R=TR.
option(R,C,TR,TC) :- number(R,C,_), area(TR,TC,_), C=TC.
covered :- area(TR,TC,ID), target(_,_,TR,TC).
1 { target(R,C,TR,TC) : option(R,C,TR,TC) } 1 :- number(R,C,_).
:- area(TR,TC,ID), not covered.
#show target/4.
