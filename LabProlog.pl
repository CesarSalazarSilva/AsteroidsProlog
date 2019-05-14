%TDA Space
%Space = [Variables,nave,asteroides,disparos]
%createSpace(N,M,A,P,L,Seed,Space)


%Space 5x10 (2, 4 y 5 asteroides)
% 2 Asteroides
createSpace(5,10,2,P,L,Seed,Space):-
	Space = [[5,10,2,P,L,Seed],[[5,10,2,P,L,Seed],5,2,1,4,1,0],
								[[[5,10,2,P,L,Seed],1,3,90,1,2,4],
								 [[5,10,2,P,L,Seed],8,4,270,1,2,4]],
								[ ]].
% 4 Asteroides
createSpace(5,10,4,P,L,Seed,Space):-
	Space = [[5,10,4,P,L,Seed],[[5,10,4,P,L,Seed],5,3,1,4,1,0],
								[[[5,10,4,P,L,Seed],9,4,90,1,2,4],
								 [[5,10,4,P,L,Seed],7,0,270,1,2,4],
								 [[5,10,4,P,L,Seed],2,0,180,1,2,4],
								 [[5,10,4,P,L,Seed],1,4,90,1,2,4]],
								[ ]].
% 5 Asteroides
createSpace(5,10,5,P,L,Seed,Space):-
	Space = [[5,10,5,P,L,Seed],[[5,10,5,P,L,Seed],5,3,1,4,1,0],
								[[[5,10,5,P,L,Seed],8,4,225,1,1,4],
								 [[5,10,5,P,L,Seed],6,1,180,1,1,4],
								 [[5,10,5,P,L,Seed],2,1,42,1,1,4],
								 [[5,10,5,P,L,Seed],9,1,95,1,1,4],
								 [[5,10,5,P,L,Seed],1,4,340,1,1,4]],
								[ ]].

%Space 10x12 (4 y 6 asteroides)
% 4 Asteroides
createSpace(10,12,4,P,L,Seed,Space):-
	Space = [[10,12,4,P,L,Seed],[[10,12,4,P,L,Seed],6,5,1,4,1,0],
								[[[10,12,4,P,L,Seed],9,8,245,1,2,4],
								 [[10,12,4,P,L,Seed],10,2,170,1,2,4],
								 [[10,12,4,P,L,Seed],3,8,330,1,2,4],
								 [[10,12,4,P,L,Seed],3,2,80,1,2,4]],
								[ ]].
% 6 Asteroides
createSpace(10,12,6,P,L,Seed,Space):-
	Space = [[10,12,6,P,L,Seed],[[10,12,6,P,L,Seed],6,5,1,4,1,0],
								[[[10,12,6,P,L,Seed],1,3,90,1,2,4],
								 [[10,12,6,P,L,Seed],1,9,180,1,2,4],
								 [[10,12,6,P,L,Seed],6,9,270,1,2,4],
								 [[10,12,6,P,L,Seed],11,9,360,1,2,4],
								 [[10,12,6,P,L,Seed],11,3,45,1,2,4],
								 [[10,12,6,P,L,Seed],6,1,225,1,2,4]],
								[ ]].
%Space 20x20 (8 asteroides)
createSpace(20,20,8,P,L,Seed,Space):-
	Space = [[20,20,8,P,L,Seed],[[20,20,8,P,L,Seed],10,10,1,4,1,0],
								[[[20,20,8,P,L,Seed],17,16,270,1,2,4],
								 [[20,20,8,P,L,Seed],13,13,225,1,2,4],
								 [[20,20,8,P,L,Seed],5,11,45,1,2,4],
								 [[20,20,8,P,L,Seed],3,3,25,1,2,4],
								 [[20,20,8,P,L,Seed],9,6,135,1,2,4],
								 [[20,20,8,P,L,Seed],16,7,190,1,2,4],
								 [[20,20,8,P,L,Seed],9,17,320,1,2,4],
								 [[20,20,8,P,L,Seed],4,17,0,1,2,4]],
								[ ]].

%Funcion de Pertenencia Space.
isSpace([[N,M,A,P,L,Seed],[[B,C,D,E,F,G],X,Y,_,_,_,_],Asteroides,_]):- 
	number(N),number(M),number(A),number(L),integer(P),integer(Seed),
	N == B, M== C, A == D, P == E, L == F, Seed == G,
	Y<N,X<M,length(Asteroides,A).

%SELECTORES SPACE.

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

%MODIFICADORES SPACE
%Modificar VariableA-Space
mVarASpa([[N,M,_,P,L,Seed],Nave,Asteroides,Disparos] ,NewA ,[[N,M,NewA,P,L,Seed],Nave,Asteroides,Disparos]).
%Modificar Nave-Space
mNavSpa([[N,M,A,P,L,Seed],_,Asteroides,Disparos] ,NewNav ,[[N,M,A,P,L,Seed],NewNav,Asteroides,Disparos]).
%Modificar Asteroides-Space
mAstSpa([[N,M,A,P,L,Seed],Nave,_,Disparos] ,NewAst ,[[N,M,A,P,L,Seed],Nave,NewAst,Disparos]).
%Modificar Disparos-Space
mDisSpa([[N,M,A,P,L,Seed],Nave,Asteroides,_] ,NewDisp ,[[N,M,A,P,L,Seed],Nave,Asteroides,NewDisp]).



%TDA NAVE

%Representacion Nave.
% [[Variables], px, py , velocidad, seed, EstadodeJuego, angulo]
% [[5,10,4,P,L,Seed],5,3,1,4,1,0],

%Funcion de Pertenencia.
isNave([[N,M,A,P,L,Seed], Px, Py , Velocidad, SeedN, EstadodeJuego, Angulo]):-
	number(N),number(M),number(A),number(L),integer(P),integer(Seed),number(Px),
	number(Py),number(Velocidad),integer(SeedN),number(EstadodeJuego),number(Angulo),
	Px<M,Py<N.

%SELECTORES NAVE.

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


%TDA ASTEROIDE

%Representacion Asteroide.
%[Variables,Px,Py,Angulo,Velocidad,Radio,Seed],
%[[20,20,8,P,L,Seed],17,16,270,1,2,4]

%Funcion de Pertenencia
isAsteroide([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,Radio,SeedA]):-
	number(N),number(M),number(A),number(L),integer(P),integer(Seed),number(Px),integer(Radio),
	number(Py),number(Velocidad),integer(SeedA),number(Angulo),
	Px<M,Py<N.


%SELECTORES ASTEROIDE
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
sRad([_,_,_,_,_,Radio,_],Radio).
%Selector Seed Asteroide
sSeedAst([_,_,_,_,_,_,Seed],Seed).

%MODIFICADORES ASTEROIDE
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


%TDA DISPARO

%Representacion Disparo.
%[Variables,Px,Py,Angulo,Velocidad,PxF,PyF,Largo,Seed],
%[[20,20,8,P,L,Seed],17,17,45,1,18,18,2,4]

%SELECTOR DISPARO

%Selector Variables
sVarDis([Variables,_,_,_,_,_,_,_,_],Variables).
%Selector Variable N Disparo
sVarNDis([[N,_,_,_,_,_],_,_,_,_,_,_,_,_],N).
%Selector Variables M Disparo
sVarMDis([[_,M,_,_,_,_],_,_,_,_,_,_,_,_],M).
%Selector Variables A Disparo
sVarADis([[_,_,A,_,_,_],_,_,_,_,_,_,_,_],A).
%Selector Variables P Disparo
sVarPDis([[_,_,_,P,_,_],_,_,_,_,_,_,_,_],P).
%Selector Variables L Disparo
sVarLDis([[_,_,_,_,L,_],_,_,_,_,_,_,_,_],L).
%Selector Variables Seed Disparo
sVarSeedDis([[_,_,_,_,_,Seed],_,_,_,_,_,_,_,_],Seed).

%Selector Px Disparo
sPxDis([_,Px,_,_,_,_,_,_,_],Px).
%Selector Py Disparo
sPyDis([_,_,Py,_,_,_,_,_,_],Py).
%Selector Angulo Disparo
sAngDis([_,_,_,Angulo,_,_,_,_,_],Angulo).
%Selector Velocidad Disparo
sVelDis([_,_,_,_,Velocidad,_,_,_,_],Velocidad).
%Selector Pxf Disparo
sPxfDis([_,_,_,_,_,PxF,_,_,_],PxF).
%Selector Pyf Disparo
sPyfDis([_,_,_,_,_,_,PyF,_,_],PyF).
%Selector Largo Disparo
sLarDis([_,_,_,_,_,_,_,Largo,_],Largo).
%Selector Seed Disparo
sSeedDis([_,_,_,_,_,_,_,_,Seed],Seed).

%MODIFICADORES DISPARO
%Modifica A Disparo
mADis([[N,M,_,P,L,Seed],Px,Py,Angulo,Velocidad,PxF,PyF,Largo,Seed],NewA,[[N,M,NewA,P,L,Seed],Px,Py,Angulo,Velocidad,PxF,PyF,Largo,Seed]).
%Modifica Px Disparo
mPxDis([[N,M,A,P,L,Seed],_,Py,Angulo,Velocidad,PxF,PyF,Largo,Seed],NewPx,[[N,M,A,P,L,Seed],NewPx,Py,Angulo,Velocidad,PxF,PyF,Largo,Seed]).
%Modifica Py Disparo
mPyDis([[N,M,A,P,L,Seed],Px,_,Angulo,Velocidad,PxF,PyF,Largo,Seed],NewPy,[[N,M,A,P,L,Seed],Px,NewPy,Angulo,Velocidad,PxF,PyF,Largo,Seed]).
%Modifica Ang Disparo
mAngDis([[N,M,A,P,L,Seed],Px,Py,_,Velocidad,PxF,PyF,Largo,Seed],NewAng,[[N,M,A,P,L,Seed],Px,Py,NewAng,Velocidad,PxF,PyF,Largo,Seed]).
%Modifica Vel Disparo
mVelDis([[N,M,A,P,L,Seed],Px,Py,Angulo,_,PxF,PyF,Largo,Seed],NewVel,[[N,M,A,P,L,Seed],Px,Py,Angulo,NewVel,PxF,PyF,Largo,Seed]).
%Modifica PxF Disparo
mPxFDis([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,_,PyF,Largo,Seed],NewPxF,[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,NewPxF,PyF,Largo,Seed]).
%Modifica PyF Disparo
mPyFDis([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,PxF,_,Largo,Seed],NewPyF,[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,PxF,NewPyF,Largo,Seed]).
%Modifica Largo Disparo
mLarDis([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,PxF,PyF,_,Seed],NewLar,[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,PxF,PyF,NewLar,Seed]).
%Modifica Seed Disparo
mSeedDis([[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,PxF,PyF,Largo,_],NewSeed,[[N,M,A,P,L,Seed],Px,Py,Angulo,Velocidad,PxF,PyF,Largo,NewSeed]).





%Fin TDAs


%Relaciones Varias.
