reverse([], []).

reverse([H|T], R) :-
    reverse(T, R1),
    conc(R1, [H], R).

% Concatenate two lists
conc([], L, L).

conc([H|T], L, [H|R]) :-
    conc(T, L, R).
