% Parent relationships
parent(rajesh, rohit).
parent(rajesh, neha).
parent(sunita, rohit).
parent(sunita, neha).

parent(rohit, arjun).
parent(rohit, priya).
parent(anjali, arjun).
parent(anjali, priya).

% Gender
male(rajesh).
male(rohit).
male(arjun).

female(sunita).
female(neha).
female(anjali).
female(priya).

% Father
father(X, Y) :-
    parent(X, Y),
    male(X).

% Mother
mother(X, Y) :-
    parent(X, Y),
    female(X).

% Sibling
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Brother
brother(X, Y) :-
    sibling(X, Y),
    male(X).

% Sister
sister(X, Y) :-
    sibling(X, Y),
    female(X).

% Grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Grandfather
grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

% Grandmother
grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).

% Uncle
uncle(X, Y) :-
    sibling(X, Z),
    male(X),
    parent(Z, Y).

% Aunt
aunt(X, Y) :-
    sibling(X, Z),
    female(X),
    parent(Z, Y).