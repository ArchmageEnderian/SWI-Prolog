read_str(A):-get0(X),r_str(X,A,[]).
r_str(10,A,A):-!.
r_str(X,A,B):-append(B,[X],B1),get0(X1),r_str(X1,A,B1).


:-dynamic high/2.
high_r(X,Y):-repeat,(high(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(high(X,Y))); X=nil, Y=nil).

pr_h_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/high.txt'), high_r(X,_), X=nil, told.       /*запись*/
pr_h_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/high.txt'), get0(Sym), read_high(Sym), seen. /*чтение*/

read_high(-1):-!.
read_high(_):-read_str(Lang), name(X,Lang),read(Y),asserta(high(X,Y)), get0(Sym),read_high(Sym).


:-dynamic dec1/2.
decl_r(X,Y):-repeat,(dec1(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(dec1(X,Y))) ;X=nil,Y=nil).

pr_d_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/decl.txt'),decl_r(X,_),X=nil,told.
pr_d_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/decl.txt'), get0(Sym), read_high1(Sym),seen.
read_high1(-1):-!.
read_high1(_):-	read_str(Lang),name(X,Lang),read(Y),asserta(dec1(X,Y)),
				get0(Sym),read_high1(Sym).


interpret(ruby,1).
interpret(python,1).
interpret(f_sharp,1).
interpret(prolog,1).
interpret(c_sharp,0).
interpret(c_plu_plus,0).
interpret(c,0).
interpret(asm,0).

oop(ruby,3).
oop(c_sharp,3).
oop(python,2).
oop(c_plu_plus,2).
oop(f_sharp,1).
oop(prolog,1).
oop(c,0).
oop(asm,0).

cross(ruby,1).
cross(python,1).
cross(c_plu_plus,1).
cross(prolog,1).
cross(c,1).
cross(asm,1).
cross(c_sharp,0).
cross(f_sharp,0).

visual(c_sharp,3).
visual(ruby,2).
visual(python,2).
visual(c_plu_plus,2).
visual(f_sharp,2).
visual(prolog,1).
visual(c,0).
visual(asm,0).

mobile(c_sharp,0).
mobile(ruby,0).
mobile(python,0).
mobile(c_plu_plus,0).
mobile(f_sharp,0).
mobile(prolog,0).
mobile(c,0).
mobile(asm,0).

question1(X1):-	write("Is your language high level?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X1).

question2(X2):-	write("Is your language declarative?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X2).

question3(X3):-	write("Is your language interpret?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X3).

question4(X4):-	write("Does your language support OOP?"),nl,
				write("3. It is OOP itself"),nl,
				write("2. yes"),nl,
				write("1. yes, but very hard"),nl,
				write("0. NO"),nl,
				read(X4).

question5(X5):-	write("Is your language crossplatformic?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X5).

question6(X6):-	write("Does your language support visual interface for user?"),nl,
				write("3. It is visual itself"),nl,
				write("2. yes"),nl,
				write("1. yes, but very hard"),nl,
				write("0. NO"),nl,
				read(X6).

question7(X7):-	write("Is your language for mobile phones?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X7).



aki:-pr_h_s,pr_d_s, question1(X1),question2(X2),question3(X3),question4(X4),question5(X5),question6(X6),question7(X7),
    prov(X1,X2,X3,X4,X5,X6,X7).

prov(X1,X2,X3,X4,X5,X6,X7):-otvet(X1,X2,X3,X4,X5,X6,X7),!.
prov(X1,X2,X3,X4,X5,X6,X7):-add(X1,X2,X3,X4,X5,X6,X7),!.

otvet(X1,X2,X3,X4,X5,X6,X7):-high(X,X1),dec1(X,X2),interpret(X,X3),oop(X,X4),cross(X,X5),visual(X,X6),mobile(X,X7),write(X),!.
add(X1,X2,X3,X4,X5,X6,X7):- write("’орошо, ты мен€ победил. я сдаюсь!\n¬ведите загаданного персонажа"),read(Q), asserta(high(Q,X1)).


pr_test:-read(X), (X is 1) -> (write("Yes")); write("No").
