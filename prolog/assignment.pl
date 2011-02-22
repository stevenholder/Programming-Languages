

abs(X,Y) :- (X >= 0 -> Y is X; Y is -X).

seq(First, Last, N) :- Last < First, write('No').
seq(First, Last, N) :- N is First; First < Last, seq(First+1, Last, N).

has(bicycle,wheel,2).
has(bicycle,handlebar,1).
has(bicycle,break,2).
has(wheel,hub,1).
has(wheel,spoke,32).
has(bicycle,frame,1).
has(car,steering_wheel,1).
has(car,stereo,1).
has(car,tires,4).

partof(X,Y) :- has(X,Y,_).
partof(X,Y) :- has(Z,Y,_), partof(X,Z).

append([X|Y],Z,[X|W]) :- append(Y,Z,W).
append([],X,X).

evenPositions([],[]).
evenPositions([A],[]).
evenPositions([A, B | R], [A | Rb]) :- evenPositions(R, Rb).