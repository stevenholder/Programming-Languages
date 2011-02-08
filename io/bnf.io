name := people map(person, person name)

setSlot(names, people map(person, person name))

exp				::= { message }
message 	::= symbol [arguments]
arguments ::= "(" [exp [ { "," exp } ]] ")"
symbol 		::= identifier | number | string

exp ::= message
		::= symbol arguments
		::= identifier arguments
		::= setSlot arguments
		::= setSlot(exp, exp)
		::= setSlot(message, message)
		::= setSlot(symbol, arguments)
		::= setSlot(identifier, exp)
		::= setSlot(names, message)
		::= setSlot(names, symbol arguments)
		::= setSlot(names, identifier exp)
		::= setSlot(names, people message)
		::= setSlot(names, people symbol arguments)
		::= setSlot(names, people identifier arguments)
		::= setSlot(names, people map(exp, exp))
		::= setSlot(names, people map(message, message))
		::= setSlot(names, people map(symbol, symbol arguments))
		::= setSlot(names, people map(identifier, identifier arguments))
		::= setSlot(names, people map(person, person exp))
		::= setSlot(names, people map(person, person message))
		::= setSlot(names, people map(person, person symbol))
		::= setSlot(names, people map(person, person identifier))
		::= setSlot(names, people map(person, person name))

