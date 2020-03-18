man(anatoliy).
man(dimitriy).
man(kolya).
man(stepan).
woman(zoya).
woman(larisa).
woman(irina).
woman(vika).
woman(anya).
woman(tanya).
sin(dimitriy, anatoliy).
sin(stepan, anatoliy).
sin(dimitriy, zoya).
sin(stepan, zoya).
sin(tanya,dimitriy).
sin(vika, dimitriy ).
sin(kolya, stepan).
sin(anya, stepan).
sin(tanya,larisa).
sin(vika, larisa ).
sin(kolya,irina).
sin(anya,irina).

bro(X,Y):-man(X),man(Y), sin(X,Z),sin(Y,Z), man(Z), not(X=Y).
sis(X,Y):-woman(X),woman(Y), sin(X,Z),sin(Y,Z), man(Z), not(X=Y).

sb(X,Y):-sis(X,Y).
sb(X,Y):-bro(X,Y).
sb(X,Y):-man(X),woman(Y), sin(X,Z),sin(Y,Z),man(Z).
sem(X,Y):-man(X),woman(Y), sin(Z,X),sin(Z,Y).

ded(X,Y):-man(Y), sin(X,Z),sin(Z,Y).
bab(X,Y):-woman(Y), sin(X,Z),sin(Z,Y).

dyadya(X,Y):-man(Y), sb(Y,Z),sin(X,Z).
dyadya(X,Y):-sin(X,Z), sb(Z,W), woman(W),sem(W,Y).

tyotya(X,Y):-sin(X,Z), sb(Z,W), man(W),sem(W,Y).
tyotya(X,Y):- woman(Y),sin(X,Z), sb(Z,Y).
