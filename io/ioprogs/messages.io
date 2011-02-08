sam := Object clone
sam a := 5
sam add := method(p,q, p + q + a)

dave := Object clone
dave x := 3
dave y := 4
dave sendToPerson := method(obj, obj add(x,y))

dave sendToPerson(sam) println
