Closet := Object clone do (
                             closet := list()
							 stash := method(item, self closet append(item)) 
							 peek := method(self closet foreach(item, item println))
						  )
myCloset := Closet clone
yourCloset := Closet clone
yourCloset stash("tv")
yourCloset stash("golf clubs")
yourCloset peek

myCloset stash("rollerskates")
myCloset stash("bowling ball")
"my closet:  " println
myCloset peek

