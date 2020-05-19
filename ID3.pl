read_str(A):-get0(X),r_str(X,A,[]).
r_str(10,A,A):-!.
r_str(X,A,B):-append(B,[X],B1),get0(X1),r_str(X1,A,B1).

pr_p_s:-see('d:/GitHub/GitKraken/SWI-Prolog-and-F-Sharp/TextFile.txt'), reading_starter(), seen. /*чтение*/

reading_starter():-get0(X),read_pol(X).

read_pol(-1):-!.
read_pol(_):-read_str(Lang), write(Lang), read_str(X).
