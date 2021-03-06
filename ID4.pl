permute([],[]).
permute([H|T],P):-permute(T,T1),insert(H,T1,P).
insert(Y,XZ,XYZ):-append(X,Z,XZ),append(X,[Y],XY),append(XY,Z,XYZ).

naprotiv(A,B,[_,A,_,B]).
naprotiv(B,A,[A,_,B,_]).
naprotiv(B,A,[_,A,_,B]).

sprava(A,B,[A,B,_,_]).
sprava(A,B,[_,_,A,B]).

sleva(A,B,List):-sprava(B,A,List).

find(Ans):-
        permute([kuznecov,tokarev,slesarev,rezchikov],[A,B,C,D]),
        permute([kuznec,tokar,slesar,rezchik],[Q1,Q2,Q3,Q4]),

        List=[m(A,Q1),m(B,Q2),m(C,Q3),m(D,Q4)],
        member(m(S1,kuznec),List),not(S1=kuznecov),
        member(m(S2,tokar),List),not(S2=tokarev),
        member(m(S3,slesar),List),not(S3=slesarev),
        member(m(S4,rezchik),List),

        Familii=[A,B,C,D],
        naprotiv(kuznecov,S3,Familii), /*1. �������� ��������� ����� �������.*/
        sprava(slesarev,S2,Familii), /*3. ������ �� ��������� ����� ������.*/
        naprotiv(rezchikov,S4,Familii), /*2. �������� ��������� ����� ������.*/
        sleva(Ans,S1,Familii). /*��� ����� ����� �� �������?*/

/*������ �������� ������ � ������. �� ������� ��������, �������, �������� � ��������.
��������� ������� ������ ������������� ������� ������ �� ������ �������.
1. �������� ��������� ����� �������.
2. �������� ��������� ����� ������.
3. ������ �� ��������� ����� ������.

��� ����� ����� �� �������?*/
