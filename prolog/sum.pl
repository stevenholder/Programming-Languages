count(0, []).
count(Count, [Head|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

sum(0, []).
sum(TotalSum, [Head|Tail]) :- sum(Sum1, Tail), TotalSum is Head + Sum1.
