max(X,Y,Z,X):-X>Y,X>Z,!.
max(_,Y,Z,Y):-Y>Z,!.
max(_,_,Z,Z).

fact(0,1).
fact(N,X):-N1 is N-1,fact(N1,X1),X is X1*N.

fact1(N,X):-fact2(0,1,N,X).
fact2(N,K,N,K):-!.
fact2(I,K,N,X):-I1 is I+1,K1 is K*I1,fact2(I1,K1,N,X).

fib(1,1):-!.
fib(2,1):-!.
fib(N,X):-N1 is N-1,fib(N1,X1),N2 is N-2,fib(N2,X2), X is X1+X2.


pr(X):-prost(2,X).
prost(X,X):-!.
prost(I,X):-Y is X mod I,not(Y=0),I1 is I+1,prost(I1,X).

summ(N,N):-N >= 0, N < 10, !.
summ(N,Y):-X1 is N mod 10, N1 is N div 10, summ(N1,Q), Y is Q + X1.

npdc(A,X):-npdc(A,X,0). % pochti rabotaet, ne mogu vovremya viklu'chit'
npdc(A,_,A):-!.
npdc(A,X,I):-I1 is I+1, npdc(A,X,I1), 0 is A mod I1, not(pr(I1)), X = I1,!.

gecd(0, B, B):-!. %НОД 2х чисел
gecd(A, 0, A):-!.

gecd(A, B, X) :-  A >= B, M is A mod B, gecd(M, B, X).
gecd(A, B, X) :-  A < B, M is B mod A, gecd(A, M, X).
