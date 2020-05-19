read_str(A):-get0(X),r_str(X,A,[]).
r_str(-1,A,A):-!.
r_str(32,A,A):-!.
r_str(X,A,B):-append(B,[X],B1),get0(X1),r_str(X1,A,B1).

pr_p_s:- read_line_to_codes(user_input,Name), see('D:/GitHub/GitKraken/SWI-Prolog-and-F-Sharp/Text.txt'),
    reading_starter(0,Name), seen, !. /*чтение*/

reading_starter(K,Name):-get0(Q),read_pol(Q, Name, K).

read_pol(-1, _,K):-write(K), !.
read_pol(_, Name,K):-read_str(Lang),perestanovka(Name,Lang), K1 is K+1, get0(X), read_pol(X,Name, K1).
read_pol(_,Name,K):-get0(X), read_pol(X, Name,K).

perestanovka(Name, Lang):-per1(Lang, P),sub_list(P,Name).

per1([],[]).
per1(L,[H|T]):-sel(H,L,T1),per1(T1,T).

sel(H,[H|T],T).
sel(H,[Y|T],[Y|T1]):-sel(H,T,T1).

sub_list_start([], _List):-!.
sub_list_start([Head|TailSub], [Head|TailList]):-
   sub_list_start(TailSub, TailList).

sub_list(Sub, List):-
   sub_list_start(Sub, List), !.
sub_list(Sub, [_Head|Tail]):-
   sub_list(Sub, Tail).
