Person1 := Object clone do(
	init := method(
  self name := ""
	self age  := 0
))

"Person1 after cloning with init: " println
Person1 println

person2 := Person1 clone

"person2 after cloning Person1: " println
person2 println

"Setting attributes in person2: " println
person2 name= "Sam"
person2 age = 30

"Retrieving and printing information in person2: " println
"Name of person2 " print
person2 name println
"Age of person2 " print
person2 age println

"Changing the age of person2: " println
person2 age= person2 age + 1

person2 println
