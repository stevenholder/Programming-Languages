HotDog := Object clone do (
  init := method(
    self name := "HotDog"
    self cost := 0
  )
)
HotDog println

RegularDog := HotDog clone do (
  init := method(
    self name := "Regular hotdog"
    self cost := 1.50
  )
)
RegularDog name = "Regular hotdog"
RegularDog cost = 1.50

"RegularDog" println
RegularDog println

FootlongDog := HotDog clone do (
  init := method(
    self name := "Footlong hotdog"
    self cost := 2.00
  )
)
FootlongDog name = "Footlong hotdog"
FootlongDog cost = 2.00

Slaw := RegularDog clone 
Slaw name = Slaw name .. ", with slaw"
Slaw cost = Slaw cost + 1.00

Chili := RegularDog clone
Chili name = Chili name .. ", with chili"
Chili cost = Chili cost + 1.00

Slaw println
Chili println