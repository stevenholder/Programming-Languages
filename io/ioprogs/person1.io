Person1 := Object clone
Person1 name := "Bob"
Person1 age := 50
Person1 speak := method("Hello!" println)
"Person1 attributes: " println
Person1 println

person2 := Person1 clone
"person2 attributes just after cloning Person1: " println
person2 println

person2 name := "Joan"
person2 age := 30

"person2 after adding attributes: " println
person2 println

"Retrieving name and age from person2: " println
person2 name println
person2 age  println

"Changing age of person2: " println
person2 age= person2 age + 1
person2 println



