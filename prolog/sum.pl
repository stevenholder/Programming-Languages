sum(0, []).
sum(TotalSum, [Head|Tail]) :- sum(Sum1, Tail), TotalSum is Head + Sum1.
