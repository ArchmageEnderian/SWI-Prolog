fact(N,X):-fact1(0,1,N,X).
fact1(N,K,N,K):-!.
fact1(I,K,N,X):- I1 is I+1,K1 is K*I1,fact1(I1,K1,N,X).

lub_ch(MAX):-lub_ch(MAX, 2),!. %Вывод с 10 по причине: Все числа до 10 не являются числами = своему факториалу
%Как и все до 145 полагаю

lub_ch(MAX,MAX):-!.
lub_ch(MAX,I):-I1 is I+1, pr(I1), write(I1), lub_ch(MAX,I1).
lub_ch(MAX,I):-I1 is I+1, lub_ch(MAX,I1).

%pr(O):-proverka(O,_,W),W = O.
%proverka(N,N,0):- N >= 0, N < 10, !.
%proverka(N,Y,W):- N1 is N div 10, X1 is N mod 10, fact(X1,Q),proverka(N1,Q,W1), W is W1 + Q.



pr(O):-prov2(O,W), W = O.
prov2(N,Q):- N >= 0, N < 10, fact(N,Q), !.
prov2(N,W):-N1 is N div 10, X1 is N mod 10, prov2(N1,W1), fact(X1,T), W is T + W1.
