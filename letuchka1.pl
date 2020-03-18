p(A,N):-sum(A,N,N).
sum(0,0,1):-!.
sum(A,N,X):-A1 is A div 10, sum(A1,N,X),N1 is A mod 10, X is N1 + N.
