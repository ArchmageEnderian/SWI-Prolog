in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).


log_zad:- List1[_,_,_],
    (
        (in_list(List1,[kuznetsov,tokar,_]);in_list(List1,[kuznetsov,slesar,_]);in_list(List1,[kuznetsov,rezchik,_])),
        (in_list(List1,[tokarev,kuznets,_]);in_list(List1,[tokarev,slesar,_]);in_list(List1,[tokarev,rezchik,_])),
        (in_list(List1,[slesarev,kuznets,_]);in_list(List1,[slesarev,tokar,_]);in_list(List1,[slesarev,rezchik,_])),
        (in_list(List1,[rezchikov,kuznets,_]);in_list(List1,[rezchikov,tokar,_]);in_list(List1,[rezchikov,slesar,_])),
        in_list(List1,[kuznetsov,slesar,naprotiv]),in_list(List1,[rezchikov,rezchik,naprotiv]),
        in_list(List1,[slesarev,tokar,sprava])
    ),
    write(List1).



/*������ �������� ������ � ������. �� ������� ��������, �������, �������� � ��������.
��������� ������� ������ ������������� ������� ������ �� ������ �������.
1. �������� ��������� ����� �������.
2. �������� ��������� ����� ������.
3. ������ �� ��������� ����� ������.

��� ����� ����� �� �������?*/
