ili_mn(A,B,Fin):-prov(A,B,Fin,[]).
prov([],_,Fin, Fin):-!.
prov([Q|T],B,Fin,WR):- prov2(Q,B,Fin),append(WR,[Q],WR1),prov(T,B,Fin,WR1).
prov([_|T],B,Fin,WR):-prov(T,B,Fin,WR).


prov2(_,[], _):-!.
prov2(Q,[H|T],Fin):-prov2(Q,T,Fin), not(H = Q).

%append1([],X,X):-!.
%append1([H|T],X,[H |Z]):-append1(T,X,Z).

%prov2(Q,[], []):-append([_|Fin],Q,[Q|Fin]), !.
%prov2(Q,[H|T],Fin):-not(H = Q),prov2(Q,T,Fin), !.
%prov2(Q,[_|T],Fin):-prov2(Q,T,Fin).

