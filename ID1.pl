fact(0,1).
fact(N,X):-N1 is N-1,fact(N1,X1),X is X1*N.

lub_ch(MAX):-lub_ch(MAX, 2).

lub_ch(MAX,MAX):-!.
lub_ch(MAX,I):-I1 is I+1, write(I1), lub_ch(MAX,I1).
