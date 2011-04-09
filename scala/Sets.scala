type Set = Int => Boolean

def set(i: Int):Set = {
	return (x: Int) => x == i
}

def contains(f: Set, i: Int) : Boolean = { f(i) }

val x = set(3)
//println(x(4))
//println(x(3))

def union(a: Set, b: Set):Set = {
	return (x: Int) => a(x) || b(x)
}

def intersect(a: Set, b: Set):Set = {
	return (x: Int) => a(x) && b(x)
}

def difference(a: Set, b: Set):Set = {
	return (x: Int) => !(a(x) && b(x))
}


//println(contains(x,2))
//println(contains(x,3))
val one = set(1)
val two = set(2)
val three = set(3)
val four = set(4)
val five = set(5)
val six = set(6)

/*
val onetwo = union(one,two)
val onetwothreefour = union(union(onetwo,three),four)
println(contains(onetwo,1))
println(contains(onetwo,2))
println(contains(onetwo,3))
println(contains(onetwothreefour,3))
*/

/*
val onetwo = union(one,two)
val onetwothree = union(onetwo,three)
val twothree = union(two,three)
val twothreefour = union(twothree,four)
val setint = intersect(onetwothree,twothreefour)
println(contains(setint,2))
println(contains(setint,3))
println(contains(setint,4))
*/


val onetwo = union(one,two)
val onetwothree = union(onetwo,three)
val threefour = union(three,four)
val threefourfive = union(threefour,five)
val setint = difference(onetwothree,threefourfive)
println(contains(setint,2))
println(contains(setint,3))
println(contains(setint,4))
