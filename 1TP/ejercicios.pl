%Ejercicio2%

	%a%
concatList([],L2,L2).
concatList([A|B],L2,[A|R]):-
	concatList(B,L2,R).


rIzq([A|B],R):-
	concatList(B,[A],R).

	%b%
eliminarUltimo([_],[]).
eliminarUltimo([A|B],[A|C]):-
	eliminarUltimo(B,C).


ultimo([X],X).
ultimo([_|B],R):-
	ultimo(B,R).

rDer(L,R):-
	ultimo(L,P1),
	eliminarUltimo(L,P2),
	concatList([P1],P2,R),
	!.


	%c%
delAll([],_,[]).

delAll([E|L],E,R):-
	delAll(L,E,R).

delAll([A|L],E,[A|R]):-
	A \= E,
	delAll(L,E,R).


	%d%
switch([],_,_,[]).
switch([A|L],A,B,[B|R]):-
	A\=B,
	switch(L,A,B,R),
	!.

switch([X|L],A,B,[X|R]):-
	switch(L,A,B,R),
	!.


	%e%
cardinalidad([],0).
cardinalidad([A|B],N):-
	delAll([A|B],A,L),
	cardinalidad(L,M),
	N is M+1,
	!.


	%f%
invertir(L,R):-
	invertir(L,[],R).

invertir([],L,L).
invertir([A|B],L,R):-
	invertir(B,[A|L],R).


	%g%
sufijos(L,L).
sufijos([_|B], R):-
	sufijos(B,R).


	%h%
genPalin(L,R):-
	genPalin(L,[],X),
	concatList(L,X,R).

genPalin([],X,X).
genPalin([A|B],L,R):-
	genPalin(B,[A|L],R).


	%i%
doblar([],[]).
doblar([A|B],[A,A|C]):-
	doblar(B,C).


%ejercicio3%

	%a: A in B?	%
pertenece(A,[A|_]).
pertenece(A,[C|D]):-
	A \= C,
	pertenece(A,D),
	!.

inclusion([],_).
inclusion([A|B], L):-
	pertenece(A,L),
	inclusion(B,L),
	!.
	
	%b%
igualdad([],[]).
igualdad([A|B],[A|B]):-
	igualdad(B,B).


	%c%
union(A,B,R):-
	concatList(A,B,R).


	%d%
interseccion([],_,[]).

interseccion([A|X],L,R):-
	\+ pertenece(A,L),
	interseccion(X,L,R).

interseccion([A|X],L,[A|R]):-
	pertenece(A,L),
	interseccion(X,L,R),
	!.

%Para hacer la diferencia entre dos listas
%		L1	  -	L2		=	R
%	[a,b,c] - [b,c,d] = [a]

%	Si x de L2 coincide con y de L1, entonces R no lo posee
%  Si x de L2 NO coincide con y de L1, entonces R lo posee

% Emplear Tail Recursion
diferencia([],_,[]).
diferencia([A|L],B,X):-
	pertenece(A,B),
	diferencia(L,B,X).

diferencia([A|L], B, [A|X]):-
	\+ pertenece(A,B),
	diferencia(L,B,X).



producto([], _, []).
producto([A|As], B, R) :-
    pares_con(A, B, R1),
    producto(As, B, R2),
    concatList(R1, R2, R).

pares_con(_, [], []).
pares_con(A, [B|Bs], [(A,B)|R]) :-
    pares_con(A, Bs, R).
