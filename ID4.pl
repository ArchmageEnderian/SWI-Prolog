in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).

sleva_next(A,B,[C]):-fail.
sleva_next(A,B,[B|[A|T]]).
sleva_next(A,B,[_|List]):-sleva_next(A,B,List).

sprava_next(A,B,[C]):-fail.
sprava_next(A,B,[A|[B|T]]).
sprava_next(A,B,[_|List]):-sprava_next(A,B,List).

naprotiv(A,B1,List):-sprava_next(A,B,List),sprava_next(B,B1,List).

log_zad:- List1=[_,_,_],
    (
        (in_list(List1,[kuznetsov,tokar,_]);in_list(List1,[kuznetsov,slesar,_]);in_list(List1,[kuznetsov,rezchik,_])),
        (in_list(List1,[tokarev,kuznets,_]);in_list(List1,[tokarev,slesar,_]);in_list(List1,[tokarev,rezchik,_])),
        (in_list(List1,[slesarev,kuznets,_]);in_list(List1,[slesarev,tokar,_]);in_list(List1,[slesarev,rezchik,_])),
        (in_list(List1,[rezchikov,kuznets,_]);in_list(List1,[rezchikov,tokar,_]);in_list(List1,[rezchikov,slesar,_])),

         naprotiv(kuznetsov,_,List1), naprotiv(rezchikov,_,List1),
         sprava_next(slesarev,_,List1), sleva_next(_,Who1,List1)
     ),
    write(Who1).



/*Четыре человека играют в домино. Их фамилии Кузнецов, Токарев, Слесарев и Резчиков.
Профессия каждого игрока соответствует фамилии одного из других игроков.
1. Напротив Кузнецова сидит слесарь.
2. Напротив Резчикова сидит резчик.
3. Справа от Слесарева сидит токарь.

Кто сидит слева от кузнеца?*/
