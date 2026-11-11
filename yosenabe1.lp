1 { target(X,Y,XX,YY) : area(XX,YY,_) } 1 :- number(X,Y,_).

:- target(X,Y,XX,YY), X != XX, Y != YY.

#show target/4.
