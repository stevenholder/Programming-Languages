<program> ::= <clause list> <query> | <query>
<clause list> ::= <clause> | <clause list> <clause>
<clause> ::= <predicate> . | <predicate> :- <predicate list> .
<predicate list> ::= <predicate> | <predicate list> , <predicate>
<predicate> ::= <atom> | <atom> ( <term list> )
<term list> ::= <term> | <term list> , <term>
<term> ::= <numeral> | <atom> | <variable> | <structure>
<structure> ::= <atom> ( <term list> )
<query> ::= ?- <predicate list> .
<atom> ::= <small atom> | ' <string> '
<small atom> ::= <lowercase letter> | <small atom> <character>
<variable> ::= <uppercase letter> | <variable> <character>
<lowercase letter> ::= a | b | c | d | … | x | y | z
<uppercase letter> ::= A | B | C | D | … | X | Y | Z | _
<numeral> ::= <digit> | <numeral> <digit>
<digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
<character> ::= <lowercase letter> | <uppercase letter>
| <digit> | <special>
<special> ::= + | - | * | / | \ | ^ | ~ | : | . | ? | @ | # | $ | &
<string> ::= <character> | <string> <character>

color(R1,R2) :- diff(R1,R2).

<clause list>
<clause>
<predicate> :- <predicate list> .
<atom>(<term list>) :- <predicate> .
color(<term>, <term list>)	:- <atom>(<term list>) .
color(<variable>, <term>)	:- diff(<term>, <term list>) .
color(R1, <variable>)	:- diff(<variable>, <term>) .
color(R1, R2)	:- diff(R1, <variable>) .
color(R1, R2) :- diff(R1, R2).