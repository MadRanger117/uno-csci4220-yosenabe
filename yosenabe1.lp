
%% Your code here
option(R,C,TR,TC) :- number(R,C,_), area(TR,TC,_), R=TR.
option(R,C,TR,TC) :- number(R,C,_), area(TR,TC,_), C=TC.
#show option/4.

