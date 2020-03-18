man(valentin).
man(antoan).
man(jaxon).
man(petya).
man(kolya).
woman(zoya).
woman(sveta).
woman(alisa).
woman(alexa).
woman(anna).
dite(antoan,valentin).
dite(antoan,zoya).
dite(anna,valentin).
dite(anna,zoya).
dite(petya,antoan).
dite(petya,sveta).
dite(kolya,antoan).
dite(alisa,anna).
dite(alisa,jaxon).
dite(alexa,anna).
dite(alexa,jaxon).

sin1(X,Y):-dite(X,Y),man(X).
doch(X,Y):-dite(X,Y),woman(X),!.

brak(X,Y):-dite(Z,X),!,dite(Z,Y),not(X=Y).

bro(X,Y):-man(Y),dite(X,Z),!,dite(Y,Z),not(X=Y).
sis(X,Y):-woman(Y),dite(X,Z),!,dite(Y,Z),not(X=Y).

br_s(X,Y):-bro(X,Y),!.
br_s(X,Y):-sis(X,Y).

ded(X,Y):-man(Y),dite(X,Z),dite(Z,Y),!.
bab(X,Y):-woman(Y),dite(X,Z),dite(Z,Y).

dyadya(X,Y):-dite(X,Z),dite(Z,Q),dite(Y,Q),man(Q),not(Q=Z),!.
