maison(_,_,_,_,_).
%Couleur %Nationalite %Boisson %Cigare %Animal

neighbourleft(X, Y, Z) :- append(_, [Y,Z|_], X).
neighbourright(X, Y, Z) :- append(_, [Z,Y|_], X).
neighbour(X, Y, Z) :- neighbourleft(X, Y, Z);
	neighbourright(X, Y, Z).

finishfish(X) :- length(X, 5),
		X = [maison(_,"Norvegien",_,_,_),maison("Bleu",_,_,_,_),maison(_,_,"Lait",_,_),_,_],
		member(maison("Rouge","Anglais",_,_,_),X),
		member(maison(_,"Suedois",_,_,"Chien"),X),
		member(maison(_,"Danois","The",_,_),X),
		member(maison("Vert",_,"Cafe",_,_),X),
		member(maison(_,_,_,"Pall Mall","Oiseau"),X),
		member(maison("Jaune",_,_,"Dunhill",_),X),
		member(maison(_,_,"Biere","Blue Master",_),X),
		member(maison(_,"Allemand",_,"Prince",_),X),
		neighbourleft(X, maison("Vert",_,_,_,_), maison("Blanche",_,_,_,_)),
		neighbour(X, maison(_,_,_,"Blend",_), maison(_,_,_,_,"Chat")),
		neighbour(X, maison(_,_,_,"Dunhill",_), maison(_,_,_,_,"Cheval")),
		neighbour(X, maison(_,_,_,"Blend",_), maison(_,_,"Eau",_,_)),
		member(maison(_,_,_,_,"Poisson"),X).
