prepend(I, L, [I|L]).

addElement(I, [], [I]).
addElement(I, [H|T], [H|ExtendTail]) :- addElement(I, T, ExtendTail).

hasLength([], 0).
hasLength([H|T], L) :- hasLength(T,L2), L is L2+1.

remove(X, [X|T], T).
remove(X, [H|T], [H|ReducedTail]) :- remove(H, T, ReducedTail).