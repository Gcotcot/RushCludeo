%base de connaissance
homme(jean).
homme(jacques).
homme(marc).
homme(luc).
homme(leon).
homme(loic).
homme(gerard).
homme(herve).
homme(paul).

femme(anne).
femme(betty).
femme(lisa).
femme(sylvie).
femme(eve).
femme(valerie).
femme(julie).

union_a(marc, anne).
union_a(luc, betty).
union_a(leon, sylvie).
union_a(loic, eve).
union_a(paul, julie).
union_a(jules, lisa).

parent_a(marc, jean).
parent_a(marc, jules).
parent_a(marc, leon).
parent_a(luc, lisa).
parent_a(luc, loic).
parent_a(luc, gerard).
parent_a(jules, jacques).
parent_a(leon, herve).
parent_a(leon, julie).
parent_a(loic, paul).
parent_a(loic, valerie).

%regles
union(X, Y) :- (union_a(X, Y) ; union_a(Y, X)) , X \= Y.
mari_de(X, Y) :- homme(X) , union(X, Y).
femme_de(X, Y) :- femme(X) , union(X, Y).
parent(X, Y) :- parent_a(X, Y) ; (parent_a(Z, Y) , union(Z, X)).
beaupere_de(X, Y) :- homme(X) , union(Z, Y) , parent(X, Z).
bellemere_de(X, Y) :- femme(X) , union(Z, Y) , parent(X, Z).
enfant_de(X, Y) :- parent(Y, X).
ancetre_de(X, Y) :- parent(X, Y) ; parent(Z, Y), ancetre_de(X, Z).