ili_mn(A,B,Fin):-prov(A,B,Fin, []).

prov([],_,Fin, Fin):-!.
prov([H|T],B,Fin, Fin1):-prov2(H, B, Fin, Fin1), prov(T, B, Fin, Fin1).

prov2(Q,[], _, Fin1):-append(Fin1,[Q],Fin1), !.
prov2(Q,[H|T],Fin,Fin1):- not(H = Q), prov2(Q, T, Fin, Fin1).
prov2(_,_,_,_):-!.
