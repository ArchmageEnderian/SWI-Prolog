pr_list(A,Pr):-pr_list(A,Pr,1).
pr_list([],Pr,Pr):-!.
pr_list([H|T],Pr,P):-P1 is P*H, pr_list(T,Pr,P1).

f(0,1).
f(X,Y):-not(X=<0), X1 is X-1,f(X1,Y1),Y is Y1*X.

no(P):-P,!,fail.
no(_).

append1([],X,X):-!.
append1([H|T],X,[H|Z]):-append1(T,X,Z).


read_str(A,N):-get0(X), r_str(X,A,[],N,0).
r_str(10,A,A,N,N):-!.
r_str(X,A,B,N,K):-K1 is K+1, append(B,[X],B1), get0(X1), r_str(X1,A,B1,N,K1).

