%         _        _    ____   ____                                  
%        | |      / \  | __ ) |___ \                                 
%        | |     / _ \ |  _ \   __) |                                
%        | |___ / ___ \| |_) | / __/                                 
%        |_____/_/   \_\____(_)_____|                                
%            _    ____ _____ _____ ____   ___ ___ ____  _____ ____   
%           / \  / ___|_   _| ____|  _ \ / _ \_ _|  _ \| ____/ ___|  
%          / _ \ \___ \ | | |  _| | |_) | | | | || | | |  _| \___ \  
%         / ___ \ ___) || | | |___|  _ <| |_| | || |_| | |___ ___) | 
%        /_/   \_\____/ |_| |_____|_| \_\\___/___|____/|_____|____/  
%         _____ _   _   ____  ____   ___  _     ___   ____           
%        | ____| \ | | |  _ \|  _ \ / _ \| |   / _ \ / ___|          
%        |  _| |  \| | | |_) | |_) | | | | |  | | | | |  _           
%        | |___| |\  | |  __/|  _ <| |_| | |__| |_| | |_| |          
%        |_____|_| \_| |_|   |_| \_\\___/|_____\___/ \____|     
%

%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |              TDA SPACE               | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 

% Breve Descripcion :
%		En este laboratorio se nos solicita implementar el juego Asteroids bajo el lenguaje de programación Prolog. 
%	Para este laboratorio, se debe implementar el videojuego descrito bajo el paradigma de programación Lógico. Con 
%	ello se espera que podamos generar un código capaz de validar tanto como posiciones, estados de juego, colisiones 
%	entre otros aspectos a tener en cuenta para la realización de forma correcta de una partida autónoma.
% Para ello contamos con lo siguente:

%Representacion de un Space está de la forma:
%Space = [Variables,nave,asteroides,disparos]
%	Variables = [N,M,A,P,L,Seed]
%createSpace(N,M,A,P,L,Seed,Space)

%Predicado que crea los diferentes Spaces Definidos 
%Space 5x10 (2, 4 y 5 asteroides).
	% 2 Asteroides.
createSpace(5,10,2,P,L,Seed,Space):-
	Space = [[5,10,2,P,L,Seed] , 
	[[5,10,2,P,L,Seed],5,2,1,4,1,0], 
	[ 	[[5,10,2,P,L,Seed],1,3,90,1,2, Seed], 
		[[5,10,2,P,L,Seed],8,4,270,1,2,Seed]],
	[ ]].
	% 4 Asteroides.
createSpace(5,10,4,P,L,Seed,Space):-
	Space = [[5,10,4,P,L,Seed],
	[[5,10,4,P,L,Seed],5,3,1,4,1,0],
	[	[[5,10,4,P,L,Seed],9,4,90,1,2, Seed],
		[[5,10,4,P,L,Seed],7,0,270,1,2,Seed],
		[[5,10,4,P,L,Seed],2,0,180,1,2,Seed],
		[[5,10,4,P,L,Seed],1,4,90,1,2, Seed]],
	[ ]]. 
	% 5 Asteroides.
createSpace(5,10,5,P,L,Seed,Space):-
	Space = [[5,10,5,P,L,Seed],
	[[5,10,5,P,L,Seed],5,3,1,4,1,0],
	[	[[5,10,5,P,L,Seed],8,4,225,1,1,Seed],
		[[5,10,5,P,L,Seed],6,1,180,1,1,Seed],
		[[5,10,5,P,L,Seed],2,1,42,1,1, Seed],
		[[5,10,5,P,L,Seed],9,1,95,1,1, Seed],
		[[5,10,5,P,L,Seed],1,4,340,1,1,Seed]],
	[ ]].

%Space 10x12 (4 y 6 asteroides)
	% 4 Asteroides.
createSpace(10,12,4,P,L,Seed,Space):-
	Space = [[10,12,4,P,L,Seed],
	[[10,12,4,P,L,Seed],6,5,1,4,1,0],
	[	[[10,12,4,P,L,Seed],9,8,245,1,2, Seed],
		[[10,12,4,P,L,Seed],10,2,170,1,2,Seed],
		[[10,12,4,P,L,Seed],3,8,330,1,2, Seed],
		[[10,12,4,P,L,Seed],3,2,80,1,2,  Seed]],
	[ ]].
	% 6 Asteroides.
createSpace(10,12,6,P,L,Seed,Space):-
	Space = [[10,12,6,P,L,Seed],
	[[10,12,6,P,L,Seed],6,5,1,4,1,0],
	[	[[10,12,6,P,L,Seed],1,3,90,1,2,  Seed],
		[[10,12,6,P,L,Seed],1,9,180,1,2, Seed],
		[[10,12,6,P,L,Seed],6,9,270,1,2, Seed],
		[[10,12,6,P,L,Seed],11,9,360,1,2,Seed],
		[[10,12,6,P,L,Seed],11,3,45,1,2, Seed],
		[[10,12,6,P,L,Seed],6,1,225,1,2, Seed]],
		[ ]].

%Space 20x20 (8 asteroides)
	% 8 Asteroides.
createSpace(20,20,8,P,L,Seed,Space):-
	Space = [[20,20,8,P,L,Seed],
	[[20,20,8,P,L,Seed],10,10,1,4,1,0],
	[	[[20,20,8,P,L,Seed],17,16,270,1,2,Seed],
		[[20,20,8,P,L,Seed],13,13,225,1,2,Seed],
		[[20,20,8,P,L,Seed],5,11,45,1,2,  Seed],
		[[20,20,8,P,L,Seed],3,3,25,1,2,   Seed],
		[[20,20,8,P,L,Seed],9,6,135,1,2,  Seed],
		[[20,20,8,P,L,Seed],16,7,190,1,2, Seed],
		[[20,20,8,P,L,Seed],9,17,320,1,2, Seed],
		[[20,20,8,P,L,Seed],4,17,0,1,2,   Seed]],
	[ ]].

%PERTENENCIA SPACE.
%Predicado que verifica si el elemento entregado es un Space Valido.
%No se verifican las posiciones ya que el Algoritmo las posiciona con el modulo 
% donde deberia verificar realmente
isSpace([[N,M,A,P,L,Seed],[[B,C,D,E,F,G],X,Y,_,_,_,_],Asteroides,_]):- 
	number(N),number(M),number(A),number(L),integer(P),integer(Seed),
	N == B, M== C, A == D, P == E, L == F, Seed == G,
	Y<N,X<M,length(Asteroides,A).

%SELECTORES SPACE.
%Predicados que selecciona de un Space el componente solcitado.
%Selector Variable Space.
sVarSpace([Var,_,_,_],Var).
%Selector VariableN-Space
sVarNSpa([[N,_,_,_,_,_]|_],N).
%Selector VariableM-Space
sVarMSpa([[_,M,_,_,_,_]|_],M).
%Selector VariableA-Space
sVarASpa([[_,_,A,_,_,_]|_],A).
%Selector VariableP-Space
sVarPSpa([[_,_,_,P,_,_]|_],P).
%Selector VariableL-Space
sVarLSpa([[_,_,_,_,L,_]|_],L).
%Selector VariableSEED-Space
sVarSdSpa([[_,_,_,_,_,Seed]|_],Seed).
%Selector Nave-Space
sNavSpa([_,Nave,_,_],Nave).
%Selector Asteroides-Space
sAstSpa([_,_,Asteroides,_],Asteroides).
%Selector Disparos-Space
sDisSpa([_,_,_,Disparos],Disparos).

%MODIFICADORES SPACE.
%Predicados que modifican el componente del Space.
%Modificar VariableA-Space
mVarASpa([[N,M,_,P,L,Seed],Nave,Asteroides,Disparos] ,NewA ,[[N,M,NewA,P,L,Seed],Nave,Asteroides,Disparos]).
%Modificar Nave-Space
mNavSpa([[N,M,A,P,L,Seed],_,Asteroides,Disparos] ,NewNav ,[[N,M,A,P,L,Seed],NewNav,Asteroides,Disparos]).
%Modificar Asteroides-Space
mAstSpa([[N,M,A,P,L,Seed],Nave,_,Disparos] ,NewAst ,[[N,M,A,P,L,Seed],Nave,NewAst,Disparos]).
%Modificar Disparos-Space
mDisSpa([[N,M,A,P,L,Seed],Nave,Asteroides,_] ,NewDisp ,[[N,M,A,P,L,Seed],Nave,Asteroides,NewDisp]).


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |              TDA NAVE                | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


% Representacion de una nave de la forma:
% [[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo]
% [[5,10,4,P,L,Seed],5,3,1,4,1,0],

%PERTENENCIA NAVE.
%Predicado que verifica si el elemento pasado es una nave.
isNave([[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo]):-
	number(N),number(M),number(A),number(L),integer(P),integer(Seed),number(Px),
	number(Py),number(Velocidad),integer(SeedN),number(EstadodeJuego),number(Angulo),
	Px<M,Py<N.

%SELECTORES NAVE.
%Predicado que selecciona componente y la entrega de una Nave.
%Selector Variables
sVarNav([Variables, _, _ , _, _, _, _],Variables).
%Selector VariableN-Nave
sVarNNav([[N,_,_,_,_,_], _, _ , _, _, _, _],N).
%Selector VariableM-Nave
sVarMNav([[_,M,_,_,_,_], _, _ , _, _, _, _],M).
%Selector VariableA-Nave
sVarANav([[_,_,A,_,_,_], _, _ , _, _, _, _],A).
%Selector VariableP-Nave
sVarPNav([[_,_,_,P,_,_], _, _ , _, _, _, _],P).
%Selector VariableL-Nave
sVarLNav([[_,_,_,_,L,_], _, _ , _, _, _, _],L).
%Selector VariableSeed-Nave
sVarSeedNav([[_,_,_,_,_,Seed], _, _ , _, _, _, _],Seed).
%Selector Px - Nave
sPxNav([_, Px, _, _, _, _, _],Px).
%Selector Py - Nave
sPyNav([_, _, Py, _, _, _, _],Py).
%Selector Velocidad - Nave
sVelNav([_, _, _, Velocidad, _, _, _],Velocidad).
%Selector Seed - Nave
sSeedNav([_, _, _, _, Seed, _, _],Seed).
%Selector EstadoJuego - Nave
sEJNav([_, _, _, _, _, EstadoJuego, _],EstadoJuego).
%Selector Angulo - Nave
sAngNav([_, _, _, _, _, _, Angulo],Angulo).

%MODIFICADORES NAVE
%Predicado que modifica el componente de una nave.
%Modificar A .
mVarANav([[N,M,_,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo], NewA ,[[N,M,NewA,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo]).
%Modificar Px-Nave.
mPxNav([[N,M,A,P,L,Seed], _, Py , Velocidad, SeedN, EstadodeJuego, Angulo], NewPx ,[[N,M,A,P,L,Seed], NewPx, Py , Velocidad, SeedN, EstadodeJuego, Angulo]).
%Modificar Py-Nave.
mPyNav([[N,M,A,P,L,Seed], Px, _ , Velocidad, SeedN, EstadodeJuego, Angulo], NewPy ,[[N,M,A,P,L,Seed], Px, NewPy , Velocidad, SeedN, EstadodeJuego, Angulo]).
%Modificar Velocidad-Nave.
mVelNav([[N,M,A,P,L,Seed], Px, Py , _, SeedN, EstadodeJuego, Angulo], NewVel ,[[N,M,A,P,L,Seed], Px, Py , NewVel, SeedN, EstadodeJuego, Angulo]).
%Modificar Seed-Nave.
mSeedNav([[N,M,A,P,L,Seed], Px, Py , Velocidad, _, EstadodeJuego, Angulo], NewSeed ,[[N,M,A,P,L,Seed], Px, Py , Velocidad, NewSeed, EstadodeJuego, Angulo]).
%Modificar EstadoJuego-Nave.
mEJNav([[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, _, Angulo], NewEJ ,[[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, NewEJ, Angulo]).
%Modificar Angulo-Nave
mAngNav([[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, _], NewAng ,[[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, NewAng]).


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |            TDA ASTEROIDE             | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


%Representacion de un Asteroide.
%[Variables,Px,Py,Angulo,Velocidad,Radio,Seed],
%[[20,20,8,P,L,Seed],17,16,270,1,2,4]

%PERTENENCIA ASTEROIDE.
%Predicado que verifica si el elemento entregado es un Asteroide.
isAsteroide([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,SeedA]):-
	number(N),number(M),number(A),number(L),integer(P),integer(Seed),number(Px),integer(Radio),
	number(Py),number(Velocidad),integer(SeedA),number(Angulo),
	Px<M,Py<N.

%SELECTORES ASTEROIDE
%Predicado que selecciona el elemento de un Asteroide.
%Selector Variables
sVarAst([Variables,_,_,_,_,_,_],Variables).
%Selector Variable N Asteroide
sVarNAst([[N,_,_,_,_,_],_,_,_,_,_,_],N).
%Selector Variables M Asteroide
sVarMAst([[_,M,_,_,_,_],_,_,_,_,_,_],M).
%Selector Variables A Asteroide
sVarAAst([[_,_,A,_,_,_],_,_,_,_,_,_],A).
%Selector Variables P Asteroide
sVarPAst([[_,_,_,P,_,_],_,_,_,_,_,_],P).
%Selector Variables L Asteroide
sVarLAst([[_,_,_,_,L,_],_,_,_,_,_,_],L).
%Selector Variables Seed Asteroide
sVarSeedAst([[_,_,_,_,_,Seed],_,_,_,_,_,_],Seed).
%Selector Px Asteroide
sPxAst([_,Px,_,_,_,_,_],Px).
%Selector Py Asteroide
sPyAst([_,_,Py,_,_,_,_],Py).
%Selector Angulo Asteroide
sAngAst([_,_,_,Angulo,_,_,_],Angulo).
%Selector Velocidad Asteroide
sVelAst([_,_,_,_,Velocidad,_,_],Velocidad).
%Selector Radio Asteroide
sRadAst([_,_,_,_,_,Radio,_],Radio).
%Selector Seed Asteroide
sSeedAst([_,_,_,_,_,_,Seed],Seed).

%MODIFICADORES ASTEROIDE
%Predicados que Modifican un elemento, de un Asteroide.
%Modifica A Asteroides
mVarAAst([[N,M,_,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,Seed], NewA,[[N,M,NewA,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,Seed]).
%Modifica Px Asteroides
mPxAst([[N,M,A,P,L,Seed],_,Py,Angulo,Velocidad,Radio,Seed], NewPx,[[N,M,A,P,L,Seed],NewPx,Py,Angulo,Velocidad,Radio,Seed]).
%Modifica Py Asteroides
mPyAst([[N,M,A,P,L,Seed],Px,_,Angulo,Velocidad,Radio,Seed], NewPy,[[N,M,A,P,L,Seed],Px,NewPy,Angulo,Velocidad,Radio,Seed]).
%Modifica Angulo Asteroides
mAngAst([[N,M,A,P,L,Seed],Px,Py,_,Velocidad,Radio,Seed], NewAng,[[N,M,A,P,L,Seed],Px,Py,NewAng,Velocidad,Radio,Seed]).
%Modifica Velocidad Asteroides
mVelAst([[N,M,A,P,L,Seed],Px,Py,Angulo,_,Radio,Seed], NewVel,[[N,M,A,P,L,Seed],Px,Py,Angulo,NewVel,Radio,Seed]).
%Modifica Radio Asteroides
mRadAst([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,_,Seed], NewRad,[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,NewRad,Seed]).
%Modifica Seed Asteroides
mSeedAst([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,_], NewSeed,[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,NewSeed]).


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |             TDA DISPAROS             | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


%Representacion Disparo.
%[Variables,Px,Py,Angulo,Velocidad,Largo,Seed],
%[[20,20,8,P,L,Seed],17,17,45,1,2,4]

%SELECTORES DISPARO
%Selector Variables
sVarDis([Variables,_,_,_,_,_,_],Variables).
%Selector Variable N Disparo
sVarNDis([[N,_,_,_,_,_],_,_,_,_,_,_],N).
%Selector Variables M Disparo
sVarMDis([[_,M,_,_,_,_],_,_,_,_,_,_],M).
%Selector Variables A Disparo
sVarADis([[_,_,A,_,_,_],_,_,_,_,_,_],A).
%Selector Variables P Disparo
sVarPDis([[_,_,_,P,_,_],_,_,_,_,_,_],P).
%Selector Variables L Disparo
sVarLDis([[_,_,_,_,L,_],_,_,_,_,_,_],L).
%Selector Variables Seed Disparo
sVarSeedDis([[_,_,_,_,_,Seed],_,_,_,_,_,_],Seed).
%Selector Px Disparo
sPxDis([_,Px,_,_,_,_,_],Px).
%Selector Py Disparo
sPyDis([_,_,Py,_,_,_,_],Py).
%Selector Angulo Disparo
sAngDis([_,_,_,Angulo,_,_,_],Angulo).
%Selector Velocidad Disparo
sVelDis([_,_,_,_,Velocidad,_,_],Velocidad).
%Selector Largo Disparo
sLarDis([_,_,_,_,_,Largo,_],Largo).
%Selector Seed Disparo
sSeedDis([_,_,_,_,_,_,Seed],Seed).

%MODIFICADORES DISPARO
%Modifica A Disparo
mADis([[N,M,_,P,L,Seed],Px,Py,Angulo,Velocidad,Largo,DSeed],NewA,[[N,M,NewA,P,L,Seed],Px,Py,Angulo,Velocidad,Largo,DSeed]).
%Modifica Px Disparo
mPxDis([[N,M,A,P,L,Seed],_,Py,Angulo,Velocidad,Largo,DSeed],NewPx,[[N,M,A,P,L,Seed],NewPx,Py,Angulo,Velocidad,Largo,DSeed]).
%Modifica Py Disparo
mPyDis([[N,M,A,P,L,Seed],Px,_,Angulo,Velocidad,Largo,DSeed],NewPy,[[N,M,A,P,L,Seed],Px,NewPy,Angulo,Velocidad,Largo,DSeed]).
%Modifica Ang Disparo
mAngDis([[N,M,A,P,L,Seed],Px,Py,_,Velocidad,Largo,DSeed],NewAng,[[N,M,A,P,L,Seed],Px,Py,NewAng,Velocidad,Largo,DSeed]).
%Modifica Vel Disparo
mVelDis([[N,M,A,P,L,Seed],Px,Py,Angulo,_,Largo,DSeed],NewVel,[[N,M,A,P,L,Seed],Px,Py,Angulo,NewVel,Largo,DSeed]).
%Modifica Largo Disparo
mLarDis([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,_,DSeed],NewLar,[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,NewLar,DSeed]).
%Modifica Seed Disparo
mSeedDis([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Largo,_],NewSeed,[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Largo,NewSeed]).


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |             FIN DE TDA'S             | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


%Relaciones Varias.

%Amplificador Rand
datos(au,4).
%Modulo Rand
datos(mo,9).
%Incremento Rand
datos(co,1).
%Tamano minimo Asteroide.
datos(tmA,2.1).
datos(amp15, 1.5).
datos(amp25, 2.5).
% Pi
datos(pi,3.1415926535897932384626433832795028841).

%Relacion Valor Random
random(Seed,NSeed):- 
 	datos(au,A),
	datos(mo,M),
	datos(co,C),
	datos(lv,[ ]),
	X is (A*Seed)+C,
	NSeed is mod(X,M).

%Relacion Convierte a un numero a radianes
grad_Rad(Numero, Resultado):-
	datos(pi,PI),
	Resultado is (PI*Numero) / 180.

%Relacion Verifica que dos elemetos han chocado 
chocan(Objeto1x, Objeto1y, Radio1, Objeto2x, Objeto2y, Radio2):-
	Suma1 is Objeto1x-Objeto2x,
	Suma2 is Objeto1y-Objeto2y,
	Pot1 is Suma1^2,
	Pot2 is Suma2^2,
	Res is Pot1 + Pot2,
	Resultado is sqrt(Res),
	Resultado < (Radio1 + Radio2).

%Relacion que concatena lista
concatenar([],L,L).
concatenar([X|M],L,[X|Z]):- concatenar(M,L,Z).

%Relacion borra primer "X" presente en el arreglo.
	%Ejemplo: elim_elem(a,[z,a,a,a,b,a,s,d],R).
elim_elem(_, [], []). 
elim_elem(Y, [Y|Xs], Zs):- elim_elem(Y, Xs, Zs), !. 
elim_elem(X, [Y|Xs], [Y|Zs]):- elim_elem(X, Xs, Zs).

%Elimina todos los X presentes en el arreglo.
elim_todos_elem(_, [], []). 
elim_todos_elem(Y, [Y|Xs], Zs):- elim_elem(Y, Xs, Zs). 
elim_todos_elem(X, [Y|Xs], [Y|Zs]):- elim_elem(X, Xs, Zs).

%Agregar un elemento a una lista.
agregar(X,List,[X|List]).

%Remover Elem X de una lista.
removerElem(X, [X|Xs], Xs). 
removerElem(X, [Y|Ys], [Y|Zs]):- removerElem(X, Ys, Zs).


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |           MOVIMIENTO SIMPLE          | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


%Relacion que modifica angulos, velocidades y Seed.
modificarAst([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,_],AstModificado):- 
	NewSeed is Seed*Seed + 5*Seed,
	NewAngulo is Angulo + random(NewSeed),
	NewVelocidad is Velocidad + random(NewSeed),
	AstModificado = [[N,M,A,P,L,Seed],Px,Py,NewAngulo,NewVelocidad,Radio,NewSeed].

%Relaciones que "mueve" el objeto a un t+1.
%Mover Asteroides.
movAst([_,_,_,_,_,Radio,_],AstModificado):- 
	Radio =< 0,
	AstModificado = 0.
movAst([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,SeedA],AstModificado):- 
	grad_Rad(Angulo,AngGrad),
	Npx is Px + Velocidad*cos(AngGrad),
	Npy is Py + Velocidad*sin(AngGrad),
	Rpx is integer(Npx),
	Rpy is integer(Npy),
	RPx is mod(Rpx,M),
	RPy is mod(Rpy,N),
	AstModificado = [[N,M,A,P,L,Seed],RPx,RPy,Angulo,Velocidad,Radio,SeedA].

%Mover Disparos.
	%Se tiene 2 casos:
	%Caso Largo > 0 (Modifica el Disparo).
movDisp([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Largo,SeedD],DispModificado):-
	Largo > 0,
	grad_Rad(Angulo,AngGrad),
	Npx is Px + Velocidad*cos(AngGrad),
	Npy is Py + Velocidad*sin(AngGrad),
	Rpx is integer(Npx),
	Rpy is integer(Npy),
	RPx is mod(Rpx,M),
	RPy is mod(Rpy,N),
	NewLargo is Largo - Velocidad,
	DispModificado = [[N,M,A,P,L,Seed],RPx,RPy,Angulo,Velocidad,NewLargo,SeedD].
	%Caso Largo < 0 (Elimina el Disparo).
movDisp([[_,_,_,_,_,_],_,_,_,_,Largo,_],DispModificado):-
	Largo =< 0,
	DispModificado = 0.

%Movimiento simple de la nave, sin modificar angulo o velocidad.
	%Condicion velocidad mayor a 0.
moShip([[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo],NaveMovida):-
	Velocidad>0,
	grad_Rad(Angulo,AngGrad),
	Npx is Px + Velocidad*cos(AngGrad),
	Npy is Py + Velocidad*sin(AngGrad),
	Rpx is integer(Npx),
	Rpy is integer(Npy),
	RPx is mod(Rpx,M),
	RPy is mod(Rpy,N),
	NuevaVel is Velocidad - 1,
	NaveMovida = [[N,M,A,P,L,Seed], RPx, RPy , NuevaVel, SeedN, EstadodeJuego, Angulo].
	%Condicion velocidad menor igual a 0 (Se queda quieta la nave).
moShip([[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo],NaveMovida):-
	Velocidad=<0,
	NaveMovida = [[N,M,A,P,L,Seed], Px, Py , 0, SeedN, EstadodeJuego, Angulo].


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |       VERIFICADOR DE COLISIONES      | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


%Encontrar Asteroide que chocó con un disparo.   
encontrarAsteroide([[_,_,_,_,_,_],Pxd,Pyd,Angulod,Velocidadd,Largod,DSeed],[[[N,M,A,P,L,Seed],PxA,PyA,_,_,RadioA,_]|Cola],AsteroideChocado):-
	not(chocan(Pxd, Pyd, 0, PxA, PyA, RadioA)),
	encontrarAsteroide([[N,M,A,P,L,Seed],Pxd,Pyd,Angulod,Velocidadd,Largod,DSeed],Cola,AsteroideChocado).

encontrarAsteroide([[_,_,_,_,_,_],Pxd,Pyd,_,_,_,_],[[[N,M,A,P,L,Seed],PxA,PyA,AnguloA,VelocidadA,RadioA,SeedA]|_],AsteroideChocado):-
	chocan(Pxd, Pyd, 0, PxA, PyA, RadioA),
	AsteroideChocado = [[N,M,A,P,L,Seed],PxA,PyA,AnguloA,VelocidadA,RadioA,SeedA].

%Verifica si un asteroide colisiona con alguno en una lista de Asteroides
choque_Ast_ListaAst(_,[]):- false.
choque_Ast_ListaAst([_,Px1,Py1,Angulo1,Velocidad1,Radio1,Seed1],[[_,Px2,Py2,_,_,Radio2,_]|Cola]):- 
	chocan(Px1, Py1, Radio1, Px2, Py2, Radio2); 
	choque_Ast_ListaAst([_,Px1,Py1,Angulo1,Velocidad1,Radio1,Seed1],Cola).

%Verifica si un Disparo Choca con una lista de Asteroides.
choque_Disp_ListaAst(_,[]):- false.
choque_Disp_ListaAst([_,Pxd,Pyd,Angulod,Velocidadd,Largod,DSeed],[[_,PxA,PyA,_,_,RadioA,_]|Cola]):-
	chocan(Pxd, Pyd, 0, PxA, PyA, RadioA); 
	choque_Ast_ListaAst([_,Pxd,Pyd,Angulod,Velocidadd,Largod,DSeed],Cola).

%Verifica si un Nave choca con una lista de Asteroides.
%Ast [[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,_]
%Nav [[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, angulo]

%[[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, _]
choque_Nav_ListaAst(_,[]):- false.
choque_Nav_ListaAst([_, Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo],[[_,Px2,Py2,_,_,Radio2,_]|Cola]):- 
	chocan(Px, Py, 1, Px2, Py2, Radio2); 
	choque_Ast_ListaAst([_, Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo],Cola).

%Algorimo que separa Aasteroides que Chocan y no Chocan.
%Para los que chocan.
ch_Ast_Ast([CabR|ColaR],Original,Choca,NoChoca,Resultado):-
	removerElem(CabR,Original,OriginalSinCabR),
	choque_Ast_ListaAst(CabR,OriginalSinCabR),
	modificarAst(CabR,R),
	agregar(R,Choca,NewChoca),
	ch_Ast_Ast(ColaR,Original,NewChoca,NoChoca,Resultado).

%Para los que no chocan.
ch_Ast_Ast([CabR|ColaR],Original,Choca,NoChoca,Resultado):-
	removerElem(CabR,Original,OriginalSinCabR),
	not(choque_Ast_ListaAst(CabR,OriginalSinCabR)),
	agregar(CabR,NoChoca,NewNoChoca),
	ch_Ast_Ast(ColaR,Original,Choca,NewNoChoca,Resultado).

%Caso Final lista Vacia.
ch_Ast_Ast([],_,[],NoChoca,Resultado):-
	Resultado = NoChoca.

ch_Ast_Ast([],_,Choca,NoChoca,Resultado):-
	append(Choca,NoChoca,Resultado).

%LLamado de fisicaDeAsteroides a una lista de Asteroides .
apliFisicaAst([[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,SeedA]|Cola],ResultadoProv,ResultadoFinal):-
	fisicaDeAsteroides([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,SeedA],P,Radio,AstFisica),
	append(AstFisica,ResultadoProv,NuevoResultado),
	apliFisicaAst(Cola,NuevoResultado,ResultadoFinal).

apliFisicaAst([],Resultado,ResultadoFinal):-
	ResultadoFinal= Resultado.

%Algoritmo que separa Disparos que chocan de los que no Chocan, ademas de buscar los asteroides que chocan
%con el/los disparos y ademas se eliminan. 

ch_Disps_Asts([],[],[],[],Space,Resultado):- 
	Resultado = Space.

%Sin Disparos que choquen, Solo se guardan los Asteroides entrantes.
ch_Disps_Asts([],Asteroides,[],[],Space,Resultado):-
	mAstSpa(Space,Asteroides,NewSpace),
	Resultado = NewSpace.

%Sin Disparos (Previamente si habian) Esta relacion se guarda para ser el final de
% la recursion. 
ch_Disps_Asts([],Asteroides,AstChocan,DispNoChocan,Space,Resultado):-
	apliFisicaAst(AstChocan,[],NuevosAstChocan),
	append(Asteroides,NuevosAstChocan,AsteroidesLuegoDeColision),
	length(AsteroidesLuegoDeColision,CantidadAsteroides),
	mVarASpa(Space,CantidadAsteroides,NewSpaceA),
	mAstSpa(NewSpaceA,AsteroidesLuegoDeColision,NewSpaceAst),
	mDisSpa(NewSpaceAst,DispNoChocan,NewSpaceDisp),
	Resultado = NewSpaceDisp.

%Separar dos casos.
%Caso Disparo a revisar Choca.
ch_Disps_Asts([Disp|Cola],Asteroides,AstChocan,DispNoChocan,Space,Resultado):-
	choque_Disp_ListaAst(Disp,Asteroides),
	encontrarAsteroide(Disp,Asteroides,AsteroideChocado),
	removerElem(AsteroideChocado,Asteroides,AsteroidesSinChocar),
	agregar(AsteroideChocado,AstChocan,NewAstChocan),
	ch_Disps_Asts(Cola,AsteroidesSinChocar,NewAstChocan,DispNoChocan,Space,Resultado).
	
%Caso Disparo a revisar No Choca.
ch_Disps_Asts([Disp|Cola],Asteroides,AstChocan,DispNoChocan,Space,Resultado):-
	not(choque_Disp_ListaAst(Disp,Asteroides)),
	agregar(Disp,DispNoChocan,NewDispNoChocan),
	ch_Disps_Asts(Cola,Asteroides,AstChocan,NewDispNoChocan,Space,Resultado).


%Choque Nave con algun Asteroide en una lista de asteroides.
%Choca y por lo tanto pierde.
%Ast [[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,_]
%Nav [[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, angulo]
ch_Nave_Asts(Nave,Asteroides,Resultado):-
	choque_Nav_ListaAst(Nave,Asteroides),
	mEJNav(Nave,0,NuevaNave),
	Resultado = NuevaNave.
%Sigue Jugando.
ch_Nave_Asts(Nave,Asteroides,Resultado):-
	not(choque_Nav_ListaAst(Nave,Asteroides)),
	mEJNav(Nave,1,NuevaNave),
	Resultado = NuevaNave.


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |             UPDATE-SPACE             | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


%UpdateSpace(Space Seed).
%mueve el tablero a un t+1 y verifica colisiones tanto de Asteroides-Disparos,
%	Asteroides-Asteroides y Nave-Asteroides.
updateSpace(Space,Resultado):-
	%Obtener Nave,Asteroides y Disparos de Space
	sNavSpa(Space,Nave),
	sAstSpa(Space,Asteroides),
	sDisSpa(Space,Disparos),
	%Movemos todo a un t+1
	moShip(Nave,NuevaNave),
	maplist(movAst,Asteroides,NuevosAsteroides),
	maplist(movDisp,Disparos,NuevosDisparos),
	%Checkeo de Disparos-Asteroides
	ch_Disps_Asts(NuevosDisparos,NuevosAsteroides,[],[],Space,SpaceChoqueDisp_Asts),
	sAstSpa(SpaceChoqueDisp_Asts,AsteroidesChocadoconDisparos),
	%Checkeo de Asteroides-Asteroides
	ch_Ast_Ast(AsteroidesChocadoconDisparos,AsteroidesChocadoconDisparos,[],[],AsteroidesChocadosEntreSi),
	%Checkeo de Nave con Asteroides
	ch_Nave_Asts(NuevaNave,AsteroidesChocadosEntreSi,NaveFinal),	
	%Dado que los disparos quedaron modificados en SpaceChoqueDisp_Asts, solo se procede a modificar 
	%	Nave , Asteroides y la Variable A, que representa la cantidad de Asteroides.
	%Se eliminan los ceros de la lista de Asteroides y Disparos 
	sDisSpa(SpaceChoqueDisp_Asts,DisparosVerificados),
	elim_todos_elem(0,AsteroidesChocadosEntreSi,NewAsteroidesChocadosEntreSi),
	elim_todos_elem(0,DisparosVerificados,NewDisparosVerificados),
	length(NewAsteroidesChocadosEntreSi,CantidadAsteroides),
	mAstSpa(SpaceChoqueDisp_Asts,NewAsteroidesChocadosEntreSi,SpaceConNuevosAsteroides),
	mNavSpa(SpaceConNuevosAsteroides,NaveFinal,SpaceconNuevaNave),
	mVarASpa(SpaceconNuevaNave,CantidadAsteroides,SemiFinalSpace),
	mDisSpa(SemiFinalSpace,NewDisparosVerificados,FinalSpace),
	Resultado = FinalSpace.


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |              MOVE-SHIP               | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


%moveShip(Space angulo velocidad seed).
moveShip(Space,Angulo,Speed,Seed,NewSpace):-
	sNavSpa(Space,Nave),
	% [[N,M,_,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo]
	sAngNav(Nave,AnguloNave),
	sVelNav(Nave,VelocidadNave),
	NewAngulo is Angulo + AnguloNave,
	NewVelocidad is Speed + VelocidadNave + 1,
	mAngNav(Nave,NewAngulo,NaveAnguloModificado),
	mVelNav(NaveAnguloModificado,NewVelocidad,NaveVelocidadModificada),
	mSeedNav(NaveVelocidadModificada,Seed,NaveFinal),
	%Agregamos la nave modificada
	mNavSpa(Space,NaveFinal,SpaceNaveModificada),
	updateSpace(SpaceNaveModificada,SpaceFinal),
	sAstSpa(SpaceFinal,AsteroidesFinales),
	length(AsteroidesFinales,LargoAstFinal),
	LargoAstFinal>0,
	NewSpace = SpaceFinal.

moveShip(Space,Angulo,Speed,Seed,NewSpace):-
	sNavSpa(Space,Nave),
	% [[N,M,_,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo]
	sAngNav(Nave,AnguloNave),
	sVelNav(Nave,VelocidadNave),
	NewAngulo is Angulo + AnguloNave,
	NewVelocidad is Speed + VelocidadNave + 1,
	mAngNav(Nave,NewAngulo,NaveAnguloModificado),
	mVelNav(NaveAnguloModificado,NewVelocidad,NaveVelocidadModificada),
	mSeedNav(NaveVelocidadModificada,Seed,NaveFinal),
	%Agregamos la nave modificada
	mNavSpa(Space,NaveFinal,SpaceNaveModificada),
	updateSpace(SpaceNaveModificada,SpaceFinal),
	sAstSpa(SpaceFinal,AsteroidesFinales),
	length(AsteroidesFinales,LargoAstFinal),
	LargoAstFinal == 0,
	%Significa que Ganó.
	sNavSpa(SpaceFinal,NaveDeSpaceFinal),
	mEJNav(NaveDeSpaceFinal,2,NaveGana),
	mNavSpa(SpaceFinal,NaveGana,SpaceNaveGana),
	NewSpace = SpaceNaveGana.


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |                 SHOOT                | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


shoot(Space,C,Seed,NewSpace):-
	%Creo un disparo a partir de la nave de Space.
	sNavSpa(Space,Nave),
	sPxNav(Nave,Px),
	sPyNav(Nave,Py),
	sVelNav(Nave,Velocidad),
	sAngNav(Nave,Angulo),
	sVarLSpa(Nave,Largo),
	sVarNav(Nave,Variables),
	NewVelocidad is C + Velocidad,
	NuevoDisparo = [Variables,Px,Py,Angulo,NewVelocidad,Largo,Seed],
	sDisSpa(Space,Disparos),
	agregar(NuevoDisparo,Disparos,NuevosDisparos),
	mDisSpa(Space,NuevosDisparos,SpaceModificado),
	updateSpace(SpaceModificado,SpaceFinal),
	NewSpace = SpaceFinal.


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |     RELACIONES PARA SPACE2STRING     | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 

%Predicado que Crea una fila con x elementos
crearXColumnas(X,Provisorio,ResultadoFinal):-
	length(Provisorio,LargoProv),
	X>LargoProv,
	append([0],Provisorio,Resultado),
	crearXColumnas(X,Resultado,ResultadoFinal).

crearXColumnas(X,Provisorio,ResultadoFinal):-
	length(Provisorio,LargoProv),
	X == LargoProv,
	ResultadoFinal = Provisorio.

%Predicado que crea una matriz con y filas de x columnas.
crearYFilas(X,Y,Provisorio,ResultadoFinal):-
	length(Provisorio,LargoProv),
	Y>LargoProv,
	crearXColumnas(X,[],Columnas),
	append([Columnas],Provisorio,Resultado),
	crearYFilas(X,Y,Resultado,ResultadoFinal).

crearYFilas(_,Y,Provisorio,ResultadoFinal):-
	length(Provisorio,LargoProv),
	Y == LargoProv,
	ResultadoFinal = Provisorio.

%Selecciona Elemento N de la forma : sElmN([2,1,2,3],3,X) : X = 2.
sElmN([Y|_], 1, Y).
sElmN([_|Xs], N, Y):-
          N2 is N - 1,
          sElmN(Xs, N2, Y).
%Selecciona el elemento X, Y de una matriz.
sXY(Matriz,X,Y,Resultado):-
	sElmN(Matriz,Y,Fila),
	sElmN(Fila,X,Elemento),
	Resultado is Elemento.
%Predicado que inserta en la ultima posicion el elemento de una lista.
insFinal([], E, [E]).
insFinal([Cabeza|Resto], Elemento, [Cabeza|Lista]):-
	insFinal(Resto, Elemento, Lista).
%Predicado que inserta el elemento en X posicion.
%insert(99,3,[1,2,3,4,5,6,7,8,9],R). : [1, 2, 99, 3, 4, 5, 6, 7, 8 9] 
insert(X,1,[_|R],Prov,Resultado):-
	insFinal(Prov,X,NewProv),
	append(NewProv,R,Lista),
	Resultado = Lista. 
insert(X,Pos,[C|R],Prov,Resultado):- 
	Pos1 is Pos-1,
	insFinal(Prov,C,NewProv),
	insert(X,Pos1,R,NewProv,Resultado). 
%Inserta un elemento en un X e y de una matriz
insertM(X,PosX,1,[C|R],ResultadoProv,Resultado):-
	insert(X,PosX,C,[],NuevaFila),
	display(NuevaFila),
	insFinal(ResultadoProv,NuevaFila,NewResultadoProv),
	append(NewResultadoProv,R,Lista),
	Resultado = Lista.
insertM(X,PosX,PosY,[C|R],ResultadoProv,Resultado):-
	PosY>1,
	PosY1 is PosY-1,
	insFinal(ResultadoProv,C,NewResultadoProv),
	insertM(X,PosX,PosY1,R,NewResultadoProv,Resultado).
%Predicados que Modifica una matriz pasando por todos los elementos de una lista, para 
% Asteroides, disparos y la Nave.
recursionAst(Matriz,[Car|Cola],Resultado):-
	sPxAst(Car,Px),
	NPx is Px+1,
	sPyAst(Car,Py),
	NPy is Py+1,
	sRadAst(Car,Radio),
	insertM(Radio,NPx,NPy,Matriz,[],NuevaMatriz),
	recursionAst(NuevaMatriz,Cola,Resultado).
recursionAst(Matriz,[],Resultado):- 
	Resultado = Matriz.
recursionDis(Matriz,[Car|Cola],Resultado):-
	sPxDis(Car,Px),
	NPx is Px+1,
	sPyDis(Car,Py),
	NPy is Py+1,
	Radio is "D",
	insertM(Radio,NPx,NPy,Matriz,[],NuevaMatriz),
	recursionDis(NuevaMatriz,Cola,Resultado).
recursionDis(Matriz,[],Resultado):- 
	Resultado = Matriz.
recursionNave(Matriz,Nave,Resultado):-
	sPxNav(Nave,Px),
	sPyNav(Nave,Py),
	NPx is Px +1,
	NPy is Py +1,
	Radio is "A",
	insertM(Radio,NPx,NPy,Matriz,[],NuevaMatriz),
	Resultado = NuevaMatriz.
%Predicado que convierte una matriz a String de forma Recursiva.
convertirMatizString([Car|Cola],Prov,String):-
	atomic_list_concat(Car, ',', Atom),atom_string(Atom, StringP),
	string_concat(StringP,",\n,",F),
	string_concat(Prov,F,Res),
	convertirMatizString(Cola,Res,String).
%Caso Base con el arreglo entregado vacio o ultima iteracion.
convertirMatizString([],Prov,String):-
	String = Prov.
%Predicado que pasa un Space a String.
space2String(Space,SpaceStr):-
	%Creamos una Matriz Vacia de NxM
	sVarMSpa(Space,X),
	sVarNSpa(Space,Y),
	sNavSpa(Space,Nave),
	sAstSpa(Space,Asteroides),
	sDisSpa(Space,Disparos),
	crearYFilas(X,Y,[],Matriz),
	%Agregamos La Nave.
	recursionNave(Matriz,Nave,MNave),
	%Agregamos Los Asteroides.
	recursionAst(MNave,Asteroides,MAste),
	%Agregamos Los Disparos.
	recursionDis(MAste,Disparos,MFinal),
	convertirMatizString(MFinal,"",MatrizaString),
	SpaceStr = MatrizaString.


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |         FISICA DE ASTEROIDES         | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 


%Predicado Que Convierte un Asteroide Eliminado en P Asteroides.
%fisicaDeAsteroides(Asteroide,ValorRandom,Tamano,Asteroides)
fisicaDeAsteroides(_,_,Tamano,[]):-
	datos(tmA,TmA),
	Tamano < TmA.

fisicaDeAsteroides([[N,M,A,P,L,VarSeed],Px,Py,Angulo,Velocidad,Rad,Seed],1,_,Resultado):-
	NA is A + 6,
	NewRadio is div(Rad,2) ,

	Newpx1 is Px,

	NewPx1 is integer(Newpx1),

	PxR1 is mod(NewPx1,M),

	Newpy1 is Py,

	NewPy1 is integer(Newpy1),
	
	PyR1 is mod(NewPy1,N),

	NewAngulo1 is Angulo,

	Resultado =	[	[[N,M,NA,P,L,VarSeed],PxR1,PyR1,NewAngulo1,Velocidad,NewRadio,Seed]
				].

fisicaDeAsteroides([[N,M,A,P,L,VarSeed],Px,Py,Angulo,Velocidad,Rad,Seed],2,_,Resultado):-
	datos(amp15,Amp15),
	NA is A + 6,
	NewRadio is div(Rad,2) ,

	Newpx1 is Px,
	Newpx2 is Px + 2*NewRadio,

	NewPx1 is integer(Newpx1),
	NewPx2 is integer(Newpx2),

	PxR1 is mod(NewPx1,M),
	PxR2 is mod(NewPx2,M),

	Newpy1 is Py,
	Newpy2 is Py +  Amp15*NewRadio,

	NewPy1 is integer(Newpy1),
	NewPy2 is integer(Newpy2),
	
	PyR1 is mod(NewPy1,N),
	PyR2 is mod(NewPy2,N),

	NewAngulo1 is Angulo,
	NewAngulo2 is Angulo + 45,
	Resultado =	[	[[N,M,NA,P,L,VarSeed],PxR1,PyR1,NewAngulo1,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR2,PyR2,NewAngulo2,Velocidad,NewRadio,Seed]
				].
	
fisicaDeAsteroides([[N,M,A,P,L,VarSeed],Px,Py,Angulo,Velocidad,Rad,Seed],3,_,Resultado):-
	datos(amp15,Amp15),
	NA is A + 6,
	NewRadio is div(Rad,2),

	Newpx1 is Px,
	Newpx2 is Px + 2*NewRadio,
	Newpx3 is Px - 2*NewRadio,

	NewPx1 is integer(Newpx1),
	NewPx2 is integer(Newpx2),
	NewPx3 is integer(Newpx3),

	PxR1 is mod(NewPx1,M),
	PxR2 is mod(NewPx2,M),
	PxR3 is mod(NewPx3,M),

	Newpy1 is Py,
	Newpy2 is Py +  Amp15*NewRadio,
	Newpy3 is Py +  Amp15*NewRadio,

	NewPy1 is integer(Newpy1),
	NewPy2 is integer(Newpy2),
	NewPy3 is integer(Newpy3),
	
	PyR1 is mod(NewPy1,N),
	PyR2 is mod(NewPy2,N),
	PyR3 is mod(NewPy3,N),

	NewAngulo1 is Angulo,
	NewAngulo2 is Angulo + 45,
	NewAngulo3 is Angulo + 135,

	Resultado =	[	[[N,M,NA,P,L,VarSeed],PxR1,PyR1,NewAngulo1,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR2,PyR2,NewAngulo2,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR3,PyR3,NewAngulo3,Velocidad,NewRadio,Seed]
				].

fisicaDeAsteroides([[N,M,A,P,L,VarSeed],Px,Py,Angulo,Velocidad,Rad,Seed],4,_,Resultado):-
	datos(amp15,Amp15),

	NA is A + 6,
	NewRadio is div(Rad,2) ,

	Newpx1 is Px,
	Newpx2 is Px + 2*NewRadio,
	Newpx3 is Px - 2*NewRadio,
	Newpx4 is Px + 2*NewRadio,

	NewPx1 is integer(Newpx1),
	NewPx2 is integer(Newpx2),
	NewPx3 is integer(Newpx3),
	NewPx4 is integer(Newpx4),

	PxR1 is mod(NewPx1,M),
	PxR2 is mod(NewPx2,M),
	PxR3 is mod(NewPx3,M),
	PxR4 is mod(NewPx4,M),

	Newpy1 is Py,
	Newpy2 is Py +  Amp15*NewRadio,
	Newpy3 is Py +  Amp15*NewRadio,
	Newpy4 is Py -  Amp15*NewRadio,

	NewPy1 is integer(Newpy1),
	NewPy2 is integer(Newpy2),
	NewPy3 is integer(Newpy3),
	NewPy4 is integer(Newpy4),
	
	PyR1 is mod(NewPy1,N),
	PyR2 is mod(NewPy2,N),
	PyR3 is mod(NewPy3,N),
	PyR4 is mod(NewPy4,N),

	NewAngulo1 is Angulo,
	NewAngulo2 is Angulo + 45,
	NewAngulo3 is Angulo + 135,
	NewAngulo4 is Angulo + 315,

	Resultado =	[	[[N,M,NA,P,L,VarSeed],PxR1,PyR1,NewAngulo1,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR2,PyR2,NewAngulo2,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR3,PyR3,NewAngulo3,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR4,PyR4,NewAngulo4,Velocidad,NewRadio,Seed]
				].

fisicaDeAsteroides([[N,M,A,P,L,VarSeed],Px,Py,Angulo,Velocidad,Rad,Seed],5,_,Resultado):-
	datos(amp15,Amp15),

	NA is A + 6,
	NewRadio is div(Rad,2) ,

	Newpx1 is Px,
	Newpx2 is Px + 2*NewRadio,
	Newpx3 is Px - 2*NewRadio,
	Newpx4 is Px + 2*NewRadio,
	Newpx5 is Px - 2*NewRadio,

	NewPx1 is integer(Newpx1),
	NewPx2 is integer(Newpx2),
	NewPx3 is integer(Newpx3),
	NewPx4 is integer(Newpx4),
	NewPx5 is integer(Newpx5),

	PxR1 is mod(NewPx1,M),
	PxR2 is mod(NewPx2,M),
	PxR3 is mod(NewPx3,M),
	PxR4 is mod(NewPx4,M),
	PxR5 is mod(NewPx5,M),

	Newpy1 is Py,
	Newpy2 is Py +  Amp15*NewRadio,
	Newpy3 is Py +  Amp15*NewRadio,
	Newpy4 is Py -  Amp15*NewRadio,
	Newpy5 is Py -  Amp15*NewRadio,

	NewPy1 is integer(Newpy1),
	NewPy2 is integer(Newpy2),
	NewPy3 is integer(Newpy3),
	NewPy4 is integer(Newpy4),
	NewPy5 is integer(Newpy5),

	PyR1 is mod(NewPy1,N),
	PyR2 is mod(NewPy2,N),
	PyR3 is mod(NewPy3,N),
	PyR4 is mod(NewPy4,N),
	PyR5 is mod(NewPy5,N),

	NewAngulo1 is Angulo,
	NewAngulo2 is Angulo + 45,
	NewAngulo3 is Angulo + 135,
	NewAngulo4 is Angulo + 315,
	NewAngulo5 is Angulo + 225,

	Resultado =	[	[[N,M,NA,P,L,VarSeed],PxR1,PyR1,NewAngulo1,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR2,PyR2,NewAngulo2,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR3,PyR3,NewAngulo3,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR4,PyR4,NewAngulo4,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR5,PyR5,NewAngulo5,Velocidad,NewRadio,Seed]
				].

fisicaDeAsteroides([[N,M,A,P,L,VarSeed],Px,Py,Angulo,Velocidad,Rad,Seed],6,_,Resultado):-
	datos(amp15,Amp15),
	datos(amp25,Amp25),
	NA is A + 6,
	NewRadio is div(Rad,2) ,

	Newpx1 is Px,
	Newpx2 is Px + 2*NewRadio,
	Newpx3 is Px - 2*NewRadio,
	Newpx4 is Px + 2*NewRadio,
	Newpx5 is Px - 2*NewRadio,
	Newpx6 is Px,

	NewPx1 is integer(Newpx1),
	NewPx2 is integer(Newpx2),
	NewPx3 is integer(Newpx3),
	NewPx4 is integer(Newpx4),
	NewPx5 is integer(Newpx5),
	NewPx6 is integer(Newpx6),

	PxR1 is mod(NewPx1,M),
	PxR2 is mod(NewPx2,M),
	PxR3 is mod(NewPx3,M),
	PxR4 is mod(NewPx4,M),
	PxR5 is mod(NewPx5,M),
	PxR6 is mod(NewPx6,M),

	Newpy1 is Py,
	Newpy2 is Py +  Amp15*NewRadio,
	Newpy3 is Py +  Amp15*NewRadio,
	Newpy4 is Py -  Amp15*NewRadio,
	Newpy5 is Py -  Amp15*NewRadio,
	Newpy6 is Py +  Amp25*NewRadio,

	NewPy1 is integer(Newpy1),
	NewPy2 is integer(Newpy2),
	NewPy3 is integer(Newpy3),
	NewPy4 is integer(Newpy4),
	NewPy5 is integer(Newpy5),
	NewPy6 is integer(Newpy6),
	
	PyR1 is mod(NewPy1,N),
	PyR2 is mod(NewPy2,N),
	PyR3 is mod(NewPy3,N),
	PyR4 is mod(NewPy4,N),
	PyR5 is mod(NewPy5,N),
	PyR6 is mod(NewPy6,N),
	
	NewAngulo1 is Angulo,
	NewAngulo2 is Angulo + 45,
	NewAngulo3 is Angulo + 135,
	NewAngulo4 is Angulo + 315,
	NewAngulo5 is Angulo + 225,
	NewAngulo6 is Angulo + 90,
	
	Resultado =	[	[[N,M,NA,P,L,VarSeed],PxR1,PyR1,NewAngulo1,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR2,PyR2,NewAngulo2,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR3,PyR3,NewAngulo3,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR4,PyR4,NewAngulo4,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR5,PyR5,NewAngulo5,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR6,PyR6,NewAngulo6,Velocidad,NewRadio,Seed]
				].

fisicaDeAsteroides([[N,M,A,P,L,VarSeed],Px,Py,Angulo,Velocidad,Rad,Seed],7,_,Resultado):-
	datos(amp15,Amp15),
	datos(amp25,Amp25),
	NA is A + 6,
	NewRadio is div(Rad,2) ,

	Newpx1 is Px,
	Newpx2 is Px + 2*NewRadio,
	Newpx3 is Px - 2*NewRadio,
	Newpx4 is Px + 2*NewRadio,
	Newpx5 is Px - 2*NewRadio,
	Newpx6 is Px,
	Newpx7 is Px,

	NewPx1 is integer(Newpx1),
	NewPx2 is integer(Newpx2),
	NewPx3 is integer(Newpx3),
	NewPx4 is integer(Newpx4),
	NewPx5 is integer(Newpx5),
	NewPx6 is integer(Newpx6),
	NewPx7 is integer(Newpx7),

	PxR1 is mod(NewPx1,M),
	PxR2 is mod(NewPx2,M),
	PxR3 is mod(NewPx3,M),
	PxR4 is mod(NewPx4,M),
	PxR5 is mod(NewPx5,M),
	PxR6 is mod(NewPx6,M),
	PxR7 is mod(NewPx7,M),

	Newpy1 is Py,
	Newpy2 is Py +  Amp15*NewRadio,
	Newpy3 is Py +  Amp15*NewRadio,
	Newpy4 is Py -  Amp15*NewRadio,
	Newpy5 is Py -  Amp15*NewRadio,
	Newpy6 is Py +  Amp25*NewRadio,
	Newpy7 is Py -  Amp25*NewRadio,

	NewPy1 is integer(Newpy1),
	NewPy2 is integer(Newpy2),
	NewPy3 is integer(Newpy3),
	NewPy4 is integer(Newpy4),
	NewPy5 is integer(Newpy5),
	NewPy6 is integer(Newpy6),
	NewPy7 is integer(Newpy7),
	
	PyR1 is mod(NewPy1,N),
	PyR2 is mod(NewPy2,N),
	PyR3 is mod(NewPy3,N),
	PyR4 is mod(NewPy4,N),
	PyR5 is mod(NewPy5,N),
	PyR6 is mod(NewPy6,N),
	PyR7 is mod(NewPy7,N),

	NewAngulo1 is Angulo,
	NewAngulo2 is Angulo + 45,
	NewAngulo3 is Angulo + 135,
	NewAngulo4 is Angulo + 315,
	NewAngulo5 is Angulo + 225,
	NewAngulo6 is Angulo + 90,
	NewAngulo7 is Angulo + 270,

	Resultado =	[	[[N,M,NA,P,L,VarSeed],PxR1,PyR1,NewAngulo1,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR2,PyR2,NewAngulo2,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR3,PyR3,NewAngulo3,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR4,PyR4,NewAngulo4,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR5,PyR5,NewAngulo5,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR6,PyR6,NewAngulo6,Velocidad,NewRadio,Seed],
					[[N,M,NA,P,L,VarSeed],PxR7,PyR7,NewAngulo7,Velocidad,NewRadio,Seed]
				].


%		   __^__                                      __^__
%         ( ___ )------------------------------------( ___ )
%          | / |                                      | \ |
%          | / |          Ejemplo De Uso RFO          | \ |
%          |___|                                      |___|
%         (_____)------------------------------------(_____) 

%a)	createSpace:
%-	createSpace(5,10,4,3,20,4,Space).
%-	createSpace(10,12,4,4,10,4,Space).
%-	createSpace(20,20,8,5,10,3,Space).

%b)	isSpace:
%- isSpace( [[20, 20, 8, 3, 4, 5], [[20, 20, 8, 3, 4, 5], 10, 10, 1, 4, 1, 0], [[[20, 20, 8, 3, 4, 5], 17, 16, 270, 1, 2, 5], [[20, 20, 8, 3, 4, 5], 13, 13, 225, 1, 2, 5], [[20, 20, 8, 3, 4, 5], 5, 11, 45, 1, 2, 5], [[20, 20, 8, 3, 4, 5], 3, 3, 25, 1, 2, 5], [[20, 20, 8, 3, 4, 5], 9, 6, 135, 1, 2, 5], [[20, 20, 8, 3, 4, 5], 16, 7, 190, 1, 2, 5], [[20, 20, 8, 3, 4, 5], 9, 17, 320, 1, 2, 5], [[20, 20, 8, 3, 4, 5], 4, 17, 0, 1, 2, 5]], []]).
%- isSpace([1,22,3,[55]]).
%- isSpace( [[5, 10, 2, 3, 4, 5], [[5, 10, 2, 3, 4, 5], 5, 2, 1, 4, 1, 0], [[[5, 10, 2, 3, 4, 5], 1, 3, 90, 1, 2, 5], [[5, 10, 2, 3, 4, 5], 8, 4, 270, 1, 2, 5]], []]).

%c)	moveShip:
%- createSpace(5,10,4,3,20,4,Space),moveShip(Space,90,1,4,NuevoSpace).
%- createSpace(10,12,4,4,10,4,Space),moveShip(Space,180,2,4,NuevoSpace).
%- createSpace(20,20,8,5,10,3,Space),moveShip(Space,45,4,2,NuevoSpace).

%d)	shoot:
%- createSpace(5,10,4,3,20,4,Space),shoot(Space,2,4,NuevoSpace).
%- createSpace(10,12,4,3,4,5,Space),shoot(Space,3,2,NuevoSpace).
%- createSpace(20,20,8,3,4,5,Space),shoot(Space,3,2,NuevoSpace).

%e)	updateSpace:
%- createSpace(5,10,4,3,20,4,Space),updateSpace(Space,NuevoSpace).
%- createSpace(10,12,4,4,10,4,Space),updateSpace(Space,NuevoSpace).
%- createSpace(20,20,8,5,10,3,Space),updateSpace(Space,NuevoSpace).

%f)	Space2String:
%- createSpace(10,12,4,4,10,4,Space),space2String(Space,String).
%- createSpace(20,20,8,5,10,3,Space),space2String(Space,String).
%- createSpace(20,20,8,3,4,5,Space),shoot(Space,3,2,NuevoSpace),space2String(NuevoSpace,String).
