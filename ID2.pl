ili_mn(A,B):-prov(A,B,Fin1,[]), prov(B,A,Fin2,[]), append(Fin1, Fin2, Fin), prov3(Fin), !.
prov([],_,Fin, Fin):-!.
prov([Q|T],B,Fin,WR):- prov2(Q,B,Fin),append(WR,[Q],WR1),prov(T,B,Fin,WR1).
prov([_|T],B,Fin,WR):-prov(T,B,Fin,WR).

prov3(List):-unique_list(List),write("Ваш список -> "),write(List), !.
prov3([H|T]):-member_list(H,T), delete([H|T],H,List1),append(List1,[H],List), prov3(List).
prov3([_|T]):-prov3(T).

prov2(_,[], _):-!.
prov2(Q,[H|T],Fin):-prov2(Q,T,Fin), not(H = Q).


/*
append_to_list(Q,WR,WR1):-append(WR,[Q],WR1), unique(WR1), !.
append_to_list(Q,WR,WR1):-delete(WR1, [Q], WR2), !.
*/
%append1([],X,X):-!.
%append1([H|T],X,[H |Z]):-append1(T,X,Z).

%prov2(Q,[], []):-append([_|Fin],Q,[Q|Fin]), !.
%prov2(Q,[H|T],Fin):-not(H = Q),prov2(Q,T,Fin), !.
%prov2(Q,[_|T],Fin):-prov2(Q,T,Fin).


unique_list([]):-!.
unique_list([H|T]):-member_list(H,T), !, fail.
unique_list([_|T]):-unique_list(T).                   %Проверка на уникальность

member_list(Q,[Q|_T]).
member_list(Q,[_|T]):-member_list(Q, T).    %Проверка на вхождение
