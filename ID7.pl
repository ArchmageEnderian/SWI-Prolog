read_str(A):-get0(X),r_str(X,A,[]).
r_str(10,A,A):-!.
r_str(X,A,B):-append(B,[X],B1),get0(X1),r_str(X1,A,B1).


:-dynamic high/2.
high_r(X,Y):-repeat,(high(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(high(X,Y))); X=nil, Y=nil).

pr_h_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/high.txt'), high_r(X,_), X=nil, told.       /*������*/
pr_h_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/high.txt'), get0(Sym), read_high(Sym), seen. /*������*/

read_high(-1):-!.
read_high(_):-read_str(Lang), name(X,Lang),read(Y),asserta(high(X,Y)), get0(Sym),read_high(Sym).


:-dynamic dec1/2.
decl_r(X,Y):-repeat,(dec1(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(dec1(X,Y))) ;X=nil,Y=nil).

pr_d_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/decl.txt'),decl_r(X,_),X=nil,told.
pr_d_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/decl.txt'), get0(Sym), read_dec1(Sym),seen.
read_dec1(-1):-!.
read_dec1(_):- read_str(Lang),name(X,Lang),read(Y),asserta(dec1(X,Y)),get0(Sym),read_dec1(Sym).


:-dynamic interpret/2.
interpret_r(X,Y):-repeat,(interpret(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(interpret(X,Y))); X=nil, Y=nil).

pr_in_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/interpret.txt'), interpret_r(X,_), X=nil, told.       /*������*/
pr_in_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/interpret.txt'), get0(Sym), read_interpret(Sym), seen. /*������*/

read_interpret(-1):-!.
read_interpret(_):-read_str(Lang), name(X,Lang),read(Y),asserta(interpret(X,Y)), get0(Sym),read_interpret(Sym).


:-dynamic oop/2.
oop_r(X,Y):-repeat,(oop(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(oop(X,Y))); X=nil, Y=nil).

pr_oop_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/oop.txt'), oop_r(X,_), X=nil, told.       /*������*/
pr_oop_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/oop.txt'), get0(Sym), read_oop(Sym), seen. /*������*/

read_oop(-1):-!.
read_oop(_):-read_str(Lang), name(X,Lang),read(Y),asserta(oop(X,Y)), get0(Sym),read_oop(Sym).


:-dynamic cross/2.
cross_r(X,Y):-repeat,(cross(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(cross(X,Y))); X=nil, Y=nil).

pr_cr_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/cross.txt'), cross_r(X,_), X=nil, told.       /*������*/
pr_cr_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/cross.txt'), get0(Sym), read_cross(Sym), seen. /*������*/

read_cross(-1):-!.
read_cross(_):-read_str(Lang), name(X,Lang),read(Y),asserta(cross(X,Y)), get0(Sym),read_cross(Sym).


:-dynamic visual/2.
visual_r(X,Y):-repeat,(visual(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(visual(X,Y))); X=nil, Y=nil).

pr_vi_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/visual.txt'), visual_r(X,_), X=nil, told.       /*������*/
pr_vi_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/visual.txt'), get0(Sym), read_visual(Sym), seen. /*������*/

read_visual(-1):-!.
read_visual(_):-read_str(Lang), name(X,Lang),read(Y),asserta(visual(X,Y)), get0(Sym),read_visual(Sym).


:-dynamic mobile/2.
mobile_r(X,Y):-repeat,(mobile(X,Y) -> (nl,write(X),nl,write(Y),write("."), retract(mobile(X,Y))); X=nil, Y=nil).

pr_mo_t:-tell('d:/GitHub/SWI-Prolog/Fukinator_lite_data/mobile.txt'), mobile_r(X,_), X=nil, told.       /*������*/
pr_mo_s:-see('d:/GitHub/SWI-Prolog/Fukinator_lite_data/mobile.txt'), get0(Sym), read_mobile(Sym), seen. /*������*/

read_mobile(-1):-!.
read_mobile(_):-read_str(Lang), name(X,Lang),read(Y),asserta(mobile(X,Y)), get0(Sym),read_mobile(Sym).




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



aki:-pr_h_s, pr_d_s, pr_in_s, pr_oop_s, pr_oop_s, pr_vi_s, pr_mo_s,
    question1(X1),question2(X2),question3(X3),question4(X4),question5(X5),question6(X6),question7(X7),
    prov(X1,X2,X3,X4,X5,X6,X7).

prov(X1,X2,X3,X4,X5,X6,X7):-otvet(X1,X2,X3,X4,X5,X6,X7),!.
prov(X1,X2,X3,X4,X5,X6,X7):-add(X1,X2,X3,X4,X5,X6,X7),!.

otvet(X1,X2,X3,X4,X5,X6,X7):-high(X,X1),dec1(X,X2),interpret(X,X3),oop(X,X4),cross(X,X5),visual(X,X6),mobile(X,X7),write(X),!.
add(X1,X2,X3,X4,X5,X6,X7):- write("������, �� ���� �������. � ������!\n������� ����������� ���������"),read(Q), asserta(high(Q,X1)), asserta(dec1(Q,X2)), asserta(interpret(Q,X3)), asserta(oop(Q,X4)), asserta(cross(Q,X5)), asserta(visual(Q,X6)),
asserta(mobile(Q,X7)), reload.

reload:-pr_h_t, pr_d_t, pr_in_t, pr_oop_t, pr_oop_t, pr_vi_t, pr_mo_t,
pr_h_s, pr_d_s, pr_in_s, pr_oop_s, pr_oop_s, pr_vi_s, pr_mo_s.


pr_test:-read(X), (X is 1) -> (write("Yes")); write("No").
